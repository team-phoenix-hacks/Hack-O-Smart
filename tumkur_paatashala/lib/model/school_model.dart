import 'package:cloud_firestore/cloud_firestore.dart';

class SchoolModel {
  final String schoolId;
  final String schoolName;
  final String about;
  final String address;
  final String phoneNo;
  final String email;
  final String totalBoys;
  final String totalGirls;
  final String management;
  final String medium;
  final String residential;

  SchoolModel({
    required this.schoolId,
    required this.schoolName,
    required this.about,
    required this.address,
    required this.phoneNo,
    required this.email,
    required this.totalBoys,
    required this.totalGirls,
    required this.management,
    required this.medium,
    required this.residential,
  });
  toJson() {
    return {
      "schoolId": schoolId,
      "schoolName": schoolName,
      "about": about,
      "address": address,
      "email": address,
      "phNumber": phoneNo,
      "totalBoys": totalBoys,
      "totalGirls": totalGirls,
      "typeOfMangament": management,
      "medium": medium,
      "residential": residential,
    };
  }

  factory SchoolModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return SchoolModel(
        schoolId: document.id,
        schoolName: data["schoolName"],
        about: data["about"],
        address: data["address"],
        phoneNo: data["phNumber"],
        email: data["email"],
        totalBoys: data["totalBoys"],
        totalGirls: data["totalGirls"],
        management: data["typeOfManagement"],
        medium: data["medium"],
        residential: data["residential"]);
  }
}
