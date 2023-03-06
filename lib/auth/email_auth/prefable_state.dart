import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:yashudha_property_user/mobile_screen_layout.dart';

class PrefableState extends StatefulWidget {
  const PrefableState({super.key});

  @override
  State<PrefableState> createState() => _PrefableStateState();
}

class _PrefableStateState extends State<PrefableState> {
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
              "Select your preferable \nreal estate type ",
              style: TextStyle(
                  color: Color(0xff1F4C6B),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.6,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 170,
                    childAspectRatio: 1 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/Vertical - Category.png"),
                  );
                }),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff8BC83F), fixedSize: Size(200, 60)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => MobileScreenLayout()));
              },
              child: Text(
                "Register Complete",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
