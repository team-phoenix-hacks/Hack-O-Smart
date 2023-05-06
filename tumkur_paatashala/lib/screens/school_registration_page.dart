import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SchoolRegistrationPage extends StatefulWidget {
  SchoolRegistrationPage({Key? key}) : super(key: key);

  @override
  State<SchoolRegistrationPage> createState() => _SchoolRegistrationPageState();
}

class _SchoolRegistrationPageState extends State<SchoolRegistrationPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController _schoolId = TextEditingController();
  TextEditingController _schoolName = TextEditingController();
  TextEditingController _about = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phoneNo = TextEditingController();
  TextEditingController _totalBoys = TextEditingController();
  TextEditingController _totalGirls = TextEditingController();
  TextEditingController _management = TextEditingController();
  TextEditingController _medium = TextEditingController();
  TextEditingController _residential = TextEditingController();
  TextEditingController _schoolCategory = TextEditingController();
  TextEditingController _yearOfEstablishment = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _schoolCategory.dispose();
    _schoolId.dispose();
    _schoolName.dispose();
    _about.dispose();
    _address.dispose();
    _email.dispose();
    _phoneNo.dispose();
    _totalBoys.dispose();
    _totalGirls.dispose();
    _management.dispose();
    _medium.dispose();
    _residential.dispose();
    _schoolCategory.dispose();
    _yearOfEstablishment.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register School")),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          TextFormField(
            // initialValue: 'Input text',
            controller: _schoolId,
            onChanged: (value) {
              value = _schoolId.text;
            },

            decoration: const InputDecoration(
              labelText: 'School ID',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          TextFormField(
            // initialValue: 'Input text',
            controller: _schoolName,
            onChanged: (value) {
              // value = _schoolId.text;
            },

            decoration: const InputDecoration(
              labelText: 'School Name',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          TextFormField(
            // initialValue: 'Input text',
            controller: _about,
            onChanged: (value) {
              value = _about.text;
            },
            maxLines: 5,
            decoration: const InputDecoration(
              labelText: 'About',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          TextFormField(
            // initialValue: 'Input text',
            maxLines: 4,
            controller: _address,
            onChanged: (value) {
              value = _address.text;
            },

            decoration: const InputDecoration(
              labelText: 'Address',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          TextFormField(
            // initialValue: 'Input text',
            controller: _email,
            onChanged: (value) {
              value = _email.text;
            },

            decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          TextFormField(
            // initialValue: 'Input text',
            controller: _phoneNo,
            onChanged: (value) {
              value = _phoneNo.text;
            },

            decoration: const InputDecoration(
              labelText: 'Phone Number',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          TextFormField(
            // initialValue: 'Input text',
            controller: _totalBoys,
            onChanged: (value) {
              value = _totalBoys.text;
            },

            decoration: const InputDecoration(
              labelText: 'Total Boys',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          TextFormField(
            // initialValue: 'Input text',
            controller: _totalGirls,
            onChanged: (value) {
              value = _totalGirls.text;
            },

            decoration: const InputDecoration(
              labelText: 'Total Girls',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          TextFormField(
            // initialValue: 'Input text',
            controller: _management,
            onChanged: (value) {
              value = _management.text;
            },

            decoration: const InputDecoration(
              labelText: 'Type of Managment',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          TextFormField(
            // initialValue: 'Input text',
            controller: _medium,
            onChanged: (value) {
              value = _medium.text;
            },

            decoration: const InputDecoration(
              labelText: 'Medium',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          TextFormField(
            // initialValue: 'Input text',
            controller: _residential,
            onChanged: (value) {
              value = _residential.text;
            },

            decoration: const InputDecoration(
              labelText: 'Residential',
              labelStyle: TextStyle(
                color: Color(0xFF6200EE),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE)),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                onPressed: () async {
                  final schoolData = {
                    "schoolId": _schoolId.text,
                    "schoolName": _schoolName.text,
                    "about": _about.text,
                    "address": _address.text,
                    "email": _email.text,
                    "phNumber": _phoneNo.text,
                    "totalBoys": _totalBoys.text,
                    "totalGirls": _totalGirls.text,
                    "typeOfMangament": _management.text,
                    "medium": _medium.text,
                    "residential": _residential.text,
                  };
                  await FirebaseFirestore.instance
                      .collection("schools")
                      .doc(_schoolId.text)
                      .set(schoolData)
                      .onError((e, _) => print("Error writing document: $e"));
                  CircularProgressIndicator();
                  Navigator.pop(context);
                },
                child: Text("Submit")),
          )
        ],
      ),
    );
  }
}
