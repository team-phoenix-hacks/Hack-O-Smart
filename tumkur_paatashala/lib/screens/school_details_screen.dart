import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SchoolDetailsScreen extends StatelessWidget {
  SchoolDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("School Details"),
      ),
      body: Center(
          child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('schools').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          final schoolSnapshot = snapshot.data?.docs;
          if (schoolSnapshot!.isEmpty) {
            return const Text("no data");
          }
          return Column(
            children: [Text(schoolSnapshot[1]["typeOfMangament"])],
          );
        },
      )),
    );
  }
}
