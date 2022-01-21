import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_example/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';

class SignInView extends StatefulWidget {
  SignInView({Key? key}) : super(key: key);

  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () async {
                  Provider.of<Auth>(context, listen: false).signOut();
                  print("Logout Tıklandı");
                },
                icon: Icon(Icons.logout))
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButtonBuilder(
              text: 'Sign in with Anonymously',
              icon: Icons.person,
              onPressed: () async {
                final user = await Provider.of<Auth>(context, listen: false)
                    .signInAnon();
                print(user?.uid);
              },
              backgroundColor: Colors.white30,
            ),
            SignInButtonBuilder(
              text: 'Sign in with Email',
              icon: Icons.email,
              onPressed: () {},
              backgroundColor: Colors.blueGrey[700]!,
            ),
            SignInButton(
              Buttons.GoogleDark,
              onPressed: () {},
            ),
          ],
        )),
      ),
    );
  }
}
