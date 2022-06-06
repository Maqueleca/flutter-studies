import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homie/theme/helper.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
            "Say hey more",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.black),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            "Send up to 5 hey per day",
            style: TextStyle(fontSize: 13.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
