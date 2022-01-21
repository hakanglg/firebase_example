import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_example/sign_in_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: ThemeData(primarySwatch: Colors.orange),
        home: SignInView());
  }
}
