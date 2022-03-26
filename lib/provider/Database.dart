import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/screens/Getting_started.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitegrate_project/screens/VideoAssessment/PushuUp.dart';
import 'package:fitegrate_project/screens/VideoAssessment/balance.dart';
import 'package:fitegrate_project/screens/VideoAssessment/partialCurlUp.dart';
import 'package:fitegrate_project/screens/VideoAssessment/sitAndReach.dart';
import 'package:fitegrate_project/screens/VideoAssessment/squats.dart';
import 'package:fitegrate_project/screens/healthassessment.dart';
import 'package:fitegrate_project/screens/pre-requisite.dart';
import 'package:flutter/material.dart';

class DatabaseService {
  var uid;
  // DatabaseService({ required this.uid});

  // final CollectionReference Users = FirebaseFirestore.instance.collection('Users');
  void enterUID(uid) async {
    this.uid = uid;
    print(uid);
  }

  //  Future<void> enterUID (uid)async {
  //    await FirebaseFirestore.instance
  //        .collection("Users")
  //        .doc(uid)
  //        .collection("testing")
  //        .add({'name': "yfyboi"})
  //        .catchError((e){
  //                  print(e.toString());
  //        });
  //    print(uid);
  //  }
  // Future<void> addName (String name,uid)async {
  //     await FirebaseFirestore.instance
  //         .collection("Users")
  //         .doc(uid)
  //         .set({'name': name})
  //         .catchError((e){
  //             print(e.toString());
  //     });
  // }
  Future<void> addBasicData(Map<String, String> basicInfo) async {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance.collection("Users").doc(userId).set({
      'Full name': GetStarted.name,
      'Age': GetStarted.age,
      'Gender': GetStarted.gender,
      'Height': GetStarted.height,
      'Weight': GetStarted.weight,
      'Phone_Number': GetStarted.phno,
    })
        //.add(basicInfo)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future<void> addBasicData1(Map<String, String> basicInfo) async {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(userId)
        .collection("health")
        .doc(userId)
        .set({
      '1': HealthAssessment.Queone,
      '1.1': HealthAssessment.Queone_one,
      '1.2': HealthAssessment.Queone_two,
      '1.3': HealthAssessment.Queone_three,
      '2': HealthAssessment.Quetwo,
      '2.1': HealthAssessment.Quetwo_one,
      '2.2': HealthAssessment.Quetwo_two,
      '3': HealthAssessment.Queone,
      '3.1': HealthAssessment.Queone,
      '3.2': HealthAssessment.Quetwo_two,
      '3.3': HealthAssessment.Quetwo_two,
      '3.4': HealthAssessment.Quetwo_two,
      '4': HealthAssessment.Quetwo_two,
      '4.1': HealthAssessment.Quetwo_two,
      '4.2': HealthAssessment.Quetwo_two,
      '5': HealthAssessment.Quefive,
      '5.1': HealthAssessment.Quefive_one,
      '5.2': HealthAssessment.Quefive_two,
      '5.3': HealthAssessment.Quefive_three,
      '5.4': HealthAssessment.Quefive_four,
      '5.5': HealthAssessment.Quefive_five,
      '6': HealthAssessment.Quesix,
      '7': HealthAssessment.Queseven,
      '7.1': HealthAssessment.Queseven_one,
      '7.2': HealthAssessment.Queseven_two,
      '8': HealthAssessment.Queeight,
      '8.1': HealthAssessment.Queeight_one,
      '8.2': HealthAssessment.Queeight_two,
      '8.3': HealthAssessment.Queeight_three,
      '8.4': HealthAssessment.Queeight_four,
      '9': HealthAssessment.Quenine,
      '9.1': HealthAssessment.Quenine_one,
      '9.2': HealthAssessment.Quenine_two,
      '9.3': HealthAssessment.Quenine_three,
      '10': HealthAssessment.Queten,
      '10.1': HealthAssessment.Queten_one,
      '10.2': HealthAssessment.Queten_two,
      '10.3': HealthAssessment.Queten_three,
      '11': HealthAssessment.Queeleven,
      '11.1': HealthAssessment.Queeleven_one,
      '11.2': HealthAssessment.Queeleven_two,
      '11.3': HealthAssessment.Queeleven_three,
    })
        //.add(basicInfo)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future<void> videoAssData(Map<String, String> basicInfo) async {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(userId)
        .collection("VideoAssementData")
        .doc(userId)
        .set({
      'left_leg_eye_open': VideoAssessmentBalance.left_eye_open,
      'left_eye_closed': VideoAssessmentBalance.left_eye_closed,
      'right_eye_open': VideoAssessmentBalance.right_eye_open,
      'right_eye_closed': VideoAssessmentBalance.right_eye_closed,
    }, SetOptions(merge: true))

        //.add(basicInfo)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future<void> sitandReachData(Map<String, String> basicInfo) async {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(userId)
        .collection("VideoAssementData")
        .doc(userId)
        .set({
      "Distance_of_Sit_and_reach": VideoAssessmentSitAndReach.distance,
    }, SetOptions(merge: true))

        //.add(basicInfo)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future<void> partialCurlUp(Map<String, String> basicInfo) async {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(userId)
        .collection("VideoAssementData")
        .doc(userId)
        .set({
      "number_partialCurlUP": VideoAssessmentPartialCurlUp.number_curlup,
    }, SetOptions(merge: true))

        //.add(basicInfo)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future<void> pushUp(Map<String, String> basicInfo) async {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(userId)
        .collection("VideoAssementData")
        .doc(userId)
        .set({
      "number_pushUp": VideoAssessmentPushUp.number_pushUp,
    }, SetOptions(merge: true))

        //.add(basicInfo)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future<void> Squatsfunc(Map<String, String> basicInfo) async {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(userId)
        .collection("VideoAssementData")
        .doc(userId)
        .set({
      "number_Squats": Squats.number_squats,
    }, SetOptions(merge: true))

        //.add(basicInfo)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future<void> hipWaistRatio(Map<String, String> basicInfo) async {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(userId)
        .collection("VideoAssementData")
        .doc(userId)
        .set({
      "Waist Value": PreRequisite.waistValue,
      "Hip Value": PreRequisite.hipValue,
    }, SetOptions(merge: true))

        //.add(basicInfo)
        .catchError((e) {
      print(e.toString());
    });
  }

  // Stream<QuerySnapshot> get getName {
  //   return Users.snapshots();
  // }
  // Future<void> getUserName() async{
  //   String name;
  //   try{
  //     FirebaseFirestore.instance
  //         .collection("Users")
  //         .doc(uid)
  //         .snapshots();
  //   } catch (e){
  //     print(e.toString());
  //     return null;
  //   }
  //}
  // getName() async{
  //   return await FirebaseFirestore.instance.collection("Users").doc(uid).snapshots();
  // }
}
