import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:tumkur_paatashala/screens/admin_login.dart';
import 'package:tumkur_paatashala/screens/citizen_login.dart';
import 'package:tumkur_paatashala/screens/school_login.dart';
// import 'package:tumkur_paatashala/screens/auth_testing.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    title: 'Tumukuru Paatashala',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final providers = [EmailAuthProvider()];
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text("Tumakuru Paatashaala")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminLoginPage(),
                      ),
                    );
                  },
                  child: const Text("Login as Admin"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SchoolLoginPage(),
                      ),
                    );
                  },
                  child: const Text("Login as a School"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CitizenLoginPage(),
                      ),
                    );
                  },
                  child: const Text("Login as a Citizen"),
                ),
              ],
            ),
          )),
    ));
  }
}
