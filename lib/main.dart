import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_example/widgets/on_board.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/sign_in_view.dart';
import 'services/auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<Auth>(
      create: (context) => Auth(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          theme: ThemeData.dark(
              // primarySwatch: Colors.orange,
              // scaffoldBackgroundColor: Colors.black

              ),
          home: OnBoardWidget()),
    );
  }
}
