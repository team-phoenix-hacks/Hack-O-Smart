import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:tumkur_paatashala/screens/admin_home_screen.dart';

class AdminLoginPage extends StatelessWidget {
  AdminLoginPage({Key? key}) : super(key: key);
  final providers = [EmailAuthProvider()];
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AdminHomeScreen();
          } else {
            return SignInScreen(
              providers: providers,
            );
          }
        });
  }
}

// // MaterialApp(
// //       initialRoute:
// //           FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/profile',
// //       routes: {
// //         '/sign-in': (context) {
// //           return SignInScreen(
// //             providers: providers,
// //             actions: [
// //               AuthStateChangeAction<SignedIn>((context, state) {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: ((context) => AdminHomeScreen()),
// //                   ),
// //                 );
// //               }),
// //             ],
// //           );
// //         },
// //       },
// //     );