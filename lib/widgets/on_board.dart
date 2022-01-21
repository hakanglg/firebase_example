import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_example/features/home_view.dart';
import 'package:firebase_example/features/sign_in_view.dart';
import 'package:flutter/material.dart';

class OnBoardWidget extends StatefulWidget {
  OnBoardWidget({Key? key}) : super(key: key);

  @override
  _OnBoardWidgetState createState() => _OnBoardWidgetState();
}

class _OnBoardWidgetState extends State<OnBoardWidget> {
  late bool _isLogged;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        _isLogged = false;
        print('User is currently signed out!');
      } else {
        _isLogged = true;
        print('User is signed in!');
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLogged == null
        ? Center(child: CircularProgressIndicator())
        : _isLogged
            ? HomeView()
            : SignInView();
  }
}
