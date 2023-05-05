import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthTesting extends StatefulWidget {
  AuthTesting({Key? key}) : super(key: key);

  @override
  State<AuthTesting> createState() => _AuthTestingState();
}

class _AuthTestingState extends State<AuthTesting> {
  create() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "akshathg1727@gmail.com",
        password: "123456",
      );
      print(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          create();
        },
        child: const Text("Press mee"));
  }
}
