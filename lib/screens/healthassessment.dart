import 'dart:ui';

import 'package:fitegrate_project/provider/Database.dart';
import 'package:flutter/material.dart';

bool isVisibleBackProblem = false;
bool isVisibleCancer = false;
bool isVisibleHeartIssue = false;
bool isVisibleBloodPressure = false;
bool isVisibleMetabolicConditions = false;
bool isVisibleMentalHealth = false;
bool isVisibleRespiratoryDisease = false;
bool isVisibleSpinalCord = false;
bool isVisibleStroke = false;
bool isVisibleOtherMedicalConditions = false;




healthfunc() async {



  Map<String, String> basicinfoMap1 = {
      "1": HealthAssessment.Queone,
      "1.1": HealthAssessment.Queone_one,
      "1.2": HealthAssessment.Queone_two,
      "1.3": HealthAssessment.Queone_three,
      "2": HealthAssessment.Quetwo,
      "2.1": HealthAssessment.Quetwo_one,
      "2.2": HealthAssessment.Quetwo_two,
      "3": HealthAssessment.Quethree,
      "3.1": HealthAssessment.Quethree_one,
      "3.2": HealthAssessment.Quethree_two,
      "3.3": HealthAssessment.Quethree_three,
      "3.4": HealthAssessment.Quethree_four,
      "4": HealthAssessment.Quefour,
      "4.1": HealthAssessment.Quefour_one,
      "4.2": HealthAssessment.Quefour_two,
      "5": HealthAssessment.Quefive,
      "5.1": HealthAssessment.Quefive_one,
      "5.2": HealthAssessment.Quefive_two,
      "5.3": HealthAssessment.Quefive_three,
      "5.4": HealthAssessment.Quefive_four,
      "5.5": HealthAssessment.Quefive_five,
      "6": HealthAssessment.Quesix,
      "7": HealthAssessment.Queseven,
      "7.1": HealthAssessment.Queseven_one,
      "7.2": HealthAssessment.Queseven_two,
      "8": HealthAssessment.Queeight,
      "8.1": HealthAssessment.Queeight_one,
      "8.2": HealthAssessment.Queeight_two,
      "8.3": HealthAssessment.Queeight_three,
      "8.4": HealthAssessment.Queeight_four,
      "9": HealthAssessment.Quenine,
      "9.1": HealthAssessment.Quenine_one,
      "9.2": HealthAssessment.Quenine_two,
      "9.3": HealthAssessment.Quenine_three,
      "10": HealthAssessment.Queten,
      "10.1": HealthAssessment.Queten_one,
      "10.2": HealthAssessment.Queten_two,
      "10.3": HealthAssessment.Queten_three,

      "11": HealthAssessment.Queeleven,
      "11.1": HealthAssessment.Queeleven_one,
      "11.2": HealthAssessment.Queeleven_two,
      "11.3": HealthAssessment.Queeleven_three,

      
    };
    await DatabaseService().addBasicData1(basicinfoMap1).then((value) {


      
    });

}



class HealthAssessment extends StatefulWidget {
  const HealthAssessment({Key? key}) : super(key: key);
  static var Queone = "0";
  static var Queone_one = "No";
  static var Queone_two = "No";
  static var Queone_three = "No";
  static var Quetwo = "0";
  static var Quetwo_one = "No";
  static var Quetwo_two = "No";
  static var Quethree = "0";
  static var Quethree_one = "No";
  static var Quethree_two = "No";
  static var Quethree_three = "No";
  static var Quethree_four = "No";
  static var Quefour = "0";
  static var Quefour_one = "No";
  static var Quefour_two = "No";
  static var Quefive = "0";
  static var Quefive_one = "No";
  static var Quefive_two = "No";
  static var Quefive_three = "No";
  static var Quefive_four = "No";
  static var Quefive_five = "No";
  static var Quesix = "0";
  static var Queseven = "0";
  static var Queseven_one = "No";
  static var Queseven_two = "NO";
  static var Queeight = "0";
  static var Queeight_one = "No";
  static var Queeight_two = "No";
  static var Queeight_three = "No";
  static var Queeight_four = "No";
  static var Quenine = "0";
  static var Quenine_one = "No";
  static var Quenine_two = "No";
  static var Quenine_three = "No";
  static var Queten = "0";
  static var Queten_one = "No";
  static var Queten_two = "No";
  static var Queten_three = "No";
  static var Queeleven = "0";
  static var Queeleven_one = "No";
  static var Queeleven_two = "No";
  static var Queeleven_three = "No";



  @override
  _HealthAssessmentState createState() => _HealthAssessmentState();
}

class _HealthAssessmentState extends State<HealthAssessment> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text(
          'Health Assessment',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1)    Do you have Arthritis, Osteoporosis, or Back Problems?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queone = "yes";
                                      isVisibleBackProblem =
                                          !isVisibleBackProblem;
                                          healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queone = "No";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          // Container(
          //   child: Column(children: [Text('Check', style: TextStyle(color: Colors.black87),)],),
          // ),

          Visibility(
            visible: isVisibleBackProblem,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(()
                                      
                                      {
                                       HealthAssessment.Queone_one="yes";
                                       healthfunc();
                                     });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    HealthAssessment.Queone_one="No";
                                    healthfunc();
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: size.width * 0.5,
                                  child: Text(
                                    'Do you have joint problems causing pain, a recent fracture or fracture caused by osteoporosis or cancer,  displaced vertebra (e.g., spondylolisthesis), and/or spondylolysis/pars defect (a crack in the bony ring on the back of the spinal column)?',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.orange[300],
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            HealthAssessment.Queone_two = "yes";
                                            healthfunc();
                                          });
                                        },
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.black87,
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          HealthAssessment.Queone_two = "No";
                                          healthfunc();
                                        },
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black87,
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Container(
                            //  margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //   height: size.height * 0.15,
                            // width: size.width * 0.95,
                            child: Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'Have you had steroid injections or taken steroid tablets regularly for more than 3 months',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                HealthAssessment.Queone_three = "yes";
                                                healthfunc();
                                              });
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              HealthAssessment.Queone_three = "No";
                                              healthfunc();
                                            },
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

         

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2)    Do you currently have Cancer of any kind?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quetwo = "yes";
                                      isVisibleCancer = !isVisibleCancer;
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quetwo = "No";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleCancer,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Does your cancer diagnosis include any of the following types: lung/bronchogenic, multiple myeloma (cancer of plasma cells), head, and/or neck?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quetwo_one = "yes";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    HealthAssessment.Quetwo_one = "No";
                                    healthfunc();
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width * 0.5,
                                child: Text(
                                  'Are you currently receiving cancer therapy (such as chemotheraphy or radiotherapy)?',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.orange[300],
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          HealthAssessment.Quetwo_two = "yes";
                                          healthfunc();
                                        });
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.black87,
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        HealthAssessment.Quetwo_two = "No";
                                        healthfunc();
                                      },
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),

///////////////// parttttttttttttttttt 33333333333333333333333 beginsssssssssssss
          ///

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '3)    Do you have a Heart or Cardiovascular Condition? This includes Coronary Artery Disease, Heart Failure, Diagnosed Abnormality of Heart Rhythm?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quethree= "yes";
                                      isVisibleHeartIssue =
                                          !isVisibleHeartIssue;
                                          healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                       HealthAssessment.Quethree= "No";
                                       healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleHeartIssue,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.5,
                          child: Text(
                            'Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.orange[300],
                              ),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    HealthAssessment.Quethree_one = "yes";
                                    healthfunc();
                                  });
                                },
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.black87,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  HealthAssessment.Quethree_one = "No";
                                  healthfunc();
                                },
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black87,
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    //  margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //   height: size.height * 0.15,
                    // width: size.width * 0.95,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width * 0.5,
                                child: Text(
                                  'Irregular heart beat that requires medical management',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.orange[300],
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          HealthAssessment.Quethree_two= "yes";
                                          healthfunc();
                                        });
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.black87,
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        HealthAssessment.Quethree_two= "No";
                                        healthfunc();
                                      },
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black87,
                          height: 20,
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Container(
                          //  margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //   height: size.height * 0.15,
                          // width: size.width * 0.95,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'Do you have chronic heart failure',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                HealthAssessment.Quethree_three= "yes";
                                                healthfunc();
                                              });
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              HealthAssessment.Quethree_three= "yes";
                                              healthfunc();
                                            },
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Colors.black87,
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 20,
                              ),
                              Container(
                                //  margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                //   height: size.height * 0.15,
                                // width: size.width * 0.95,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: size.width * 0.5,
                                            child: Text(
                                              'Have you participated in regular physical activity for past 2 months because of heart condition?',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.05,
                                                width: size.width * 0.3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  color: Colors.orange[300],
                                                ),
                                                child: TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      HealthAssessment.Quethree_four= "yes";
                                                      healthfunc();
                                                    });
                                                  },
                                                  child: Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Container(
                                                height: size.height * 0.05,
                                                width: size.width * 0.3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  color: Colors.black87,
                                                ),
                                                child: TextButton(
                                                  onPressed: () {
                                                     HealthAssessment.Quethree_four= "No";
                                                     healthfunc();
                                                  },
                                                  child: Text(
                                                    'No',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    //        const Divider(

                                    //    color: Colors.black87,
                                    //    height: 20,
                                    //    thickness: 2,
                                    //    indent: 20,
                                    //    endIndent: 20,
                                    //  ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),

          // part 4 beginssssssssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '4)    Do you currently have High Blood Pressure? ',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quefour = "yes";
                                      isVisibleBloodPressure =
                                          !isVisibleBloodPressure;
                                          healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                       HealthAssessment.Quefour = "No";
                                       healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleBloodPressure,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quefour_one= "yes";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    HealthAssessment.Quefour_one= "No";
                                    healthfunc();
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width * 0.5,
                                child: Text(
                                  'Do you have a resting blood pressure equal to or greater than 160/90 mmHg with or without medication?',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.orange[300],
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          HealthAssessment.Quefour_two= "yes";
                                          healthfunc();
                                        });
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.black87,
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        HealthAssessment.Quefour_two= "No";
                                        healthfunc();
                                      },
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // part 5 beginsssssssssssssssssssssssssssssss
          //

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '5)    Do you have any Metabolic Conditions? This includes Type 1 Diabetes, Type 2 Diabetes, Pre-Diabetes?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quefive= "yes";
                                      isVisibleMetabolicConditions =
                                          !isVisibleMetabolicConditions;
                                          healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quefive= "No";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleMetabolicConditions,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.5,
                          child: Text(
                            'Do you often have difficulty controlling your blood sugar levels with foods, medications, or other physician- prescribed therapies?',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.orange[300],
                              ),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    HealthAssessment.Quefive_one= "yes";
                                    healthfunc();
                                  });
                                },
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.black87,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  HealthAssessment.Quefive_one= "No";
                                  healthfunc();
                                },
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black87,
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    //  margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //   height: size.height * 0.15,
                    // width: size.width * 0.95,
                    child: Column(children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: size.width * 0.5,
                              child: Text(
                                'Do you often suffer from signs and symptoms of low blood sugar (hypoglycemia) following exercise and/or  during activities of daily living? Signs of hypoglycemia may include shakiness, nervousness, unusual irritability, abnormal sweating, dizziness or light-headedness, mental confusion, difficulty in speaking, weakness, or sleepiness',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: Colors.orange[300],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        HealthAssessment.Quefive_two= "yes";
                                        healthfunc();
                                      });
                                    },
                                    child: Text(
                                      'Yes',
                                      style: TextStyle(
                                          color: Colors.black87, fontSize: 18),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: Colors.black87,
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      HealthAssessment.Quefive_two= "No";
                                      healthfunc();
                                    },
                                    child: Text(
                                      'No',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.black87,
                        height: 20,
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Container(
                        //  margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        //   height: size.height * 0.15,
                        // width: size.width * 0.95,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: size.width * 0.5,
                                    child: Text(
                                      'Do you have any signs or symptoms of diabetes complications such as heart or vascular disease and/or  complications affecting your eyes, kidneys, or the sensation in your toes and feet?',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22),
                                          color: Colors.orange[300],
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              HealthAssessment.Quefive_three= "yes";
                                              healthfunc();
                                            });
                                          },
                                          child: Text(
                                            'Yes',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22),
                                          color: Colors.black87,
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            HealthAssessment.Quefive_three= "No";
                                            healthfunc();
                                          },
                                          child: Text(
                                            'No',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.black87,
                              height: 20,
                              thickness: 2,
                              indent: 20,
                              endIndent: 20,
                            ),
                            Container(
                              //  margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              //   height: size.height * 0.15,
                              // width: size.width * 0.95,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: size.width * 0.5,
                                          child: Text(
                                            'Do you have other metabolic conditions (such as current pregnancy-related diabetes, chronic kidney disease, or liver problems)?',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: size.height * 0.05,
                                              width: size.width * 0.3,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(22),
                                                color: Colors.orange[300],
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  setState(() {
                                                    HealthAssessment.Quefive_four= "yes";
                                                    healthfunc();
                                                  });
                                                },
                                                child: Text(
                                                  'Yes',
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.02,
                                            ),
                                            Container(
                                              height: size.height * 0.05,
                                              width: size.width * 0.3,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(22),
                                                color: Colors.black87,
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  HealthAssessment.Quefive_four= "No";
                                                  healthfunc();
                                                },
                                                child: Text(
                                                  'No',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: Colors.black87,
                                    height: 20,
                                    thickness: 2,
                                    indent: 20,
                                    endIndent: 20,
                                  ),
                                  Container(
                                    //  margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    //   height: size.height * 0.15,
                                    // width: size.width * 0.95,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: size.width * 0.5,
                                                child: Text(
                                                  'Are you planning to engage in what for you is unusually high (or vigorous) intensity exercise in the near future?',
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: size.height * 0.05,
                                                    width: size.width * 0.3,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22),
                                                      color: Colors.orange[300],
                                                    ),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          HealthAssessment.Quefive_five= "yes";
                                                          healthfunc();
                                                        });
                                                      },
                                                      child: Text(
                                                        'Yes',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black87,
                                                            fontSize: 18),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: size.height * 0.02,
                                                  ),
                                                  Container(
                                                    height: size.height * 0.05,
                                                    width: size.width * 0.3,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22),
                                                      color: Colors.black87,
                                                    ),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        HealthAssessment.Quefive_five= "No";
                                                        healthfunc();
                                                      },
                                                      child: Text(
                                                        'No',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),

                                        //        const Divider(

                                        //    color: Colors.black87,
                                        //    height: 20,
                                        //    thickness: 2,
                                        //    indent: 20,
                                        //    endIndent: 20,
                                        //  ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
            ),
          ),

// part 6 beginssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '6)    Are you pregnant',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quesix= "yes";
                                      healthfunc();
                                      
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quesix= "No";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          // part 7 beginssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '7)    Do you have any Mental Health Problems or Learning Difficulties?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queseven= "yes";
                                      isVisibleMentalHealth =
                                          !isVisibleMentalHealth;
                                          healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queseven= "No";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleMentalHealth,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Do you have difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queseven_one= "yes";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    HealthAssessment.Queseven_one= "No";
                                    healthfunc();
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width * 0.5,
                                child: Text(
                                  'Do you have Down Syndrome and back problems affecting nerves or muscles?',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.orange[300],
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          HealthAssessment.Queseven_two= "yes";
                                          healthfunc();
                                        });
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.black87,
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        HealthAssessment.Queseven_two= "No";
                                        healthfunc();
                                      },
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),

// part 8 beginsssssssssssssssssssssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '8)    Do you have a Respiratory Disease?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queeight= "yes";
                                      isVisibleRespiratoryDisease =
                                          !isVisibleRespiratoryDisease;
                                          healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queeight= "No";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleRespiratoryDisease,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.5,
                          child: Text(
                            'Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.orange[300],
                              ),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    HealthAssessment.Queeight_one= "yes";
                                    healthfunc();
                                  });
                                },
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.black87,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  HealthAssessment.Queeight_one= "No";
                                  healthfunc();
                                },
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black87,
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    //  margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //   height: size.height * 0.15,
                    // width: size.width * 0.95,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width * 0.5,
                                child: Text(
                                  'Has your doctor ever said your blood oxygen level is low at rest or during exercise and/or that you require supplemental oxygen therapy?',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.orange[300],
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          HealthAssessment.Queeight_two= "yes";
                                          healthfunc();
                                        });
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.black87,
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        HealthAssessment.Queeight_two= "NO";
                                        healthfunc();
                                      },
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black87,
                          height: 20,
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Container(
                          //  margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //   height: size.height * 0.15,
                          // width: size.width * 0.95,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'If asthmatic, do you currently have symptoms of chest tightness, wheezing, laboured breathing, consistent cough  (more than 2 days/week), or have you used your rescue medication more than twice in the last week?',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                HealthAssessment.Queeight_three= "yes";
                                                healthfunc();
                                              });
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              HealthAssessment.Queeight_three= "No";
                                              healthfunc();
                                            },
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Colors.black87,
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 20,
                              ),
                              Container(
                                //  margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                //   height: size.height * 0.15,
                                // width: size.width * 0.95,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: size.width * 0.5,
                                            child: Text(
                                              'Has your doctor ever said you have high blood pressure in the blood vessels of your lungs?',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.05,
                                                width: size.width * 0.3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  color: Colors.orange[300],
                                                ),
                                                child: TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      HealthAssessment.Queeight_four= "yes";
                                                      healthfunc();
                                                    });
                                                  },
                                                  child: Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Container(
                                                height: size.height * 0.05,
                                                width: size.width * 0.3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  color: Colors.black87,
                                                ),
                                                child: TextButton(
                                                  onPressed: () {
                                                    HealthAssessment.Queeight_four= "No";
                                                    healthfunc();
                                                  },
                                                  child: Text(
                                                    'No',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),

          // part 9 beginsssssssssssssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '9)    Do you have a Spinal Cord Injury?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quenine="yes";
                                      isVisibleSpinalCord =
                                          !isVisibleSpinalCord;
                                          healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quenine="No";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleSpinalCord,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Quenine_one= "yes";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    HealthAssessment.Quenine_one= "No";
                                    healthfunc();
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: size.width * 0.5,
                                  child: Text(
                                    'Do you commonly exhibit low resting blood pressure significant enough to cause dizziness, light-headedness, and/or fainting?',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.orange[300],
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            HealthAssessment.Quenine_two= "yes";
                                            healthfunc();
                                          });
                                        },
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.black87,
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          HealthAssessment.Quenine_two= "No";
                                          healthfunc();
                                        },
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black87,
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Container(
                            //  margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //   height: size.height * 0.15,
                            // width: size.width * 0.95,
                            child: Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'Has your physician indicated that you exhibit sudden bouts of high blood pressure (known as Autonomic Dysreflexia)?',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                HealthAssessment.Quenine_three= "yes";
                                                healthfunc();
                                              });
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                               HealthAssessment.Quenine_three= "No";
                                               healthfunc();
                                            },
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

//part 10 beginssssssssssssssssssssssssssssssssssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '10)    Have you had a Stroke?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queten = "yes";
                                      isVisibleStroke = !isVisibleStroke;
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queten = "No";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleStroke,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queten_one = "yes";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    HealthAssessment.Queten_one = "No";
                                    healthfunc();
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: size.width * 0.5,
                                  child: Text(
                                    'Do you have any impairment in walking or mobility?',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.orange[300],
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            HealthAssessment.Queten_two = "yes";
                                            healthfunc();
                                          });
                                        },
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.black87,
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          HealthAssessment.Queten_two = "No";
                                          healthfunc();
                                        },
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black87,
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Container(
                            //  margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //   height: size.height * 0.15,
                            // width: size.width * 0.95,
                            child: Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'Have you experienced a stroke or impairment in nerves or muscles in the past 6 months?',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                HealthAssessment.Queten_three= "yes";
                                                healthfunc();
                                              });
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              HealthAssessment.Queten_three= "No";
                                              healthfunc();
                                            },
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

// part 11 beginsssssssssssssssssssssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '11)    Do you have any other medical condition not listed above or do you have two or more medical conditions? ',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queeleven = "yes";
                                      isVisibleOtherMedicalConditions =
                                          !isVisibleOtherMedicalConditions;
                                          healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queeleven = "No";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleOtherMedicalConditions,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Have you experienced a blackout, fainted, or lost consciousness as a result of a head injury within the last 12 months or have you had a diagnosed concussion within the last 12 months?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      HealthAssessment.Queeleven_one = "yes";
                                      healthfunc();
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    HealthAssessment.Queeleven_one = "No";
                                    healthfunc();
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: size.width * 0.5,
                                  child: Text(
                                    'Do you have a medical condition that is not listed (such as epilepsy, neurological conditions, kidney problems)?',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.orange[300],
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            HealthAssessment.Queeleven_two = "yes";
                                            healthfunc();
                                          });
                                        },
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.black87,
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          HealthAssessment.Queeleven_two = "No";
                                          healthfunc();
                                        },
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black87,
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Container(
                            //  margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //   height: size.height * 0.15,
                            // width: size.width * 0.95,
                            child: Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'Do you currently live with two or more medical conditions',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                HealthAssessment.Queeleven_three = "yes";
                                                healthfunc();
                                              });
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              HealthAssessment.Queeleven_three = "No";
                                              healthfunc();
                                            },
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
