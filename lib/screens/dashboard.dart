import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitegrate_project/screens/Getting_started.dart';
import 'package:fitegrate_project/screens/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

   var age_1="";
   var name_1="";
   var gender_1="";
   var height_1="";
   var weight_1="";

class RealDisplay extends StatefulWidget {
  const RealDisplay({ Key? key }) : super(key: key);

  static var profile_name=name_1;
  static var report_height=height_1;
  static var report_weight=weight_1;
  static var report_gender=gender_1;
  static var report_age=age_1;
  
  @override
  RealDisplayState createState() => RealDisplayState();
}

class RealDisplayState extends State<RealDisplay> {

static fetch() async{
    final firebaseuser = await FirebaseAuth.instance.currentUser;
    if(firebaseuser!=null){
      var xy = await FirebaseFirestore.instance
      .collection('Users')
      .doc(firebaseuser.uid)
      .get();
      print("AB");
      print(xy.data());

      print("AYUSHBANSAL");
      if(xy.data()!=null){
        name_1 = xy.data()!['Full name'];
        age_1 = xy.data()!['Age'];
        gender_1 = xy.data()!['Gender'];
        height_1 = xy.data()!['Height'];
        weight_1 = xy.data()!['Weight'];
        print("HDREAL");
        print(name_1);
        print("NAMEREAL ");
    }
    }
  }

  @override
  void initState() {
    fetch();
    print("we are in init");
    print(name_1);
    // TODO: implement initState
    //super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    //  CollectionReference users = FirebaseFirestore.instance.collection('Users');
    // final user = FirebaseAuth.instance.currentUser!;
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: Colors.grey[200],
      
      body: Container(
        child: FutureBuilder(
          future: fetch(),
          builder: (context, snapshot){
            if (snapshot.hasData ){
            print(snapshot.data);
            print("qwerty");
              return DashBoard();
            }
            else
              return DashBoard();
              // return Text('Loading data');
              // Navigator.pushNamed(context,  "Dashboard");
          
          },
          ),
        ),

    );
  }
}

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);
  @override
  _DashBoardState createState() => _DashBoardState();
}
class _DashBoardState extends State<DashBoard> {


  @override
  void initState() {
    RealDisplayState.fetch();  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("HD");
    print(name_1);
    print("NAME");

    CollectionReference users = FirebaseFirestore.instance.collection('Users');
    final user = FirebaseAuth.instance.currentUser!;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],

        //title: Text('Hi, '+ user.displayName!),,
        title: Text('Hi, ' + name_1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chat,
            ),
            tooltip: "Chat with us",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: size.height * 0.12,
                width: size.width * 0.95,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'AGE: ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                           age_1,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: size.width * 0.05,
                          ),
                          Text(
                            'GENDER: ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            gender_1,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'WEIGHT: ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                           weight_1,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Text(
                            'Height: ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                          height_1,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: size.height * 0.28,
                width: size.width * 0.95,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Dashboard',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 10, 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: size.height * 0.1,
                            width: size.width * 0.35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Cardio',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: size.height * 0.1,
                            width: size.width * 0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5),
                                      child: Text(
                                        'Strength & Conditioning',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        textAlign: TextAlign.center,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Finish the assessment to generate your report',
                      style: TextStyle(color: Colors.black87, fontSize: 15),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * 0.09,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.black87,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'HealthAssessment');
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                        child: Text(
                          'Health Assessment', //textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.09,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.black87,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'PreRequisite');
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                        child: Text(
                          'Base Line Fitness Assessment', //textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                          //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 25, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: size.height * 0.10,
                width: size.width * 0.95,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, 'BottomNavigation');
                      },
                      child: Text(
                        'Upcoming Sessions',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: MyStatefulWidget(),
    );
  }
}