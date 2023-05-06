import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tumkur_paatashala/model/school_model.dart';

class SchoolRepository {
  final db = FirebaseFirestore.instance;
  // Future<SchoolModel> getSchoolDetails(String email) async{
  //   final snapshot = await db.collection('schools').where('school')
  // }
}
