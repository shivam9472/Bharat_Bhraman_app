import 'package:bharat_bhraman_app/Screens/destinationorderdetailsscreen.dart';
import 'package:bharat_bhraman_app/Screens/home_screen.dart';
import 'package:bharat_bhraman_app/models/Destinationorder.dart';
import 'package:bharat_bhraman_app/models/destination_model.dart';
import 'package:bharat_bhraman_app/models/handicraft_model.dart';
import 'package:bharat_bhraman_app/services/orderfirebase.dart';
import 'package:bharat_bhraman_app/utilities/constants.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Orderconfirmationscreen extends StatefulWidget {
  final Destination destination;
  final String uid;
  Orderconfirmationscreen({Key key, this.destination, this.uid})
      : super(key: key);

  @override
  _OrderconfirmationscreenState createState() =>
      _OrderconfirmationscreenState();
}

class _OrderconfirmationscreenState extends State<Orderconfirmationscreen> {
  final _formKey = GlobalKey<FormState>();
  String name;
  String phoneno;
  Razorpay _razorpay;

  DateTime dateTime;
  void _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2050));
    if (picked != null)
      setState(() {
        dateTime = picked;
      });
  }

  int noofperson;
  List<int> _locations = [1, 2, 3, 4, 5, 6];
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout(
      int amount, String imageurl, String city, int noofperson) async {
    var options = {
      'key': 'rzp_test_XEbBJxAGMnU2k6',
      'amount': amount * 100 * noofperson,
      'name': city,
      'description': city,
      'image': imageurl,
      'prefill': {'contact': '7909050933', 'email': 'shivam9472@gmail.om'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

  final firestoreService = OrederFirebase();
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // final qrimage = QrImage(
    //     data:
    //         'amuont:${widget.destination.amount}\nplace:${widget.destination.city}\ntransactionid:${response.paymentId}');
    // File _image = qrimage as File;
    // await firebase_storage.FirebaseStorage.instance
    //     .ref('qrcode/${widget.uid}')
    //     .putFile(_image);

    // imageurl = await firebase_storage.FirebaseStorage.instance
    //     .ref('qrcode/${widget.uid}')
    //     .getDownloadURL();

    var newbarcode = Destinationorder(
        name: name,
        date: DateTime.now().toString(),
        phoneno: phoneno,
        pickeddate: dateTime.toString(),
        imageurl: widget.destination.imageUrl,
        amount: (widget.destination.amount * noofperson).toString(),
        noofperson: noofperson.toString(),
        paymentid: response.paymentId,
        city: widget.destination.city);
    firestoreService.setbarcode(newbarcode, widget.uid, response.paymentId);
    firestoreService.adminbarcode(newbarcode, response.paymentId);

    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId, timeInSecForIosWeb: 4);
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (ctx) => Destinationorderdetailsscreen(
        destination: widget.destination,
        paymentid: response.paymentId,
        amount: (widget.destination.amount * noofperson).toString(),
        noofperson: noofperson,
        name: name,
        pickeddate: dateTime.toString(),
      ),
    ));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message,
        timeInSecForIosWeb: 4);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName, timeInSecForIosWeb: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                decoration: kBoxDecorationStyle,
                height: 60.0,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    hintText: 'Your Name',
                    hintStyle: kHintTextStyle,
                  ),
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    name = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: kBoxDecorationStyle,
                height: 60.0,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    hintText: 'Mobile no.',
                    hintStyle: kHintTextStyle,
                  ),
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    phoneno = value;
                  },
                  maxLength: 10,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(dateTime == null
                ? "No date Choosen"
                : formatDate(dateTime, [MM, ' ', d, ', ', yyyy])),
            IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: () => _selectDate(context)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        DropdownButton(
          hint: Text('Number Of Person'), // Not necessary for Option 1
          value: noofperson,
          onChanged: (newValue) {
            setState(() {
              noofperson = newValue;
            });
          },
          items: _locations.map((location) {
            return DropdownMenuItem(
              child: new Text(location.toString()),
              value: location,
            );
          }).toList(),
        ),
        RaisedButton(
          color: Colors.amber,
          child: Text(
            "Confirm",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          onPressed: () => openCheckout(widget.destination.amount,
              widget.destination.imageUrl, widget.destination.city, noofperson),
        )
      ],
    ));
  }
}
