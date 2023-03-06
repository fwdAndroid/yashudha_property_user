import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_pin,
                              color: Color(0xff252B5C),
                            ),
                            border: InputBorder.none,
                            hintText: "Indonasia",
                            hintStyle: TextStyle(color: Color(0xff252B5C))),
                        style: TextStyle(
                            color: Color(0xff234F68),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/Notification-1.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.payment_sharp),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 30, right: 20),
                child: Text(
                  "Hey, Jonathan! \nLet's start exploring  ",
                  style: TextStyle(
                      color: Color(0xff1F4C6B),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(left: 20, top: 30, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Color(0xffF5F4F8),
                      filled: true,
                      hintText: "Search House, Apartment, etc",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                child: CupertinoSegmentedControl(
                  borderColor: Colors.white,
                  selectedColor: Color(0xff252B5C),
                  unselectedColor: Color(0xffF5F4F8),
                  padding: EdgeInsets.all(10),
                  groupValue: groupValue,
                  children: {
                    0: buildSegment("All"),
                    1: buildSegment("House"),
                    2: buildSegment("Appartment"),
                    3: buildSegment("Villa"),
                  },
                  onValueChanged: (groupValue) {
                    setState(() {
                      this.groupValue = groupValue;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Featured Estates",
                      style: TextStyle(
                          color: Color(0xff234F68),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff234F68),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
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
                      return Padding(
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
                                              padding:
                                                  const EdgeInsets.all(4.0),
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
                          ));
                    }),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Location",
                      style: TextStyle(
                          color: Color(0xff234F68),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff234F68),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.all(4),
                          child: Container(
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Color(0xffF5F4F8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/plot.png"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Bali",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ));
                    }),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 30, right: 20),
                child: Text(
                  "Explore Nearby Estates",
                  style: TextStyle(
                      color: Color(0xff1F4C6B),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2.0,
                        mainAxisSpacing: 2.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  "assets/logo.png",
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey.withOpacity(.1)),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_outline,
                                            color: Color(0xff234F68),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "Fairview Apartment",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff252B5C)),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildSegment(String s) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(2),
      child: Text(s),
    );
  }
}
