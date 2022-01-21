import 'package:firebase_example/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                Provider.of<Auth>(context, listen: false).signOut();
                print("Logout TIKLANDI");
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Container(
          child: Text("HOME VIEW"),
        ),
      ),
    );
  }
}
