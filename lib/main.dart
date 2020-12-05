import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  List<String> pics = [
    "assets/images/lion.jpg",
    "assets/images/lion.jpg",
    "assets/images/lion.jpg"
  ];
  List<String> icons = [
    "assets/icons/washing-machine.png",
    "assets/icons/washing-machine.png",
    "assets/icons/washing-machine.png",
    "assets/icons/washing-machine.png",
    "assets/icons/washing-machine.png",
  ];
  List<String> services = ["wash", "Iron", "Dry Clean", "Leather", "T-shirt"];
  List<String> names = ["Klean Laundry", "Waasher Laundry", "Sheek Laundry"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.green[50],
          body: SingleChildScrollView(
              child: SafeArea(
            child: Column(
              children: [
                Profile(),
                Search(),
                Laundry(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      SizedBox(width: 12.0),
                      Text(
                        "Services",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.black),
                      ),
                      SizedBox(width: 200),
                      Text(
                        "See all",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  height: 150,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Services(
                            img: icons[index], title: services[index]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      Text(
                        "Popular Near By You",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.black),
                      ),
                      SizedBox(width: 130),
                      Text(
                        "See all",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  height: 350,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Machines(
                          img: pics[index],
                          title: names[index],
                        );
                      }),
                ),
              ],
            ),
          ))),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Picking and Delivery",
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.place),
                Text("Las Vegas,Us",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    )),
              ],
            ),
          ],
        ),
        SizedBox(width: 150),
        Image.asset(
          "assets/icons/washing-machine.png",
          height: 80,
          width: 50,
        ),
      ],
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 18),
          Expanded(
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black38,
                  ),
                  border: InputBorder.none,
                  hintText: "Search a sevice or laundry",
                ),
                onChanged: (newText) {
                  print(newText);
                },
              ),
            ),
          ),
          SizedBox(width: 12.0),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              width: 40,
              height: 50,
              color: Colors.blue[300],
              child: Icon(Icons.volume_up, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class Laundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          shape: BoxShape.rectangle,
          color: Colors.black,
        ),
        child: Row(
          children: [
            Text(
              "Boxing Day\nGet 35% Discount from\nEvery Laundry * * * ",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 25.0),
            Row(
              children: [
                Container(
                    height: 200,
                    width: 100,
                    child: Image.asset(
                      "assets/images/lion.jpg",
                      fit: BoxFit.fill,
                    )),
              ],
            )
          ],
        ));
  }
}

class Services extends StatefulWidget {
  Services({this.img, this.title});
  final String img;
  final String title;
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          SizedBox(width: 12.0),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Container(
              width: 90,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                shape: BoxShape.rectangle,
                color: Colors.purple[50],
              ),
              child: Column(children: [
                Image.asset(widget.img, width: 30, height: 50),
                Text(
                  widget.title,
                  style: TextStyle(color: Colors.black),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class Machines extends StatefulWidget {
  Machines({this.img, this.title});
  final String img;
  final String title;

  @override
  _MachinesState createState() => _MachinesState();
}

class _MachinesState extends State<Machines> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                      width: 250,
                      height: 100,
                      child: Image.asset(
                        widget.img,
                        fit: BoxFit.fill,
                      )),
                  Row(
                    children: [
                      SizedBox(height: 18),
                      Text(
                        widget.title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 12.0),
                      Text(
                        "8.99",
                        style: TextStyle(color: Colors.black38, fontSize: 15.0),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16.0),
                            Text("Mt Road.1582"),
                          ]),
                      Row(children: [
                        SizedBox(height: 12.0),
                        Text("*5.0(4.7k Ratings"),
                        SizedBox(width: 12.0),
                        Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              shape: BoxShape.rectangle,
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "details",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ]),
                    ],
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
