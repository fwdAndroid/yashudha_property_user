import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:yashudha_property_user/auth/email_auth/signup.dart';
import 'package:yashudha_property_user/mobile_screen_layout.dart';

class EmailAuth extends StatefulWidget {
  const EmailAuth({super.key});

  @override
  State<EmailAuth> createState() => _EmailAuthState();
}

class _EmailAuthState extends State<EmailAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/undraw_city_life_gnpr 1.png"),
          Container(
            margin: EdgeInsets.only(left: 20, top: 30, right: 20),
            child: Text(
              "Let’s Sign In",
              style: TextStyle(
                  color: Color(0xff1F4C6B),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 30, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(color: Color(0xffA1A5C1)),
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: Color(0xffF5F4F8)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Color(0xffA1A5C1)),
                  prefixIcon: Icon(Icons.password),
                  filled: true,
                  fillColor: Color(0xffF5F4F8)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(color: Color(0xff1F4C6B)),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Color(0xff8BC83F),
                  fixedSize: Size(200, 60)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => MobileScreenLayout()));
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => SignUp()));
                },
                child: Text(
                  "Create New Account",
                  style: TextStyle(color: Color(0xff1F4C6B)),
                )),
          ),
        ],
      ),
    );
  }
}
