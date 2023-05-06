import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CitizenLoginPage extends StatelessWidget {
  const CitizenLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tumkur Schools")),
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
                trailing: Text(schoolSnapshot[index]["typeOfMangament"]),
                subtitle: Text(schoolSnapshot[index]["medium"]),
                title: Text(schoolSnapshot[index]["schoolName"]),
              );
            },
          ));
        },
      ),
    );
  }
}
