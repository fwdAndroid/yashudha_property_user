import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PlotDetail extends StatefulWidget {
  const PlotDetail({super.key});

  @override
  State<PlotDetail> createState() => _PlotDetailState();
}

class _PlotDetailState extends State<PlotDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Plot Detail",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              "assets/registry 1.png",
              height: 290,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "Descriptiom \nDescription \nDescription\nDescription",
              style: TextStyle(color: Color(0xff666666), fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "Plat No: B 32 | Year: 2022",
              style: TextStyle(color: Color(0xff4F4F4F), fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            height: 156,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => PlotDetail()));
                    },
                    child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Column(
                          children: [
                            Container(
                              height: 148,
                              width: 268,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xffF5F4F8),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 140,
                                    child: Stack(
                                      children: [
                                        Image.asset("assets/Rectangle 6.png"),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff8BC83F)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Icon(
                                                Icons.favorite,
                                                color: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              width: 70,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff234F68)),
                                              child: Center(
                                                child: Text(
                                                  "Appartment",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xffFFFFFF),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 20),
                                      width: 100,
                                      height: 140,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Sky Dandelions \nApartment",
                                            style: TextStyle(
                                                color: Color(0xff252B5C),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Location",
                                            style: TextStyle(
                                                color: Color(0xff53587A)),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "246\$",
                                            style: TextStyle(
                                                color: Color(0xff53587A)),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ],
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
