import 'package:flutter/material.dart';
import 'package:homie/theme/helper.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: geBody(),
    );
  }

  Widget geBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Image.asset(
              getImage("phone.png"),
              fit: BoxFit.cover,
              width: 100,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Who loves you",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.black),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            "See who likes you & match instantly",
            style: TextStyle(fontSize: 13.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
