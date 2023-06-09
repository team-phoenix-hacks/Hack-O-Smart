import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tumkur_paatashala/screens/auth_testing.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AuthTesting(),
        ),
      ),
    );
  }
}
