import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homie/pages/screen_page/photo.dart';
import 'package:homie/theme/helper.dart';

class PageSeven extends StatefulWidget {
  const PageSeven({Key? key}) : super(key: key);

  @override
  _PageSevenState createState() => _PageSevenState();
}

class _PageSevenState extends State<PageSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: AlertDialog(
              title: Text(
                "Photo Access",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "To upload photos from your device, Heyto needs to access your photos.",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Please tap " 'Allow' " in the next step.",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PhotoPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onSurface: Colors.green,
                          primary: Colors.greenAccent,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 12.0, bottom: 8.0),
                          child: Text(
                            "OKAY",
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          );
        });
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Text(
            "Add Photos",
            style: TextStyle(
              color: Colors.green,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          Text(
            "Add at 2 photos to continue",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.0),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: _showDialog,
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: getImage("person.png"),
                                ),
                                Container(
                                  height: 20.0,
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green,
                                  ),
                                  child: Icon(Icons.add),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: _showDialog,
                        child: Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: getImage("person.png"),
                                  ),
                                  Container(
                                    height: 20.0,
                                    width: 20.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.green,
                                    ),
                                    child: Icon(Icons.add),
                                  )
                                ])),
                      ),
                    ),
                  ],
                );
              }),
            )
          ]),
          SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onSurface: Colors.green,
                  primary: Colors.greenAccent,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
