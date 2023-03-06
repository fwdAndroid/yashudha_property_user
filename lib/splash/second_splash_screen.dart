import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:yashudha_property_user/auth/auth.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({super.key});

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 100),
            child: Text(
              "Find best place \nto stay in good price ",
              style: TextStyle(fontSize: 25, color: Color(0xff204D6C)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 100, right: 10),
            child: Stack(
              children: [
                Image.asset(
                  "assets/Rectangle 6.png",
                ),
                Positioned(
                  left: 80,
                  top: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Auth()));
                    },
                    child: Text(
                      "Next",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfff8BC83F),
                        fixedSize: Size(190, 60)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
