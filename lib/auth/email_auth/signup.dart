import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:yashudha_property_user/auth/email_auth/prefable_state.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 20,
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "assets/Back - Solid.png",
              height: 60,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 30, right: 20),
            child: Text(
              "Create Your Account",
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
                  hintText: "Full Name",
                  hintStyle: TextStyle(color: Color(0xffA1A5C1)),
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                  fillColor: Color(0xffF5F4F8)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20, right: 20),
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
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff8BC83F), fixedSize: Size(200, 60)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => PrefableState()));
              },
              child: Text(
                "Register",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
