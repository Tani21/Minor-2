import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/provider/google_sign_in.dart';
import 'package:fitegrate_project/screens/dashboard.dart';
import 'package:fitegrate_project/screens/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class DataRetrieve extends StatefulWidget {
  const DataRetrieve({ Key? key }) : super(key: key);

  @override
  _DataRetrieveState createState() => _DataRetrieveState();
}

class _DataRetrieveState extends State<DataRetrieve> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.grey[200],
      
      body: Container(
        child: FutureBuilder(
          future: RealDisplayState.fetch(),
          builder: (context, snapshot){
            if (snapshot.hasData ){
            print(snapshot.data);
            print("qwerty");
              return Profile();
            }
            else
              return Profile();
              // return Text('Loading data');
              // Navigator.pushNamed(context,  "Dashboard");
          
          },
          ),
        ),

    );
  }
}


class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    
    final user = FirebaseAuth.instance.currentUser!;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            child: Text(
              'Logout',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              print("press");
              if (SignIn.isLoginwith == false) {
                print("false");
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SignIn(),
                  ),
                  (route) => false,
                );
                
              }
              
              if (SignIn.isLoginwith == true) {
                print("True");
               
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
               
                provider.logout();
                Navigator.pushNamedAndRemoveUntil(context, "SignIn", (route) => false);
                 
                }
              
              // Navigator.pushReplacementNamed(context, 'SignIn');
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/Fitegrate/profile.jpeg',
              height: size.height * 0.20,
              width: size.width,
            ),
            SizedBox(height: 8),
            Text(
              RealDisplay.profile_name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              user.email!,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 5),
              child: Column(
                children: [
                  Container(
                    color: Colors.grey[350],
                    height: size.height * 0.09,
                    width: size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.card_membership_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Phone number',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.grey[350],
                    height: size.height * 0.09,
                    width: size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.card_membership_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Membership Validity',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.grey[350],
                    height: size.height * 0.09,
                    width: size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.call,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Contact Us',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.grey[350],
                    height: size.height * 0.09,
                    width: size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.announcement_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Feedback',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  throw UnimplementedError();
}