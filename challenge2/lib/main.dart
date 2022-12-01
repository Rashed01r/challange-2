import 'package:challenge2/comp/sitt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.check,
              size: 25,
            ),
          ),
        ],
        title: Text(
          "Add Courses",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              child: Image.asset("images/flutter2.png"),
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Text("flutter"),
          SizedBox(
            height: 15,
          ),
          Text("Course flutter"),
          Text(
            "28 student",
            style: TextStyle(
                fontSize: 15, color: Color.fromARGB(255, 147, 145, 139)),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                AlertDialog alert = AlertDialog(
                  title: Text("true"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  )),
                  icon: Icon(Icons.thumb_up_rounded),
                );
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
              child: Text(
                "Show Aletr",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 48),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
              )),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Settings",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          width: 200,
                          child: Column(
                            children: [
                              Settings(
                                label: "Allow Teacher",
                                value: false,
                              ),
                              Settings(
                                label: "Allow Setudent",
                                value: true,
                              ),
                              Settings(label: "Allow Attendance", value: false),
                              Settings(label: "Allow Edit", value: false),
                            ],
                          ),
                        ),
                      ],
                    );
                  });
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(150, 48),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
            ),
            child: Text("Settings"),
          ),
        ],
      ),
    );
  }
}
