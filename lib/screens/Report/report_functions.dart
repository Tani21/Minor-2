import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/screens/Getting_started.dart';
import 'package:fitegrate_project/screens/dashboard.dart';
import 'package:flutter/material.dart';

// var hip_val="";
// fetch() async{
//     final firebaseuser = await FirebaseAuth.instance.currentUser;
//     if(firebaseuser!=null){
//       var xyz = await FirebaseFirestore.instance
//       .collection('VideoAssementData')
//       .doc(firebaseuser.uid)
//       .get();
//       print("AB");
//       print(xyz.data());

//       print("AYUSHBANSAL");
//       if(xyz.data()!=null){
//         hip_val = xyz.data()!['Hip Value'];
        
//         print("HDREAL");
//         print(hip_val);
//         print("NAMEREAL ");
//     }
//     }
//   }

import 'package:percent_indicator/percent_indicator.dart';


var bmi_result = "";
var bmi_recommendation = "";
double bmi = 0.0;

//var waist_to_hip_result="";
var waist_to_hip_recommendation = "";
double waist_to_hip_result = 0.0;

var distance_of_sit_and_reach_test = "";
var sitandreach_percentile="";
var sitandreach_recommendation="";
var sitandreach_user_recommendation="";
var sitandreach_good="";



var left_eye_closed_test = "";
var lefteyeclosed_percentile="";
var lefteyeclosed_recommendation="";
var lefteyeclosed_good="";
var lefteyeclosed_user_recommendation="";




var left_leg_eye_open_test = "";
var lefteyeopen_percentile="";
var lefteyeopen_recommendation="";
var lefteyeopen_good="";
var lefteyeopen_user_recommendation="";


var number_of_partial_Curl_Up_test = "";
var curlup_percentile="";
var curlup_recommendation="";
var curlup_good="";
var curlup_user_recommendation="";


var number_of_pushups_test = "";
var pushup_percentile = "";
var pushup_recommendation = "";
var pushup_good_recommendation = "";
var pushup_user_recommendation = "";


var squats_test="";
var squats_percentile="";
var squats_recommendation="";
var squats_good="";
var squats_user_recommendation="";


var right_eye_closed_test = "";
var righteyeclosed_percentile="";
var righteyeclosed_recommendation="";
var righteyeclosed_good="";
var righteyeclosed_user_recommendation="";





var right_eye_open_test = "";
var righteyeopen_percentile="";
var righteyeopen_recommendation="";
var righteyeopen_good="";
var righteyeopen_user_recommendation="";




var hip = "";
var waist = "";
var height_test = RealDisplay.report_height;
var weight_test = RealDisplay.report_weight;
var gender = RealDisplay.report_gender;
var age = RealDisplay.report_age;
var age_number = int.parse(age);

class FetchReportData extends StatefulWidget {
  const FetchReportData({Key? key}) : super(key: key);

  @override
  FetchReportDataState createState() => FetchReportDataState();
}

class FetchReportDataState extends State<FetchReportData> {
  static fetchData() async {
    final firebaseuser = await FirebaseAuth.instance.currentUser;
    if (firebaseuser != null) {
      var xyz = await FirebaseFirestore.instance
          .collection('Users')
          .doc(firebaseuser.uid)
          .collection('VideoAssementData')
          .doc(firebaseuser.uid)
          .get();
      print("AB");
      print(xyz.data());

      //  var gs = await FirebaseFirestore.instance
      // .collection('Users')
      // .doc(firebaseuser.uid)
      // .get();
      // print("ABcd");
      // print(gs.data());

      print("AYUSHBANSAL");
      if (xyz.data() != null) {
        print("AYUSHBANSAL inside if");
        print("HDREAL in test report");
        // hip = xyz.data()!['Hip Value'];

        distance_of_sit_and_reach_test =
            xyz.data()!['Distance_of_Sit_and_reach'];
        print(distance_of_sit_and_reach_test + "dist of sit");

        left_eye_closed_test = xyz.data()!['left_eye_closed'];
        print(left_eye_closed_test + " left closed");

        left_leg_eye_open_test = xyz.data()!['left_leg_eye_open'];
        print(left_leg_eye_open_test + " left open");

        number_of_partial_Curl_Up_test = xyz.data()?['number_partialCurlUP'];
        print(number_of_partial_Curl_Up_test + " partial curl");
        number_of_pushups_test = xyz.data()!['number_pushUp'];
        print(number_of_pushups_test + "push up");

        right_eye_closed_test = xyz.data()!['right_eye_closed'];
        print(right_eye_closed_test + " right closed");
        right_eye_open_test = xyz.data()!['right_eye_open'];
        print(right_eye_open_test + " right open");

        hip = xyz.data()!['Hip Value'];
        print(hip + " hip");

        waist = xyz.data()!['Waist Value'];
        print(waist + " waist");

// name_1 = xy.data()!['Full name'];
        // age_1 = xy.data()!['Age'];
        // gender_1 = xy.data()!['Gender'];
        // height_1 = xy.data()!['Height'];
        // weight_1 = xy.data()!['Weight'];
        print("left eye closed:" + hip);
        print("NAMEREAL in test report ");
      }
    }
  }

  @override
  void initState() {
    fetchData();
    print("we are in init");
    // print(Distance of sit and_reach_test+"?");
    print(left_eye_closed_test + "left leg");
    // TODO: implement initState
    //super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data);
              print("qwerty");
              return DisplayValues();
            } else
              return DisplayValues();
            // return Text('Loading data');
            // Navigator.pushNamed(context,  "Dashboard");
          },
        ),
      ),
    );
  }
}

class DisplayValues extends StatefulWidget {
  const DisplayValues({Key? key}) : super(key: key);

  // BMI FUNCTION

  static void BMI() {
    var status;

    var bmiWeight = weight_test;
    var bmiWeightNumber = int.parse(bmiWeight);

    var bmiHeight = height_test;
    var bmiHeightNumber = int.parse(bmiHeight);

    bmi =
        ((bmiWeightNumber * 10000) / (bmiHeightNumber * bmiHeightNumber));

    if (bmi < 18.5) {
      bmi_result = "Underweight";
      print(bmi);
      print(bmi_result);
    } else if (18.5 <= bmi && bmi <= 22.9) {
      bmi_result = "Normal";
      print(bmi);
      print(bmi_result);
    } else if (23 <= bmi && bmi <= 24.9) {
      bmi_result = "Overweight";
      print(bmi);
      print(bmi_result);
    } else if (25 <= bmi && bmi <= 29.9) {
      bmi_result = "Pre-obese";
      print(bmi);
      print(bmi_result);
    } else if (30 <= bmi && bmi <= 40) {
      bmi_result = "Obese 1";
      print(bmi);
      print(bmi_result);
    } else if (40.1 <= bmi && bmi <= 50) {
      bmi_result = "Obese 2";
      print(bmi);
      print(bmi_result);
    } else {
      bmi_result = "Obese 3";
      print(bmi);
      print(bmi_result);
    }
  }

  // WAIST TO HIP RATIO

  static void waistToHip() {
    var hippy = hip;
    var hippyNumber = int.parse(hippy);
    print(hippyNumber);
    print('hippy number');

    var waisty = waist;
    var waistyNumber = int.parse(waisty);
    print(waistyNumber);
    print('waisty number');

    waist_to_hip_result = waistyNumber / hippyNumber;
    print(waist_to_hip_result);
    print('ratio result');

    if (gender == 'female' || gender == "Female" || gender == "FEMALE") {
      if (waist_to_hip_result < 0.80) {
        waist_to_hip_recommendation = "Low Risk";
      } else if (0.80 <= waist_to_hip_result && waist_to_hip_result <= 0.85) {
        waist_to_hip_recommendation = "Moderate Risk";
      } else if (0.86 <= waist_to_hip_result) {
        waist_to_hip_recommendation = "High Risk";
      }
    }

    if (gender == 'male' || gender == "Male" || gender == "MALE") {
      if (waist_to_hip_result < 0.95) {
        waist_to_hip_recommendation = "Low Risk";
      } else if (0.96 <= waist_to_hip_result && waist_to_hip_result <= 1.0) {
        waist_to_hip_recommendation = "Moderate Risk";
      } else if (1.0 <= waist_to_hip_result) {
        waist_to_hip_recommendation = "High Risk";
      }
    }
  }

  static void pushUp() {
    var pushupnumber = int.parse(number_of_pushups_test);

    if (gender == 'female' || gender == 'Female' || gender == "FEMALE") {
      if (age_number <= 29) {
        if (pushupnumber >= 30) {
          pushup_percentile = "90";
          pushup_recommendation = "Well above average";
          pushup_good_recommendation = "Excellent";
          pushup_user_recommendation = "Excellent upper body strength";
        } else if (21 <= pushupnumber && pushupnumber <= 29) {
          pushup_percentile = "75";
          pushup_recommendation = "Above average";
          pushup_good_recommendation = "Very Good";
          pushup_user_recommendation = "Very good upper body strength";
        } else if (15 <= pushupnumber && pushupnumber <= 20) {
          pushup_percentile = "55";
          pushup_recommendation = "Average";
          pushup_good_recommendation = "Good";
          pushup_user_recommendation = "Good upper body strength";
        } else if (10 <= pushupnumber && pushupnumber <= 14) {
          pushup_percentile = "35";
          pushup_recommendation = "Below Average";
          pushup_good_recommendation = "Fair";
          pushup_user_recommendation =
              "Poor upper body strength. Strengthen upper body muscles";
        } else if (pushupnumber <= 9) {
          pushup_percentile = "20";
          pushup_recommendation = "Well below average";
          pushup_good_recommendation = "Needs improvement";
          pushup_user_recommendation =
              "Very poor upper body strength. Strengthen upper body muscles";
        }
      } else if (30 <= age_number && age_number <= 39) {
        if (pushupnumber >= 27) {
          pushup_percentile = "90";
          pushup_recommendation = "Well above average";
          pushup_good_recommendation = "Excellent";
          pushup_user_recommendation = "Excellent upper body strength";
        } else if (20 <= pushupnumber && pushupnumber <= 26) {
          pushup_percentile = "75";
          pushup_recommendation = "Above average";
          pushup_good_recommendation = "Very Good";
          pushup_user_recommendation = "Very good upper body strength";
        } else if (13 <= pushupnumber && pushupnumber <= 19) {
          pushup_percentile = "55";
          pushup_recommendation = "Average";
          pushup_good_recommendation = "Good";
          pushup_user_recommendation = "Good upper body strength";
        } else if (8 <= pushupnumber && pushupnumber <= 12) {
          pushup_percentile = "35";
          pushup_recommendation = "Below Average";
          pushup_good_recommendation = "Fair";
          pushup_user_recommendation =
              "Poor upper body strength. Strengthen upper body muscles";
        } else if (pushupnumber <= 7) {
          pushup_percentile = "20";
          pushup_recommendation = "Well Below Average";
          pushup_good_recommendation = "Needs improvement";
          pushup_user_recommendation =
              "Very poor upper body strength. Strengthen upper body muscles";
        }
      } else if (40 <= age_number && age_number <= 49) {
        if (pushupnumber >= 24) {
          pushup_percentile = "90";
          pushup_recommendation = "Well Above Average";
          pushup_good_recommendation = "Excellent";
          pushup_user_recommendation = "Excellent upper body strength";
        } else if (15 <= pushupnumber && pushupnumber <= 23) {
          pushup_percentile = "75";
          pushup_recommendation = "Above Average";
          pushup_good_recommendation = "Very Good";
          pushup_user_recommendation = "Very good upper body strength";
        } else if (11 <= pushupnumber && pushupnumber <= 14) {
          pushup_percentile = "55";
          pushup_recommendation = "Average";
          pushup_good_recommendation = "Good";
          pushup_user_recommendation = "Good upper body strength";
        } else if (5 <= pushupnumber && pushupnumber <= 10) {
          pushup_percentile = "35";
          pushup_recommendation = "Below Average";
          pushup_good_recommendation = "Fair";
          pushup_user_recommendation =
              "Poor upper body strength. Strengthen upper body muscles";
        } else if (pushupnumber <= 4) {
          pushup_percentile = "20";
          pushup_recommendation = "Well Below Average";
          pushup_good_recommendation = "Needs improvement";
          pushup_user_recommendation =
              "Very poor upper body strength. Strengthen upper body muscles";
        }
      } else if (50 <= age_number && age_number <= 59) {
        if (pushupnumber >= 21) {
          pushup_percentile = "90";
          pushup_recommendation = "Well Above Average";
          pushup_good_recommendation = "Excellent";
          pushup_user_recommendation = "Excellent upper body strength";
        } else if (11 <= pushupnumber && pushupnumber <= 20) {
          pushup_percentile = "75";
          pushup_recommendation = "Above Average";
          pushup_good_recommendation = "Very Good";
          pushup_user_recommendation = "Very good upper body strength";
        } else if (7 <= pushupnumber && pushupnumber <= 10) {
          pushup_percentile = "55";
          pushup_recommendation = "Average";
          pushup_good_recommendation = "Good";
          pushup_user_recommendation = "Good upper body strength";
        } else if (2 <= pushupnumber && pushupnumber <= 6) {
          pushup_percentile = "35";
          pushup_recommendation = "Below Average";
          pushup_good_recommendation = "Fair";
          pushup_user_recommendation =
              "Poor upper body strength. Strengthen upper body muscles";
        } else if (pushupnumber <= 1) {
          pushup_percentile = "20";
          pushup_recommendation = "Well Below Average";
          pushup_good_recommendation = "Needs improvement";
          pushup_user_recommendation =
              "Very poor upper body strength. Strengthen upper body muscles";
        }
      } else if (60 <= age_number && age_number <= 69) {
        if (pushupnumber >= 17) {
          pushup_percentile = "90";
          pushup_recommendation = "Well Above Average";
          pushup_good_recommendation = "Excellent";
          pushup_user_recommendation = "Excellent upper body strength";
        } else if (12 <= pushupnumber && pushupnumber <= 16) {
          pushup_percentile = "75";
          pushup_recommendation = "Above Average";
          pushup_good_recommendation = "Very Good";
          pushup_user_recommendation = "Very good upper body strength";
        } else if (5 <= pushupnumber && pushupnumber <= 11) {
          pushup_percentile = "55";
          pushup_recommendation = "Average";
          pushup_good_recommendation = "Good";
          pushup_user_recommendation = "Good upper body strength";
        } else if (2 <= pushupnumber && pushupnumber <= 4) {
          pushup_percentile = "35";
          pushup_recommendation = "Below Average";
          pushup_good_recommendation = "Fair";
          pushup_user_recommendation =
              "Poor upper body strength. Strengthen upper body muscles";
        } else if (pushupnumber <= 1) {
          pushup_percentile = "20";
          pushup_recommendation = "Well Below Average";
          pushup_good_recommendation = "Needs improvement";
          pushup_user_recommendation =
              "Very poor upper body strength. Strengthen upper body muscles";
        }
      }
    }

    // Male

    else if (gender == "male" || gender == "Male" || gender == "MALE") {
      if (age_number <= 29) {
        if (pushupnumber >= 36) {
          pushup_percentile = "90";
          pushup_recommendation = "Well Above Average";
          pushup_good_recommendation = "Excellent";
          pushup_user_recommendation = "Excellent upper body strength";
        } else if (29 <= pushupnumber && pushupnumber <= 35) {
          pushup_percentile = "75";
          pushup_recommendation = "Above Average";
          pushup_good_recommendation = "Very Good";
          pushup_user_recommendation = "Very good upper body strength";
        } else if (22 <= pushupnumber && pushupnumber <= 28) {
          pushup_percentile = "55";
          pushup_recommendation = "Average";
          pushup_good_recommendation = "Good";
          pushup_user_recommendation = "Good upper body strength";
        } else if (17 < pushupnumber && pushupnumber <= 21) {
          pushup_percentile = "35";
          pushup_recommendation = "Below Average";
          pushup_good_recommendation = "Fair";
          pushup_user_recommendation =
              "Poor upper body strength. Strengthen upper body muscles";
        } else if (pushupnumber <= 16) {
          pushup_percentile = "20";
          pushup_recommendation = "Well Below Average";
          pushup_good_recommendation = "Needs improvement";
          pushup_user_recommendation =
              "Very poor upper body strength. Strengthen upper body muscles";
        }
      } else if (30 <= age_number && age_number <= 39) {
        if (pushupnumber >= 30) {
          pushup_percentile = "90";
          pushup_recommendation = "Well Above Average";
          pushup_good_recommendation = "Excellent";
          pushup_user_recommendation = "Excellent upper body strength";
        } else if (22 <= pushupnumber && pushupnumber <= 29) {
          pushup_percentile = "75";
          pushup_recommendation = "Above Average";
          pushup_good_recommendation = "Very Good";
          pushup_user_recommendation = "Very good upper body strength";
        } else if (17 <= pushupnumber && pushupnumber <= 21) {
          pushup_percentile = "55";
          pushup_recommendation = "Average";
          pushup_good_recommendation = "Good";
          pushup_user_recommendation = "Good upper body strength";
        } else if (12 <= pushupnumber && pushupnumber <= 16) {
          pushup_percentile = "35";
          pushup_recommendation = "Below Average";
          pushup_good_recommendation = "Fair";
          pushup_user_recommendation =
              "Poor upper body strength. Strengthen upper body muscles";
        } else if (pushupnumber <= 11) {
          pushup_percentile = "20";
          pushup_recommendation = "Well Below Average";
          pushup_good_recommendation = "Needs improvement";
          pushup_user_recommendation =
              "Very poor upper body strength. Strengthen upper body muscles";
        }
      } else if (40 <= age_number && age_number <= 49) {
        if (pushupnumber >= 25) {
          pushup_percentile = "90";
          pushup_recommendation = "Well Above Average";
          pushup_good_recommendation = "Excellent";
          pushup_user_recommendation = "Excellent upper body strength";
        } else if (17 <= pushupnumber && pushupnumber <= 24) {
          pushup_percentile = "75";
          pushup_recommendation = "Above Average";
          pushup_good_recommendation = "Very Good";
          pushup_user_recommendation = "Very good upper body strength";
        } else if (13 <= pushupnumber && pushupnumber <= 16) {
          pushup_percentile = "55";
          pushup_recommendation = "Average";
          pushup_good_recommendation = "Good";
          pushup_user_recommendation = "Good upper body strength";
        } else if (10 <= pushupnumber && pushupnumber <= 12) {
          pushup_percentile = "35";
          pushup_recommendation = "Below Average";
          pushup_good_recommendation = "Fair";
          pushup_user_recommendation =
              "Poor upper body strength. Strengthen upper body muscles";
        } else if (pushupnumber <= 9) {
          pushup_percentile = "20";
          pushup_recommendation = "Well Below Average";
          pushup_good_recommendation = "Needs improvement";
          pushup_user_recommendation =
              "Very poor upper body strength. Strengthen upper body muscles";
        }
      } else if (50 <= age_number && age_number <= 59) {
        if (pushupnumber >= 21) {
          pushup_percentile = "90";
          pushup_recommendation = "Well Above Average";
          pushup_good_recommendation = "Excellent";
          pushup_user_recommendation = "Excellent upper body strength";
        } else if (13 <= pushupnumber && pushupnumber <= 20) {
          pushup_percentile = "75";
          pushup_recommendation = "Above Average";
          pushup_good_recommendation = "Very Good";
          pushup_user_recommendation = "Very good upper body strength";
        } else if (10 <= pushupnumber && pushupnumber <= 12) {
          pushup_percentile = "55";
          pushup_recommendation = "Average";
          pushup_good_recommendation = "Good";
          pushup_user_recommendation = "Good upper body strength";
        } else if (7 <= pushupnumber && pushupnumber <= 9) {
          pushup_percentile = "35";
          pushup_recommendation = "Below Average";
          pushup_good_recommendation = "Fair";
          pushup_user_recommendation =
              "Poor upper body strength. Strengthen upper body muscles";
        } else if (pushupnumber <= 6) {
          pushup_percentile = "20";
          pushup_recommendation = "Well Below Average";
          pushup_good_recommendation = "Needs improvement";
          pushup_user_recommendation =
              "Very poor upper body strength. Strengthen upper body muscles";
        }
      } else if (60 < age_number && age_number <= 69) {
        if (pushupnumber >= 18) {
          pushup_percentile = "90";
          pushup_recommendation = "Well Above Average";
          pushup_good_recommendation = "Excellent";
          pushup_user_recommendation = "Excellent upper body strength";
        } else if (11 <= pushupnumber && pushupnumber <= 17) {
          pushup_percentile = "75";
          pushup_recommendation = "Above Average";
          pushup_good_recommendation = "Very Good";
          pushup_user_recommendation = "Very good upper body strength";
        } else if (8 <= pushupnumber && pushupnumber <= 10) {
          pushup_percentile = "55";
          pushup_recommendation = "Average";
          pushup_good_recommendation = "Good";
          pushup_user_recommendation = "Good upper body strength";
        } else if (5 <= pushupnumber && pushupnumber <= 7) {
          pushup_percentile = "35";
          pushup_recommendation = "Below Average";
          pushup_good_recommendation = "Fair";
          pushup_user_recommendation =
              "Poor upper body strength. Strengthen upper body muscles";
        } else if (pushupnumber <= 4) {
          pushup_percentile = "20";
          pushup_recommendation = "Well Below Average";
          pushup_good_recommendation = "Needs improvement";
          pushup_user_recommendation =
              "Very poor upper body strength. Strengthen upper body muscles";
        }
      }
    }
  }

  static void sitAndReach(){
      var sitandreachvaladistance = int.parse(distance_of_sit_and_reach_test);

      if(gender=="male" || gender=="Male" || gender=="MALE"){
        if(age_number<=25){
          if(sitandreachvaladistance>=22){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(19<=sitandreachvaladistance && sitandreachvaladistance<=21){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(17<=sitandreachvaladistance && sitandreachvaladistance<=18){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(14<=sitandreachvaladistance && sitandreachvaladistance<=16){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=13){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
          
        }

        else if(26<=age_number && age_number<=35){
          if(sitandreachvaladistance>=21){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(17<=sitandreachvaladistance && sitandreachvaladistance<=20){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(15<=sitandreachvaladistance && sitandreachvaladistance<=16){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(12<=sitandreachvaladistance && sitandreachvaladistance<=14){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=11){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
        }

        else if(36<=age_number && age_number<=45){
          if(sitandreachvaladistance>=21){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(17<=sitandreachvaladistance && sitandreachvaladistance<=20){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(15<=sitandreachvaladistance && sitandreachvaladistance<=16){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(13<=sitandreachvaladistance && sitandreachvaladistance<=14){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=12){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
        }

         else if(46<=age_number && age_number<=55){
          if(sitandreachvaladistance>=19){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(15<=sitandreachvaladistance && sitandreachvaladistance<=18){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(13<=sitandreachvaladistance && sitandreachvaladistance<=14){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(10<=sitandreachvaladistance && sitandreachvaladistance<=12){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=9){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
        }

        else if(56<=age_number && age_number<=65){
          if(sitandreachvaladistance>=17){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(13<=sitandreachvaladistance && sitandreachvaladistance<=16){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(11<=sitandreachvaladistance && sitandreachvaladistance<=12){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(9<=sitandreachvaladistance && sitandreachvaladistance<=10){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=8){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
        }

        else if(age_number>65){
          if(sitandreachvaladistance>=17){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(13<=sitandreachvaladistance && sitandreachvaladistance<=16){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(10<=sitandreachvaladistance && sitandreachvaladistance<=12){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(8<=sitandreachvaladistance && sitandreachvaladistance<=9){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=7){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
        }

      }


      else if(gender=="female" || gender=="Female" || gender=="FEMALE"){
         if(age_number<=25){
          if(sitandreachvaladistance>=24){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(21<=sitandreachvaladistance && sitandreachvaladistance<=23){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(19<=sitandreachvaladistance && sitandreachvaladistance<=20){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(17<=sitandreachvaladistance && sitandreachvaladistance<=18){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=16){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
          
        }

        else if(26<=age_number && age_number<=35){
          if(sitandreachvaladistance>=23){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(21<=sitandreachvaladistance && sitandreachvaladistance<=22){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(19<=sitandreachvaladistance && sitandreachvaladistance<=20){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(16<=sitandreachvaladistance && sitandreachvaladistance<=18){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=15){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
        }

        else if(36<=age_number && age_number<=45){
          if(sitandreachvaladistance>=22){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(19<=sitandreachvaladistance && sitandreachvaladistance<=21){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(17<=sitandreachvaladistance && sitandreachvaladistance<=18){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(15<=sitandreachvaladistance && sitandreachvaladistance<=16){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=14){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
        }

         else if(46<=age_number && age_number<=55){
          if(sitandreachvaladistance>=21){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(18<=sitandreachvaladistance && sitandreachvaladistance<=20){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(16<=sitandreachvaladistance && sitandreachvaladistance<=17){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(14<=sitandreachvaladistance && sitandreachvaladistance<=15){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=13){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
        }

        else if(56<=age_number && age_number<=65){
          if(sitandreachvaladistance>=20){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(17<=sitandreachvaladistance && sitandreachvaladistance<=19){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(15<=sitandreachvaladistance && sitandreachvaladistance<=16){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(12<=sitandreachvaladistance && sitandreachvaladistance<=14){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=11){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
        }

        else if(age_number>65){
          if(sitandreachvaladistance>=20){
            sitandreach_percentile="95";
            sitandreach_recommendation="Well Above Average";
            sitandreach_good="Excellent";
            sitandreach_user_recommendation="Excellent Flexibility";
          }

          else if(17<=sitandreachvaladistance && sitandreachvaladistance<=19){
            sitandreach_percentile="75";
            sitandreach_recommendation="Above Average";
            sitandreach_good="Very Good";
            sitandreach_user_recommendation="Very Good Flexibility";
          }

          else if(15<=sitandreachvaladistance && sitandreachvaladistance<=16){
            sitandreach_percentile="55";
            sitandreach_recommendation="Average";
            sitandreach_good="Good";
            sitandreach_user_recommendation="Good Flexibility";
          }

          else if(12<=sitandreachvaladistance && sitandreachvaladistance<=14){
            sitandreach_percentile="35";
            sitandreach_recommendation="Below Average";
            sitandreach_good="Fair";
            sitandreach_user_recommendation="Poor flexibility. Improve flexibility to perform physical activity and activities of daily living";
          }

          else if(sitandreachvaladistance<=11){
            sitandreach_percentile="15";
            sitandreach_recommendation="Well Below average";
            sitandreach_good="Needs improvement";
            sitandreach_user_recommendation="Very poor flexibility. Improve flexibility to regain full range of motion, perform physical activity and activities of daily living";
          }
        }
      }

  }




// partial curl up

static void aadhaCurlUp(){
  var onlyhalfcurlup = int.parse(number_of_partial_Curl_Up_test);

   if(gender=="male" || gender=="Male" || gender=="MALE"){
        if(age_number<=29){
          if(onlyhalfcurlup>=66){
            curlup_percentile="95";
            curlup_recommendation="Well Above Average";
            curlup_good="Excellent";
            curlup_user_recommendation="Excellent core strength";
          }

          else if(36<=onlyhalfcurlup && onlyhalfcurlup<=65){
            curlup_percentile="75";
            curlup_recommendation="Above Average";
            curlup_good="Very Good";
            curlup_user_recommendation="Very Good core strength";
          }

          else if(27<=onlyhalfcurlup && onlyhalfcurlup<=36){
            curlup_percentile="55";
            curlup_recommendation="Average";
            curlup_good="Good";
            curlup_user_recommendation="Good core strength";
          }

          else if(16<=onlyhalfcurlup && onlyhalfcurlup<=26){
            curlup_percentile="35";
            curlup_recommendation="Below Average";
            curlup_good="Fair";
            curlup_user_recommendation="Poor core muscle strength. Strengthen core muscles for better activity co-ordination and minimizing risk for back injury";
          }

          else if(onlyhalfcurlup<=15){
            curlup_percentile="15";
            curlup_recommendation="Well Below average";
            curlup_good="Needs improvement";
            curlup_user_recommendation="Very poor core muscle strength. Strenghten core muscles for better activity co-ordination and minimizing risk for back injury";
          }
          
        }

        else if(30<=age_number && age_number<=39){
          if(onlyhalfcurlup>=73){
             curlup_percentile="95";
            curlup_recommendation="Well Above Average";
            curlup_good="Excellent";
            curlup_user_recommendation="Excellent core strength";
          }

          else if(41<=onlyhalfcurlup && onlyhalfcurlup<=72){
            curlup_percentile="75";
            curlup_recommendation="Above Average";
            curlup_good="Very Good";
            curlup_user_recommendation="Very Good core strength";
          }

          else if(31<=onlyhalfcurlup && onlyhalfcurlup<=40){
            curlup_percentile="55";
            curlup_recommendation="Average";
            curlup_good="Good";
            curlup_user_recommendation="Good core strength";
          }

          else if(16<=onlyhalfcurlup && onlyhalfcurlup<=30){
            curlup_percentile="35";
            curlup_recommendation="Below Average";
            curlup_good="Fair";
            curlup_user_recommendation="Poor core muscle strength. Strengthen core muscles for better activity co-ordination and minimizing risk for back injury";
          }

          else if(onlyhalfcurlup<=15){
            curlup_percentile="15";
            curlup_recommendation="Well Below average";
            curlup_good="Needs improvement";
            curlup_user_recommendation="Very poor core muscle strength. Strenghten core muscles for better activity co-ordination and minimizing risk for back injury";
          }
        }

        else if(40<=age_number && age_number<=49){
          if(onlyhalfcurlup>=75){
             curlup_percentile="95";
            curlup_recommendation="Well Above Average";
            curlup_good="Excellent";
            curlup_user_recommendation="Excellent core strength";
          }

          else if(62<=onlyhalfcurlup && onlyhalfcurlup<=74){
             curlup_percentile="75";
            curlup_recommendation="Above Average";
            curlup_good="Very Good";
            curlup_user_recommendation="Very Good core strength";
          }

          else if(36<=onlyhalfcurlup && onlyhalfcurlup<=61){
            curlup_percentile="55";
            curlup_recommendation="Average";
            curlup_good="Good";
            curlup_user_recommendation="Good core strength";
          }

          else if(23<=onlyhalfcurlup && onlyhalfcurlup<=35){
            curlup_percentile="35";
            curlup_recommendation="Below Average";
            curlup_good="Fair";
            curlup_user_recommendation="Poor core muscle strength. Strengthen core muscles for better activity co-ordination and minimizing risk for back injury";
          }

          else if(onlyhalfcurlup<=22){
             curlup_percentile="15";
            curlup_recommendation="Well Below average";
            curlup_good="Needs improvement";
            curlup_user_recommendation="Very poor core muscle strength. Strenghten core muscles for better activity co-ordination and minimizing risk for back injury";
          }
        }

         else if(50<=age_number && age_number<=59){
          if(onlyhalfcurlup>=68){
            curlup_percentile="95";
            curlup_recommendation="Well Above Average";
            curlup_good="Excellent";
            curlup_user_recommendation="Excellent core strength";
          }

          else if(41<=onlyhalfcurlup && onlyhalfcurlup<=67){
          curlup_percentile="75";
            curlup_recommendation="Above Average";
            curlup_good="Very Good";
            curlup_user_recommendation="Very Good core strength";
          }

          else if(26<=onlyhalfcurlup && onlyhalfcurlup<=40){
             curlup_percentile="55";
            curlup_recommendation="Average";
            curlup_good="Good";
            curlup_user_recommendation="Good core strength";
          }

          else if(16<=onlyhalfcurlup && onlyhalfcurlup<=25){
           curlup_percentile="35";
            curlup_recommendation="Below Average";
            curlup_good="Fair";
            curlup_user_recommendation="Poor core muscle strength. Strengthen core muscles for better activity co-ordination and minimizing risk for back injury";
          }

          else if(onlyhalfcurlup<=15){
             curlup_percentile="15";
            curlup_recommendation="Well Below average";
            curlup_good="Needs improvement";
            curlup_user_recommendation="Very poor core muscle strength. Strenghten core muscles for better activity co-ordination and minimizing risk for back injury";
          }
        }

        else if(60<=age_number){
          if(onlyhalfcurlup>=44){
            curlup_percentile="95";
            curlup_recommendation="Well Above Average";
            curlup_good="Excellent";
            curlup_user_recommendation="Excellent core strength";
          }

          else if(23<=onlyhalfcurlup && onlyhalfcurlup<=43){
          curlup_percentile="75";
            curlup_recommendation="Above Average";
            curlup_good="Very Good";
            curlup_user_recommendation="Very Good core strength";
          }

          else if(13<=onlyhalfcurlup && onlyhalfcurlup<=22){
            curlup_percentile="55";
            curlup_recommendation="Average";
            curlup_good="Good";
            curlup_user_recommendation="Good core strength";
          }

          else if(6<=onlyhalfcurlup && onlyhalfcurlup<=12){
             curlup_percentile="35";
            curlup_recommendation="Below Average";
            curlup_good="Fair";
            curlup_user_recommendation="Poor core muscle strength. Strengthen core muscles for better activity co-ordination and minimizing risk for back injury";
          }

          else if(onlyhalfcurlup<=5){
             curlup_percentile="15";
            curlup_recommendation="Well Below average";
            curlup_good="Needs improvement";
            curlup_user_recommendation="Very poor core muscle strength. Strenghten core muscles for better activity co-ordination and minimizing risk for back injury";
          }
        }
      }


      else if(gender=="female" || gender=="Female" || gender=="FEMALE"){
         if(age_number<=29){
          if(onlyhalfcurlup>=64){
            curlup_percentile="95";
            curlup_recommendation="Well Above Average";
            curlup_good="Excellent";
            curlup_user_recommendation="Excellent core strength";
          }

          else if(34<=onlyhalfcurlup && onlyhalfcurlup<=63){
           curlup_percentile="75";
            curlup_recommendation="Above Average";
            curlup_good="Very Good";
            curlup_user_recommendation="Very Good core strength";
          }

          else if(24<=onlyhalfcurlup && onlyhalfcurlup<=33){
            curlup_percentile="55";
            curlup_recommendation="Average";
            curlup_good="Good";
            curlup_user_recommendation="Good core strength";
          }

          else if(15<=onlyhalfcurlup && onlyhalfcurlup<=23){
           curlup_percentile="35";
            curlup_recommendation="Below Average";
            curlup_good="Fair";
            curlup_user_recommendation="Poor core muscle strength. Strengthen core muscles for better activity co-ordination and minimizing risk for back injury";
          }

          else if(onlyhalfcurlup<=14){
             curlup_percentile="15";
            curlup_recommendation="Well Below average";
            curlup_good="Needs improvement";
            curlup_user_recommendation="Very poor core muscle strength. Strenghten core muscles for better activity co-ordination and minimizing risk for back injury";
          }
          
        }

        else if(30<=age_number && age_number<=39){
          if(onlyhalfcurlup>=49){
            curlup_percentile="95";
            curlup_recommendation="Well Above Average";
            curlup_good="Excellent";
            curlup_user_recommendation="Excellent core strength";
          }

          else if(33<=onlyhalfcurlup && onlyhalfcurlup<=48){
            curlup_percentile="75";
            curlup_recommendation="Above Average";
            curlup_good="Very Good";
            curlup_user_recommendation="Very Good core strength";
          }

          else if(18<=onlyhalfcurlup && onlyhalfcurlup<=32){
           curlup_percentile="55";
            curlup_recommendation="Average";
            curlup_good="Good";
            curlup_user_recommendation="Good core strength";
          }

          else if(12<=onlyhalfcurlup && onlyhalfcurlup<=17){
            curlup_percentile="35";
            curlup_recommendation="Below Average";
            curlup_good="Fair";
            curlup_user_recommendation="Poor core muscle strength. Strengthen core muscles for better activity co-ordination and minimizing risk for back injury";
          }

          else if(onlyhalfcurlup<=11){
             curlup_percentile="15";
            curlup_recommendation="Well Below average";
            curlup_good="Needs improvement";
            curlup_user_recommendation="Very poor core muscle strength. Strenghten core muscles for better activity co-ordination and minimizing risk for back injury";
          }
        }

        else if(40<=age_number && age_number<=49){
          if(onlyhalfcurlup>=49){
             curlup_percentile="95";
            curlup_recommendation="Well Above Average";
            curlup_good="Excellent";
            curlup_user_recommendation="Excellent core strength";
          }

          else if(31<=onlyhalfcurlup && onlyhalfcurlup<=48){
            curlup_percentile="75";
            curlup_recommendation="Above Average";
            curlup_good="Very Good";
            curlup_user_recommendation="Very Good core strength";
          }

          else if(23<=onlyhalfcurlup && onlyhalfcurlup<=30){
           curlup_percentile="55";
            curlup_recommendation="Average";
            curlup_good="Good";
            curlup_user_recommendation="Good core strength";
          }

          else if(9<=onlyhalfcurlup && onlyhalfcurlup<=22){
            curlup_percentile="35";
            curlup_recommendation="Below Average";
            curlup_good="Fair";
            curlup_user_recommendation="Poor core muscle strength. Strengthen core muscles for better activity co-ordination and minimizing risk for back injury";
          }

          else if(onlyhalfcurlup<=8){
            curlup_percentile="15";
            curlup_recommendation="Well Below average";
            curlup_good="Needs improvement";
            curlup_user_recommendation="Very poor core muscle strength. Strenghten core muscles for better activity co-ordination and minimizing risk for back injury";
          }
        }

         else if(50<=age_number && age_number<=59){
          if(onlyhalfcurlup>=39){
            curlup_percentile="95";
            curlup_recommendation="Well Above Average";
            curlup_good="Excellent";
            curlup_user_recommendation="Excellent core strength";
          }

          else if(21<=onlyhalfcurlup && onlyhalfcurlup<=38){
           curlup_percentile="75";
            curlup_recommendation="Above Average";
            curlup_good="Very Good";
            curlup_user_recommendation="Very Good core strength";
          }

          else if(6<=onlyhalfcurlup && onlyhalfcurlup<=20){
            curlup_percentile="55";
            curlup_recommendation="Average";
            curlup_good="Good";
            curlup_user_recommendation="Good core strength";
          }

          else if(2<=onlyhalfcurlup && onlyhalfcurlup<=5){
            curlup_percentile="35";
            curlup_recommendation="Below Average";
            curlup_good="Fair";
            curlup_user_recommendation="Poor core muscle strength. Strengthen core muscles for better activity co-ordination and minimizing risk for back injury";
          }

          else if(onlyhalfcurlup<=1){
             curlup_percentile="15";
            curlup_recommendation="Well Below average";
            curlup_good="Needs improvement";
            curlup_user_recommendation="Very poor core muscle strength. Strenghten core muscles for better activity co-ordination and minimizing risk for back injury";
          }
        }

        else if(age_number>=60){
          if(onlyhalfcurlup>=41){
             curlup_percentile="95";
            curlup_recommendation="Well Above Average";
            curlup_good="Excellent";
            curlup_user_recommendation="Excellent core strength";
          }

          else if(22<=onlyhalfcurlup && onlyhalfcurlup<=40){
            curlup_percentile="75";
            curlup_recommendation="Above Average";
            curlup_good="Very Good";
            curlup_user_recommendation="Very Good core strength";
          }

          else if(11<=onlyhalfcurlup && onlyhalfcurlup<=21){
             curlup_percentile="55";
            curlup_recommendation="Average";
            curlup_good="Good";
            curlup_user_recommendation="Good core strength";
          }

          else if(3<=onlyhalfcurlup && onlyhalfcurlup<=10){
            curlup_percentile="35";
            curlup_recommendation="Below Average";
            curlup_good="Fair";
            curlup_user_recommendation="Poor core muscle strength. Strengthen core muscles for better activity co-ordination and minimizing risk for back injury";
          }

          else if(onlyhalfcurlup<=2){
            curlup_percentile="15";
            curlup_recommendation="Well Below average";
            curlup_good="Needs improvement";
            curlup_user_recommendation="Very poor core muscle strength. Strenghten core muscles for better activity co-ordination and minimizing risk for back injury";
            }
        }
      }
}



// squatsss


static void squatss(){
  var squatsNumber = int.parse(squats_test);


 if(gender=="male" || gender=="Male" || gender=="MALE"){
        if(age_number<=29){
          if(squatsNumber>=34){
            squats_percentile="85";
            squats_recommendation="Well Above Average";
            squats_good="Excellent";
            squats_user_recommendation="Excellent lower body strength";
          }

          else if(31<=squatsNumber && squatsNumber<=33){
            squats_percentile="75";
            squats_recommendation="Above Average";
            squats_good="Very Good";
            sitandreach_user_recommendation="Very Good lower body strength";
          }

          else if(26<=squatsNumber && squatsNumber<=30){
            squats_percentile="60";
            squats_recommendation="Average";
            squats_good="Good";
            squats_user_recommendation="Good lower body strength";
          }

          else if(21<=squatsNumber && squatsNumber<=25){
            squats_percentile="40";
            squats_recommendation="Below Average";
            squats_good="Fair";
            squats_user_recommendation="Poor lower body strength. Strengthen lower body muscles to reduce chances of injury";
          }

          else if(squatsNumber<=20){
            squats_percentile="25";
            squats_recommendation="Well Below average";
            squats_good="Needs improvement";
            squats_user_recommendation="Very poor lower strength. Strengthen lower body muscles to reduce chances of injury";
          }
          
        }

        else if(30<=age_number && age_number<=39){
          if(squatsNumber>=32){
             squats_percentile="85";
            squats_recommendation="Well Above Average";
            squats_good="Excellent";
            squats_user_recommendation="Excellent lower body strength";
          }

          else if(28<=squatsNumber && squatsNumber<=31){
            squats_percentile="75";
            squats_recommendation="Above Average";
            squats_good="Very Good";
            sitandreach_user_recommendation="Very Good lower body strength";
          }

          else if(23<=squatsNumber && squatsNumber<=27){
            squats_percentile="60";
            squats_recommendation="Average";
            squats_good="Good";
            squats_user_recommendation="Good lower body strength";
          }

          else if(18<=squatsNumber && squatsNumber<=22){
              squats_percentile="40";
            squats_recommendation="Below Average";
            squats_good="Fair";
            squats_user_recommendation="Poor lower body strength. Strengthen lower body muscles to reduce chances of injury";
          }

          else if(squatsNumber<=17){
            squats_percentile="25";
            squats_recommendation="Well Below average";
            squats_good="Needs improvement";
            squats_user_recommendation="Very poor lower strength. Strengthen lower body muscles to reduce chances of injury";
          }
        }

        else if(40<=age_number && age_number<=49){
          if(squatsNumber>=29){
             squats_percentile="85";
            squats_recommendation="Well Above Average";
            squats_good="Excellent";
            squats_user_recommendation="Excellent lower body strength";
          }

          else if(25<=squatsNumber && squatsNumber<=28){
           squats_percentile="75";
            squats_recommendation="Above Average";
            squats_good="Very Good";
            sitandreach_user_recommendation="Very Good lower body strength";
          }

          else if(20<=squatsNumber && squatsNumber<=24){
           squats_percentile="60";
            squats_recommendation="Average";
            squats_good="Good";
            squats_user_recommendation="Good lower body strength";
          }

          else if(15<=squatsNumber && squatsNumber<=19){
              squats_percentile="40";
            squats_recommendation="Below Average";
            squats_good="Fair";
            squats_user_recommendation="Poor lower body strength. Strengthen lower body muscles to reduce chances of injury";
          }

          else if(squatsNumber<=14){
          squats_percentile="25";
            squats_recommendation="Well Below average";
            squats_good="Needs improvement";
            squats_user_recommendation="Very poor lower strength. Strengthen lower body muscles to reduce chances of injury";
          }
        }

         else if(50<=age_number && age_number<=59){
          if(squatsNumber>=26){
             squats_percentile="85";
            squats_recommendation="Well Above Average";
            squats_good="Excellent";
            squats_user_recommendation="Excellent lower body strength";
          }

          else if(23<=squatsNumber && squatsNumber<=25){
          squats_percentile="75";
            squats_recommendation="Above Average";
            squats_good="Very Good";
            sitandreach_user_recommendation="Very Good lower body strength";
          }

          else if(17<=squatsNumber && squatsNumber<=22){
             squats_percentile="60";
            squats_recommendation="Average";
            squats_good="Good";
            squats_user_recommendation="Good lower body strength";
          }

          else if(12<=squatsNumber && squatsNumber<=16){
             squats_percentile="40";
            squats_recommendation="Below Average";
            squats_good="Fair";
            squats_user_recommendation="Poor lower body strength. Strengthen lower body muscles to reduce chances of injury";
          }

          else if(squatsNumber<=11){
           squats_percentile="25";
            squats_recommendation="Well Below average";
            squats_good="Needs improvement";
            squats_user_recommendation="Very poor lower strength. Strengthen lower body muscles to reduce chances of injury";
          }
        }

        else if(60<=age_number){
          if(squatsNumber>=23){
           squats_percentile="85";
            squats_recommendation="Well Above Average";
            squats_good="Excellent";
            squats_user_recommendation="Excellent lower body strength";
          }

          else if(20<=squatsNumber && squatsNumber<=22){
          squats_percentile="75";
            squats_recommendation="Above Average";
            squats_good="Very Good";
            sitandreach_user_recommendation="Very Good lower body strength";
          }

          else if(14<=squatsNumber && squatsNumber<=19){
            squats_percentile="60";
            squats_recommendation="Average";
            squats_good="Good";
            squats_user_recommendation="Good lower body strength";
          }

          else if(9<=squatsNumber && squatsNumber<=13){
              squats_percentile="40";
            squats_recommendation="Below Average";
            squats_good="Fair";
            squats_user_recommendation="Poor lower body strength. Strengthen lower body muscles to reduce chances of injury";
          }

          else if(squatsNumber<=8){
             squats_percentile="25";
            squats_recommendation="Well Below average";
            squats_good="Needs improvement";
            squats_user_recommendation="Very poor lower strength. Strengthen lower body muscles to reduce chances of injury";
          }
        }
      }


      else if(gender=="female" || gender=="Female" || gender=="FEMALE"){
         if(age_number<=29){
          if(squatsNumber>=29){
            squats_percentile="85";
            squats_recommendation="Well Above Average";
            squats_good="Excellent";
            squats_user_recommendation="Excellent lower body strength";
          }

          else if(25<=squatsNumber && squatsNumber<=28){
          squats_percentile="75";
            squats_recommendation="Above Average";
            squats_good="Very Good";
            sitandreach_user_recommendation="Very Good lower body strength";
          }

          else if(20<=squatsNumber && squatsNumber<=24){
            squats_percentile="60";
            squats_recommendation="Average";
            squats_good="Good";
            squats_user_recommendation="Good lower body strength";
          }

          else if(15<=squatsNumber && squatsNumber<=19){
             squats_percentile="40";
            squats_recommendation="Below Average";
            squats_good="Fair";
            squats_user_recommendation="Poor lower body strength. Strengthen lower body muscles to reduce chances of injury";
          }

          else if(squatsNumber<=14){
            squats_percentile="25";
            squats_recommendation="Well Below average";
            squats_good="Needs improvement";
            squats_user_recommendation="Very poor lower strength. Strengthen lower body muscles to reduce chances of injury";
          }
          
        }

        else if(30<=age_number && age_number<=39){
          if(squatsNumber>=26){
            squats_percentile="85";
            squats_recommendation="Well Above Average";
            squats_good="Excellent";
            squats_user_recommendation="Excellent lower body strength";
          }

          else if(22<=squatsNumber && squatsNumber<=25){
             squats_percentile="75";
            squats_recommendation="Above Average";
            squats_good="Very Good";
            sitandreach_user_recommendation="Very Good lower body strength";
          }

          else if(17<=squatsNumber && squatsNumber<=21){
           squats_percentile="60";
            squats_recommendation="Average";
            squats_good="Good";
            squats_user_recommendation="Good lower body strength";
          }

          else if(12<=squatsNumber && squatsNumber<=16){
             squats_percentile="40";
            squats_recommendation="Below Average";
            squats_good="Fair";
            squats_user_recommendation="Poor lower body strength. Strengthen lower body muscles to reduce chances of injury";
          }

          else if(squatsNumber<=11){
           squats_percentile="25";
            squats_recommendation="Well Below average";
            squats_good="Needs improvement";
            squats_user_recommendation="Very poor lower strength. Strengthen lower body muscles to reduce chances of injury";
          }
        }

        else if(40<=age_number && age_number<=49){
          if(squatsNumber>=23){
             squats_percentile="85";
            squats_recommendation="Well Above Average";
            squats_good="Excellent";
            squats_user_recommendation="Excellent lower body strength";
          }

          else if(20<=squatsNumber && squatsNumber<=22){
            squats_percentile="75";
            squats_recommendation="Above Average";
            squats_good="Very Good";
            sitandreach_user_recommendation="Very Good lower body strength";
          }

          else if(14<=squatsNumber && squatsNumber<=19){
          squats_percentile="60";
            squats_recommendation="Average";
            squats_good="Good";
            squats_user_recommendation="Good lower body strength";
          }

          else if(9<=squatsNumber && squatsNumber<=13){
              squats_percentile="40";
            squats_recommendation="Below Average";
            squats_good="Fair";
            squats_user_recommendation="Poor lower body strength. Strengthen lower body muscles to reduce chances of injury";
          }

          else if(squatsNumber<=8){
            squats_percentile="25";
            squats_recommendation="Well Below average";
            squats_good="Needs improvement";
            squats_user_recommendation="Very poor lower strength. Strengthen lower body muscles to reduce chances of injury";
          }
        }

         else if(50<=age_number && age_number<=59){
          if(squatsNumber>=20){
            squats_percentile="85";
            squats_recommendation="Well Above Average";
            squats_good="Excellent";
            squats_user_recommendation="Excellent lower body strength";
          }

          else if(17<=squatsNumber && squatsNumber<=19){
           squats_percentile="75";
            squats_recommendation="Above Average";
            squats_good="Very Good";
            sitandreach_user_recommendation="Very Good lower body strength";
          }

          else if(12<=squatsNumber && squatsNumber<=16){
           squats_percentile="60";
            squats_recommendation="Average";
            squats_good="Good";
            squats_user_recommendation="Good lower body strength";
          }

          else if(6<=squatsNumber && squatsNumber<=10){
             squats_percentile="40";
            squats_recommendation="Below Average";
            squats_good="Fair";
            squats_user_recommendation="Poor lower body strength. Strengthen lower body muscles to reduce chances of injury";
          }

          else if(squatsNumber<=5){
             squats_percentile="25";
            squats_recommendation="Well Below average";
            squats_good="Needs improvement";
            squats_user_recommendation="Very poor lower strength. Strengthen lower body muscles to reduce chances of injury";
          }
        }

        else if(age_number>=60){
          if(squatsNumber>=17){
             squats_percentile="85";
            squats_recommendation="Well Above Average";
            squats_good="Excellent";
            squats_user_recommendation="Excellent lower body strength";
          }

          else if(14<=squatsNumber && squatsNumber<=16){
           squats_percentile="75";
            squats_recommendation="Above Average";
            squats_good="Very Good";
            sitandreach_user_recommendation="Very Good lower body strength";
          }

          else if(8<=squatsNumber && squatsNumber<=13){
             squats_percentile="60";
            squats_recommendation="Average";
            squats_good="Good";
            squats_user_recommendation="Good lower body strength";
          }

          else if(3<=squatsNumber && squatsNumber<=7){
              squats_percentile="40";
            squats_recommendation="Below Average";
            squats_good="Fair";
            squats_user_recommendation="Poor lower body strength. Strengthen lower body muscles to reduce chances of injury";
          }

          else if(squatsNumber<=2){
           squats_percentile="25";
            squats_recommendation="Well Below average";
            squats_good="Needs improvement";
            squats_user_recommendation="Very poor lower strength. Strengthen lower body muscles to reduce chances of injury";
            }
        }
      }
}





// left leg right leg
// single leg balance test

static void singleLegBalance(){
  var legblancing= int.parse(left_leg_eye_open_test);
  var legbalancingleftclosed=int.parse(left_eye_closed_test);
  var legbalancingrightclosed=int.parse(right_eye_closed_test);
  var legbalancingrightopen=int.parse(right_eye_open_test);

  if(gender=="male" || gender=="Male" || gender=="MALE"){
    if(age_number<=39){
      if(legblancing>=44.4){
         lefteyeclosed_percentile="100";
            lefteyeclosed_good="Excellent";
            lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(41<=legblancing && legblancing<44.4){
        lefteyeclosed_percentile="80";
            lefteyeclosed_good="Above average";
            lefteyeclosed_user_recommendation="Good balance";
      }

      else if(35<=legblancing && legblancing<41){
        lefteyeclosed_percentile="60";
            lefteyeclosed_good="Average";
            lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(29<=legblancing && legblancing<35){
        lefteyeclosed_percentile="40";
            lefteyeclosed_good="Below average";
            lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living/falls";
      }

      else if(25<=legblancing && legblancing<29){
        lefteyeclosed_percentile="20";
            lefteyeclosed_good="Poor";
            lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living/falls";
      }

      else if(legblancing<25){
        lefteyeclosed_percentile="10";
            lefteyeclosed_good="Very poor";
            lefteyeclosed_user_recommendation="Very poor balance. Improve balance/ proprioception for reducing any injury risk from activities of daily living/falls";
      }


        if(legbalancingrightopen>=44.4){
         righteyeopen_percentile="100";
            righteyeopen_good="Excellent";
            righteyeopen_user_recommendation="Very good balance";
      }

      else if(41<=legbalancingrightopen && legbalancingrightopen<44.4){
        righteyeopen_percentile="80";
            righteyeopen_good="Above average";
            righteyeopen_user_recommendation="Good balance";
      }

      else if(35<=legbalancingrightopen && legbalancingrightopen<41){
        righteyeopen_percentile="60";
            righteyeopen_good="Average";
            righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(29<=legbalancingrightopen && legbalancingrightopen<35){
        righteyeopen_percentile="40";
            righteyeopen_good="Below average";
            righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living/falls";
      }

      else if(25<=legbalancingrightopen && legbalancingrightopen<29){
        righteyeopen_percentile="20";
            righteyeopen_good="Poor";
            righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living/falls";
      }

      else if(legbalancingrightopen<25){
        righteyeopen_percentile="10";
            righteyeopen_good="Very poor";
            lefteyeopen_user_recommendation="Very poor balance. Improve balance/ proprioception for reducing any injury risk from activities of daily living/falls";
      }



      
        if(legbalancingleftclosed>=16.9){
         lefteyeclosed_percentile="100";
            lefteyeclosed_good="Excellent";
            lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(12<=legbalancingleftclosed && legbalancingleftclosed<16.9){
        lefteyeclosed_percentile="80";
            lefteyeclosed_good="Above average";
            lefteyeclosed_user_recommendation="Good balance";
      }

      else if(8<=legbalancingleftclosed && legbalancingleftclosed<12){
        lefteyeclosed_percentile="60";
            lefteyeclosed_good="Average";
            lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(5<=legbalancingleftclosed && legbalancingleftclosed<8){
        lefteyeclosed_percentile="40";
            lefteyeclosed_good="Below average";
            lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living/falls";
      }

      else if(2<=legbalancingleftclosed && legbalancingleftclosed<5){
        lefteyeclosed_percentile="20";
            lefteyeclosed_good="Poor";
            lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living/falls";
      }

      else if(legbalancingleftclosed<2){
        lefteyeclosed_percentile="10";
            lefteyeclosed_good="Very poor";
            lefteyeclosed_user_recommendation="Very poor balance. Improve balance/ proprioception for reducing any injury risk from activities of daily living/falls";
      }

       if(legbalancingrightclosed>=16.9){
         righteyeclosed_percentile="100";
            righteyeclosed_good="Excellent";
            righteyeclosed_user_recommendation="Very good balance";
      }

      else if(12<=legbalancingrightclosed && legbalancingrightclosed<16.9){
        righteyeclosed_percentile="80";
            righteyeclosed_good="Above average";
            righteyeclosed_user_recommendation="Good balance";
      }

      else if(8<=legbalancingrightclosed && legbalancingrightclosed<12){
        righteyeclosed_percentile="60";
            righteyeclosed_good="Average";
            righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(5<=legbalancingrightclosed && legbalancingrightclosed<8){
        righteyeclosed_percentile="40";
            righteyeclosed_good="Below average";
            righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living/falls";
      }

      else if(2<=legbalancingrightclosed && legbalancingrightclosed<5){
        righteyeclosed_percentile="20";
            righteyeclosed_good="Poor";
            righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living/falls";
      }

      else if(legbalancingrightclosed<2){
        righteyeclosed_percentile="10";
            righteyeclosed_good="Very poor";
            righteyeclosed_user_recommendation="Very poor balance. Improve balance/ proprioception for reducing any injury risk from activities of daily living/falls";
      }

    }

    else if(40<=age_number && age_number<=49){
      if(legblancing>=41.6){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(35<=legblancing && legblancing<41.6){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(29<=legblancing && legblancing<35){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(25<=legblancing && legblancing<29){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(21<=legblancing && legblancing<25){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<21){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=41.6){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(35<=legbalancingrightopen && legbalancingrightopen<41.6){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(29<=legbalancingrightopen && legbalancingrightopen<35){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(25<=legbalancingrightopen && legbalancingrightopen<29){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(21<=legbalancingrightopen && legbalancingrightopen<25){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<21){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightclosed>=12){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(8<=legbalancingrightclosed && legbalancingrightclosed<12){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(6<=legbalancingrightclosed && legbalancingrightclosed<8){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(4<=legbalancingrightclosed && legbalancingrightclosed<6){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(2<=legbalancingrightclosed && legbalancingrightclosed<4){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<2){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingleftclosed>=12){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(8<=legbalancingleftclosed && legbalancingleftclosed<12){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Above average";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(6<=legbalancingleftclosed && legbalancingleftclosed<8){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(4<=legbalancingleftclosed && legbalancingleftclosed<6){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(2<=legbalancingleftclosed && legbalancingleftclosed<4){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<2){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

  }

  else if(50<=age_number && age_number<=59){
    if(legblancing>=41.5){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(34<=legblancing && legblancing<41.5){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(28<=legblancing && legblancing<34){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(24<=legblancing && legblancing<28){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(20<=legblancing && legblancing<24){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<20){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=41.5){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(34<=legbalancingrightopen && legbalancingrightopen<41.5){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(28<=legbalancingrightopen && legbalancingrightopen<34){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(24<=legbalancingrightopen && legbalancingrightopen<28){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(20<=legbalancingrightopen && legbalancingrightopen<24){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<20){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

       if(legbalancingleftclosed>=8.6){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(7<=legbalancingleftclosed && legbalancingleftclosed<8.6){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Above average";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(5<=legbalancingleftclosed && legbalancingleftclosed<7){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(4<=legbalancingleftclosed && legbalancingleftclosed<5){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(2<=legbalancingleftclosed && legbalancingleftclosed<4){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<2){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingrightclosed>=8.6){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(7<=legbalancingrightclosed && legbalancingrightclosed<8.6){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(5<=legbalancingrightclosed && legbalancingrightclosed<7){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(4<=legbalancingrightclosed && legbalancingrightclosed<5){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(2<=legbalancingrightclosed && legbalancingrightclosed<4){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<2){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }
  }


  else if(60<=age_number && age_number<=69){
       if(legblancing>=33.8){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(29<=legblancing && legblancing<33.8){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(25<=legblancing && legblancing<29){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(21<=legblancing && legblancing<25){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(17<=legblancing && legblancing<21){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<17){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=33.8){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(29<=legbalancingrightopen && legbalancingrightopen<33.8){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(25<=legbalancingrightopen && legbalancingrightopen<29){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(21<=legbalancingrightopen && legbalancingrightopen<25){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(17<=legbalancingrightopen && legbalancingrightopen<21){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<17){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }



      if(legbalancingleftclosed>=5.1){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(4.2<=legbalancingleftclosed && legbalancingleftclosed<5.1){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Above average";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(3.5<=legbalancingleftclosed && legbalancingleftclosed<4.2){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(2.7<=legbalancingleftclosed && legbalancingleftclosed<3.5){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(2<=legbalancingleftclosed && legbalancingleftclosed<2.7){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<2){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingrightclosed>=5.1){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(4.2<=legbalancingrightclosed && legbalancingrightclosed<5.1){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(3.5<=legbalancingrightclosed && legbalancingrightclosed<4.2){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(2.7<=legbalancingrightclosed && legbalancingrightclosed<3.5){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(2<=legbalancingrightclosed && legbalancingrightclosed<2.7){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<2){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }
  }




  if(70<=age_number && age_number<=79){
         if(legblancing>=25.9){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(22<=legblancing && legblancing<25.9){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(18<=legblancing && legblancing<22){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(14<=legblancing && legblancing<18){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(10<=legblancing && legblancing<14){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<10){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=25.9){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(22<=legbalancingrightopen && legbalancingrightopen<25.9){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(18<=legbalancingrightopen && legbalancingrightopen<22){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(14<=legbalancingrightopen && legbalancingrightopen<18){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(10<=legbalancingrightopen && legbalancingrightopen<14){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<10){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }



      
      if(legbalancingleftclosed>=2.6){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(2<=legbalancingleftclosed && legbalancingleftclosed<2.6){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Above average";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(1.5<=legbalancingleftclosed && legbalancingleftclosed<2){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(1<=legbalancingleftclosed && legbalancingleftclosed<1.5){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(0.5<=legbalancingleftclosed && legbalancingleftclosed<1){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<0.5){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingrightclosed>=2.6){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(2<=legbalancingrightclosed && legbalancingrightclosed<2.6){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(1.5<=legbalancingrightclosed && legbalancingrightclosed<2){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(1<=legbalancingrightclosed && legbalancingrightclosed<1.5){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(0.5<=legbalancingrightclosed && legbalancingrightclosed<1){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<0.5){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

  }


  else if(age_number>=80){

       if(legblancing>=8.7){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(7.6<=legblancing && legblancing<8.7){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(6.5<=legblancing && legblancing<7.6){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(5.4<=legblancing && legblancing<6.5){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(3.2<=legblancing && legblancing<5.4){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<3.2){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=8.7){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(7.6<=legbalancingrightopen && legbalancingrightopen<8.7){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(6.5<=legbalancingrightopen && legbalancingrightopen<7.6){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(5.4<=legbalancingrightopen && legbalancingrightopen<6.5){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(3.2<=legbalancingrightopen && legbalancingrightopen<5.4){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<3.2){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }



      
      if(legbalancingleftclosed>=1.8){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(1.5<=legbalancingleftclosed && legbalancingleftclosed<1.8){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Very good";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(1<=legbalancingleftclosed && legbalancingleftclosed<1.5){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(0.6<=legbalancingleftclosed && legbalancingleftclosed<1){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(0.3<=legbalancingleftclosed && legbalancingleftclosed<0.6){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<0.3){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingrightclosed>=1.8){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(1.5<=legbalancingrightclosed && legbalancingrightclosed<1.8){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(1<=legbalancingrightclosed && legbalancingrightclosed<1.5){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(0.6<=legbalancingrightclosed && legbalancingrightclosed<1){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(0.3<=legbalancingrightclosed && legbalancingrightclosed<0.6){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<0.3){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

  }

  }


   if(gender=="female" || gender=="Female" || gender=="FEMALE"){
        if(age_number<=39){
            if(legblancing>=45.1){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(42.1<=legblancing && legblancing<45.1){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(40.9<=legblancing && legblancing<42.1){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(35.5<=legblancing && legblancing<40.9){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(28<=legblancing && legblancing<35.5){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<28){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=45.1){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(42.1<=legbalancingrightopen && legbalancingrightopen<45.1){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(40.9<=legbalancingrightopen && legbalancingrightopen<42.1){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(35.5<=legbalancingrightopen && legbalancingrightopen<40.9){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(28<=legbalancingrightopen && legbalancingrightopen<35.5){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<28){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }



      
      if(legbalancingleftclosed>=13.1){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(11<=legbalancingleftclosed && legbalancingleftclosed<13.1){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Very good";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(9<=legbalancingleftclosed && legbalancingleftclosed<11){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(8<=legbalancingleftclosed && legbalancingleftclosed<9){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(7<=legbalancingleftclosed && legbalancingleftclosed<8){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<7){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingrightclosed>=13.1){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(11<=legbalancingrightclosed && legbalancingrightclosed<13.1){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(9<=legbalancingrightclosed && legbalancingrightclosed<11){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(8<=legbalancingrightclosed && legbalancingrightclosed<9){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(7<=legbalancingrightclosed && legbalancingrightclosed<8){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<7){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

        }



        else if(40<=age_number && age_number<=49){
            
            if(legblancing>=42.1){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(40<=legblancing && legblancing<42.1){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(35<=legblancing && legblancing<40){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(30<=legblancing && legblancing<35){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(25<=legblancing && legblancing<30){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<25){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=42.1){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(40<=legbalancingrightopen && legbalancingrightopen<42.1){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(35<=legbalancingrightopen && legbalancingrightopen<40){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(30<=legbalancingrightopen && legbalancingrightopen<35){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(25<=legbalancingrightopen && legbalancingrightopen<30){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<25){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }



      
      if(legbalancingleftclosed>=13.5){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(12<=legbalancingleftclosed && legbalancingleftclosed<13.5){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Very good";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(10<=legbalancingleftclosed && legbalancingleftclosed<12){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(9<=legbalancingleftclosed && legbalancingleftclosed<10){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(8<=legbalancingleftclosed && legbalancingleftclosed<9){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<8){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingrightclosed>=13.5){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(12<=legbalancingrightclosed && legbalancingrightclosed<13.5){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(10<=legbalancingrightclosed && legbalancingrightclosed<12){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(9<=legbalancingrightclosed && legbalancingrightclosed<10){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(8<=legbalancingrightclosed && legbalancingrightclosed<9){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<8){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      
        }
                 }   






        if(50<=age_number && age_number<=59){
                 if(legblancing>=40.9){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(35<=legblancing && legblancing<40.9){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(30<=legblancing && legblancing<35){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(25<=legblancing && legblancing<30){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(20<=legblancing && legblancing<25){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<20){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=40.9){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(35<=legbalancingrightopen && legbalancingrightopen<40.9){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(30<=legbalancingrightopen && legbalancingrightopen<35){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(25<=legbalancingrightopen && legbalancingrightopen<30){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(20<=legbalancingrightopen && legbalancingrightopen<25){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<20){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }



      
      if(legbalancingleftclosed>=7.9){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(6.5<=legbalancingleftclosed && legbalancingleftclosed<7.9){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Very good";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(5.6<=legbalancingleftclosed && legbalancingleftclosed<6.5){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(4<=legbalancingleftclosed && legbalancingleftclosed<5.6){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(2<=legbalancingleftclosed && legbalancingleftclosed<4){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<2){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingrightclosed>=7.9){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(6.5<=legbalancingrightclosed && legbalancingrightclosed<7.9){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(5.6<=legbalancingrightclosed && legbalancingrightclosed<6.5){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(4<=legbalancingrightclosed && legbalancingrightclosed<5.6){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(2<=legbalancingrightclosed && legbalancingrightclosed<4){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<2){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

        }



        if(60<=age_number && age_number<=69){
                         if(legblancing>=30.4){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(25<=legblancing && legblancing<30.4){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(21<=legblancing && legblancing<25){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(18<=legblancing && legblancing<21){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(15<=legblancing && legblancing<18){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<15){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=30.4){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(25<=legbalancingrightopen && legbalancingrightopen<30.4){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(21<=legbalancingrightopen && legbalancingrightopen<25){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(18<=legbalancingrightopen && legbalancingrightopen<21){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(15<=legbalancingrightopen && legbalancingrightopen<18){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<15){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }



      
      if(legbalancingleftclosed>=3.6){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(3.1<=legbalancingleftclosed && legbalancingleftclosed<3.6){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Very good";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(2.7<=legbalancingleftclosed && legbalancingleftclosed<3.1){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(2<=legbalancingleftclosed && legbalancingleftclosed<2.7){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(1.5<=legbalancingleftclosed && legbalancingleftclosed<2){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<1.5){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingrightclosed>=3.6){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(3.1<=legbalancingrightclosed && legbalancingrightclosed<3.6){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(2.7<=legbalancingrightclosed && legbalancingrightclosed<3.1){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(2<=legbalancingrightclosed && legbalancingrightclosed<2.7){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(1.5<=legbalancingrightclosed && legbalancingrightclosed<2){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<1.5){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }
        }


        if(70<=age_number && age_number<=79){
                             if(legblancing>=16.7){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(14<=legblancing && legblancing<16.7){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(12<=legblancing && legblancing<14){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(10<=legblancing && legblancing<12){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(8<=legblancing && legblancing<10){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<8){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=16.7){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(14<=legbalancingrightopen && legbalancingrightopen<16.7){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(12<=legbalancingrightopen && legbalancingrightopen<14){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(10<=legbalancingrightopen && legbalancingrightopen<12){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(8<=legbalancingrightopen && legbalancingrightopen<10){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<8){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }



      
      if(legbalancingleftclosed>=3.7){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(2.5<=legbalancingleftclosed && legbalancingleftclosed<3.7){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Very good";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(1.8<=legbalancingleftclosed && legbalancingleftclosed<2.5){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(1.2<=legbalancingleftclosed && legbalancingleftclosed<1.8){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(0.6<=legbalancingleftclosed && legbalancingleftclosed<1.2){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<0.6){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingrightclosed>=3.7){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(2.5<=legbalancingrightclosed && legbalancingrightclosed<3.7){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(1.8<=legbalancingrightclosed && legbalancingrightclosed<2.5){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(1.2<=legbalancingrightclosed && legbalancingrightclosed<1.8){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(0.6<=legbalancingrightclosed && legbalancingrightclosed<1.2){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<0.6){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


        }

     if(age_number>=80){
      if(legblancing>=10.6){
          lefteyeopen_percentile="100";
          lefteyeopen_good="Excellent";
          lefteyeopen_user_recommendation="Very good balance";
      }

      else if(8.4<=legblancing && legblancing<10.6){
         lefteyeopen_percentile="80";
          lefteyeopen_good="Above average";
          lefteyeopen_user_recommendation="Good balance";
      }

      else if(6.2<=legblancing && legblancing<8.4){
         lefteyeopen_percentile="60";
          lefteyeopen_good="Average";
          lefteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(4<=legblancing && legblancing<6.2){
         lefteyeopen_percentile="40";
          lefteyeopen_good="Below average";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(2<=legblancing && legblancing<4){
         lefteyeopen_percentile="20";
          lefteyeopen_good="Poor";
          lefteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legblancing<2){
         lefteyeopen_percentile="10";
          lefteyeopen_good="Very poor";
          lefteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }

      if(legbalancingrightopen>=10.6){
          righteyeopen_percentile="100";
          righteyeopen_good="Excellent";
          righteyeopen_user_recommendation="Very good balance";
      }

      else if(8.4<=legbalancingrightopen && legbalancingrightopen<10.6){
         righteyeopen_percentile="80";
          righteyeopen_good="Above average";
          righteyeopen_user_recommendation="Good balance";
      }

      else if(6.2<=legbalancingrightopen && legbalancingrightopen<8.4){
         righteyeopen_percentile="60";
          righteyeopen_good="Average";
          righteyeopen_user_recommendation="Good balance but needs improvement";
      }

      else if(4<=legbalancingrightopen && legbalancingrightopen<6.2){
         righteyeopen_percentile="40";
          righteyeopen_good="Below average";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(2<=legbalancingrightopen && legbalancingrightopen<4){
         righteyeopen_percentile="20";
          righteyeopen_good="Poor";
          righteyeopen_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightopen<2){
         righteyeopen_percentile="10";
          righteyeopen_good="Very poor";
          righteyeopen_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }



      
      if(legbalancingleftclosed>=2.1){
          lefteyeclosed_percentile="100";
          lefteyeclosed_good="Excellent";
          lefteyeclosed_user_recommendation="Very good balance";
      }

      else if(1.7<=legbalancingleftclosed && legbalancingleftclosed<2.1){
         lefteyeclosed_percentile="80";
          lefteyeclosed_good="Very good";
          lefteyeclosed_user_recommendation="Good balance";
      }

      else if(1.2<=legbalancingleftclosed && legbalancingleftclosed<1.7){
         lefteyeclosed_percentile="60";
          lefteyeclosed_good="Average";
          lefteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(0.8<=legbalancingleftclosed && legbalancingleftclosed<1.2){
         lefteyeclosed_percentile="40";
          lefteyeclosed_good="Below average";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(0.4<=legbalancingleftclosed && legbalancingleftclosed<0.8){
         lefteyeclosed_percentile="20";
          lefteyeclosed_good="Poor";
          lefteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingleftclosed<0.4){
         lefteyeclosed_percentile="10";
          lefteyeclosed_good="Very poor";
          lefteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


       if(legbalancingrightclosed>=2.1){
          righteyeclosed_percentile="100";
          righteyeclosed_good="Excellent";
          righteyeclosed_user_recommendation="Very good balance";
      }

      else if(1.7<=legbalancingrightclosed && legbalancingrightclosed<2.1){
         righteyeclosed_percentile="80";
          righteyeclosed_good="Above average";
          righteyeclosed_user_recommendation="Good balance";
      }

      else if(1.2<=legbalancingrightclosed && legbalancingrightclosed<1.7){
         righteyeclosed_percentile="60";
          righteyeclosed_good="Average";
          righteyeclosed_user_recommendation="Good balance but needs improvement";
      }

      else if(0.8<=legbalancingrightclosed && legbalancingrightclosed<1.2){
         righteyeclosed_percentile="40";
          righteyeclosed_good="Below average";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(0.4<=legbalancingrightclosed && legbalancingrightclosed<0.8){
         righteyeclosed_percentile="20";
          righteyeclosed_good="Poor";
          righteyeclosed_user_recommendation="Poor balance. Improve balance for reducing any injury risk from activities of daily living / falls";
      }

      else if(legbalancingrightclosed<0.4){
         righteyeclosed_percentile="10";
          righteyeclosed_good="Very poor";
          righteyeclosed_user_recommendation="Very poor balance. Improve balance/proprioception for reducing any injury risk from activities of daily living/falls.";
      }


     }   

                 
                       
             }
}





  void initState() {
    //BMI();
    print("we are in init");
    // print(Distance of sit and_reach_test+"?");
    //print(left_eye_closed_test+"left leg");
    // TODO: implement initState
    //super.initState();
  }

  @override
  _DisplayValuesState createState() => _DisplayValuesState();
}

class _DisplayValuesState extends State<DisplayValues> {
  void initState() {
    FetchReportDataState.fetchData();
    DisplayValues.BMI();
    DisplayValues.waistToHip();
    DisplayValues.pushUp();
    DisplayValues.sitAndReach();
    DisplayValues.aadhaCurlUp();
    // DisplayValues.squatss();
    DisplayValues.singleLegBalance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: const Text("Report"),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Container(
                
                  width: size.width*0.95,
                padding: EdgeInsets.all(15),
                //  margin: EdgeInsets.all(15),
                //  color: Colors.grey[200],
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Body Mass Index",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Result',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      bmi_result,
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Container(
                width: size.width*0.95,
                padding: EdgeInsets.all(15),
                //  margin: EdgeInsets.all(15),
                //  color: Colors.grey[200],
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                   //   crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Waist-to-hip Ratio",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   'Percentile',
                        //   style: TextStyle(
                        //       color: Colors.black,
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.bold),
                        // ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        // LinearPercentIndicator(
                        //   width: MediaQuery.of(context).size.width * 0.45,
                        //   animation: true,
                        //   lineHeight: 20.0,
                        //   animationDuration: 5000,
                        //   percent: 0.9,
                        //   center: const Text(
                        //     "90.0%",
                        //     style: TextStyle(fontSize: 13),
                        //   ),
                        //   linearStrokeCap: LinearStrokeCap.roundAll,
                        //   progressColor: Colors.green,
                        //   backgroundColor: Colors.grey,
                        // ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Result',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          waist_to_hip_recommendation,
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        // Text(
                        //   'Recommendation',
                        //   style: TextStyle(
                        //       color: Colors.black,
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.bold),
                        // ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        // Text(
                        //   waist_to_hip_recommendation,
                        //   style: TextStyle(color: Colors.black, fontSize: 13),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),




            // Padding(
            //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            //   child: Container(
            //     padding: EdgeInsets.all(15),
            //     //  margin: EdgeInsets.all(15),
            //     //  color: Colors.grey[200],
            //     decoration: BoxDecoration(
            //       color: Colors.grey[200],
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Column(
            //       //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             const Text(
            //               "Balance (Eyes Open)",
            //               style: TextStyle(
            //                   fontSize: 17,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.black),
            //             ),
            //           ],
            //         ),
            //         SizedBox(height: 15),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Percentile',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             LinearPercentIndicator(
            //               width: MediaQuery.of(context).size.width * 0.45,
            //               animation: true,
            //               lineHeight: 20.0,
            //               animationDuration: 5000,
            //               percent: 0.9,
            //               center: const Text(
            //                 "90.0%",
            //                 style: TextStyle(fontSize: 13),
            //               ),
            //               linearStrokeCap: LinearStrokeCap.roundAll,
            //               progressColor: Colors.green,
            //               backgroundColor: Colors.grey,
            //             ),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             Text(
            //               'Result',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Good',
            //               style: TextStyle(color: Colors.black, fontSize: 13),
            //             ),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             Text(
            //               'Recommendation',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Work hard',
            //               style: TextStyle(color: Colors.black, fontSize: 13),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),



            // Padding(
            //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            //   child: Container(
            //     padding: EdgeInsets.all(15),
            //     //  margin: EdgeInsets.all(15),
            //     //  color: Colors.grey[200],
            //     decoration: BoxDecoration(
            //       color: Colors.grey[200],
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Column(
            //       //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             const Text(
            //               "Balance (Eyes Closed)",
            //               style: TextStyle(
            //                   fontSize: 17,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.black),
            //             ),
            //           ],
            //         ),
            //         SizedBox(height: 15),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Percentile',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             LinearPercentIndicator(
            //               width: MediaQuery.of(context).size.width * 0.45,
            //               animation: true,
            //               lineHeight: 20.0,
            //               animationDuration: 5000,
            //               percent: 0.9,
            //               center: const Text(
            //                 "90.0%",
            //                 style: TextStyle(fontSize: 13),
            //               ),
            //               linearStrokeCap: LinearStrokeCap.roundAll,
            //               progressColor: Colors.green,
            //               backgroundColor: Colors.grey,
            //             ),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             Text(
            //               'Result',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Good',
            //               style: TextStyle(color: Colors.black, fontSize: 13),
            //             ),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             Text(
            //               'Recommendation',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Work hard',
            //               style: TextStyle(color: Colors.black, fontSize: 13),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),




            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Container(
                padding: EdgeInsets.all(15),
                //  margin: EdgeInsets.all(15),
                //  color: Colors.grey[200],
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Flexibilty",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Percentile',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width * 0.45,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 5000,
                          percent: (int.parse(sitandreach_percentile))/100,
                          center:  Text(
                           sitandreach_percentile+"%",
                            style: TextStyle(fontSize: 13),
                          ),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.green,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Result',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          sitandreach_good,
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Recommendation',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          sitandreach_user_recommendation,
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
             child: Container(
                padding: EdgeInsets.all(15),
                //  margin: EdgeInsets.all(15),
                //  color: Colors.grey[200],
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Push Ups",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Percentile',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width * 0.45,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 5000,
                          percent: (int.parse(pushup_percentile))/100,
                          center: Text(
                            pushup_percentile+"%",
                            style: TextStyle(fontSize: 13),
                          ),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.green,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Result',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          pushup_good_recommendation,
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Recommendation',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          pushup_user_recommendation,
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),







            // Padding(
            //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            //  child: Container(
            //     padding: EdgeInsets.all(15),
            //     //  margin: EdgeInsets.all(15),
            //     //  color: Colors.grey[200],
            //     decoration: BoxDecoration(
            //       color: Colors.grey[200],
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Column(
            //       //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             const Text(
            //               "Squats",
            //               style: TextStyle(
            //                   fontSize: 17,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.black),
            //             ),
            //           ],
            //         ),
            //         SizedBox(height: 15),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Percentile',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             LinearPercentIndicator(
            //               width: MediaQuery.of(context).size.width * 0.45,
            //               animation: true,
            //               lineHeight: 20.0,
            //               animationDuration: 5000,
            //               percent: (int.parse(squats_percentile))/100,
            //               center: Text(
            //                 squats_percentile+"%",
            //                 style: TextStyle(fontSize: 13),
            //               ),
            //               linearStrokeCap: LinearStrokeCap.roundAll,
            //               progressColor: Colors.green,
            //               backgroundColor: Colors.grey,
            //             ),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             Text(
            //               'Result',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               "squats_good",
            //               style: TextStyle(color: Colors.black, fontSize: 13),
            //             ),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             Text(
            //               'Recommendation',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //              " squats_user_recommendation",
            //               style: TextStyle(color: Colors.black, fontSize: 13),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),





            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
             child: Container(
                padding: EdgeInsets.all(15),
                //  margin: EdgeInsets.all(15),
                //  color: Colors.grey[200],
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Partial Curl Ups",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Percentile',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width * 0.45,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 5000,
                          percent: (int.parse(curlup_percentile))/100,
                          center: Text(
                            curlup_percentile+"%",
                            style: TextStyle(fontSize: 13),
                          ),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.green,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Result',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          curlup_good,
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Recommendation',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          curlup_user_recommendation,
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),






            
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            // child: Container(
            //     padding: EdgeInsets.all(15),
            //     //  margin: EdgeInsets.all(15),
            //     //  color: Colors.grey[200],
            //     decoration: BoxDecoration(
            //       color: Colors.grey[200],
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Column(
            //       //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             const Text(
            //               "12 Min Walk Test",
            //               style: TextStyle(
            //                   fontSize: 17,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.black),
            //             ),
            //           ],
            //         ),
            //         SizedBox(height: 15),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Percentile',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             LinearPercentIndicator(
            //               width: MediaQuery.of(context).size.width * 0.45,
            //               animation: true,
            //               lineHeight: 20.0,
            //               animationDuration: 5000,
            //               percent: 0.9,
            //               center: const Text(
            //                 "90.0%",
            //                 style: TextStyle(fontSize: 13),
            //               ),
            //               linearStrokeCap: LinearStrokeCap.roundAll,
            //               progressColor: Colors.green,
            //               backgroundColor: Colors.grey,
            //             ),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             Text(
            //               'Result',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Good',
            //               style: TextStyle(color: Colors.black, fontSize: 13),
            //             ),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             Text(
            //               'Recommendation',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Work hard',
            //               style: TextStyle(color: Colors.black, fontSize: 13),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

 
 
 
 
// class ReportClass extends StatefulWidget {
//   const ReportClass({ Key? key }) : super(key: key);

//   @override
//   _ReportClassState createState() => _ReportClassState();
// }

// class _ReportClassState extends State<ReportClass> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//         // Text(a.toString()),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:js';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fitegrate_project/screens/Getting_started.dart';
// import 'package:fitegrate_project/screens/bottom_navigation.dart';
// import 'package:fitegrate_project/screens/dashboard.dart';
// import 'package:fitegrate_project/screens/sign_in.dart';

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// //import 'dashboard.dart';
// int flag=0;

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: StreamBuilder(
//             stream: FirebaseAuth.instance.authStateChanges(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Center(child: CircularProgressIndicator());
//               } else if (snapshot.hasData) {
//                 Future checkGettingStartedSeen(BuildContext context) async {
//                   SharedPreferences prefs =
//                       await SharedPreferences.getInstance();
//                   bool _seen = (prefs.getBool('seen') ?? false);

                

//                   if (_seen) {
//                     flag=1;
//                    // return DashBoard();
//                   } else {
//                     await prefs.setBool('seen', true);
//                     //return GetStarted();
//                   }

                 
//                 }

//                 if(flag==0)
//                   return GetStarted();
//                 else
//                   return DashBoard();
//               } else if (snapshot.hasError) {
//                 return Center(child: Text('Something Went Wrong!'));
//               } else {
//                 return SignIn();
//               }
//             }));
//   }
// }

// // Future<void> checkGettingStartedSeen(BuildContext context) async {
// //   SharedPreferences prefs = await SharedPreferences.getInstance();
// //   bool _seen = (prefs.getBool('seen') ?? false);

// //   if (_seen) {
// //     Navigator.of(context).pushReplacement(
// //         new MaterialPageRoute(builder: (context) => new DashBoard()));
// //   } else {
// //     await prefs.setBool('seen', true);
// //     Navigator.of(context).pushReplacement(
// //         new MaterialPageRoute(builder: (context) => new GetStarted()));
// //   }
// // }