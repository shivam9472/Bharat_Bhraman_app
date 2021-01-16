import 'package:bharat_bhraman_app/Screens/home_screen.dart';
import 'package:bharat_bhraman_app/Screens/login_screen.dart';
import 'package:bharat_bhraman_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context);
    return StreamBuilder<UsersUid>(
        stream: auth.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            UsersUid user = snapshot.data;
            if (user == null) {
              return LoginScreen();
            }
            return HomeScreen(
              uid: user.uid,
            );
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
