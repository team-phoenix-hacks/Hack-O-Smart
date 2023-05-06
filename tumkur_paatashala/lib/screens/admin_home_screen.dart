import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tumkur_paatashala/screens/school_details_screen.dart';
import 'package:tumkur_paatashala/screens/school_registration_page.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class AdminHomeScreen extends StatelessWidget {
  AdminHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Admin Home Page",
        ),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("schools").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          final schoolSnapshot = snapshot.data?.docs;
          if (schoolSnapshot!.isEmpty) {
            return const Text("no data");
          }
          return Center(
            child: ListView.builder(
              itemCount: schoolSnapshot.length,
              prototypeItem: ListTile(
                title: Text("school"),
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SchoolDetailsScreen(),
                      ),
                    );
                  },
                  trailing: Text(schoolSnapshot[index]["typeOfMangament"]),
                  subtitle: Text(schoolSnapshot[index]["medium"]),
                  title: Text(schoolSnapshot[index]["schoolName"]),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SchoolRegistrationPage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

  // for (int i = 0; i < schoolSnapshot.length; i++) {
                //   print(schoolSnapshot[i].data());
                // }


          