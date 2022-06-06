import 'package:flutter/material.dart';
import 'package:homie/theme/helper.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
            "Unlimited likes",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.black),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            "Send as many likes as you wnat",
            style: TextStyle(fontSize: 13.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
