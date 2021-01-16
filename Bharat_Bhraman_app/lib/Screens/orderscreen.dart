import 'package:bharat_bhraman_app/models/order.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderScreen extends StatefulWidget {
  final String uid;
  OrderScreen({Key key, this.uid}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  FirebaseFirestore _db = FirebaseFirestore.instance;
  Stream<List<Order>> readEntries() {
    return _db
        .collection('users')
        .doc(widget.uid)
        .collection('handicraftorders')
        .orderBy('date', descending: true)
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => Order.fromJson(doc.data())).toList());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Order"),
      ),
      body: StreamBuilder<List<Order>>(
        stream: readEntries(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, i) {
              return snapshot.data.length != 0
                  ? Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 4,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            snapshot.data[i].imageurl,
                            height: 250,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 10,
                          child: Container(
                            width: 300,
                            color: Colors.black54,
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 20,
                            ),
                            child: Text(
                              snapshot.data[i].name,
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                              ),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        )
                      ],
                    ),
                  Column(
                    children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text('Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         Text(snapshot.data[i].cname),
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text('Address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         Text(snapshot.data[i].address),
                       ],
                     ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('City',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text(snapshot.data[i].city),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Phone No.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text(snapshot.data[i].phoneno),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Pincode',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text(snapshot.data[i].pincode),
                        ],
                      ),
                    ],
                  ),
                  ],
                ),
              )
                  : Container(
                      height: size.height,
                      width: size.width,
                      color: Colors.white,
                      child: Center(child: Text("There are no orders")));
            },
          );
        },
      ),
    );
  }
}
