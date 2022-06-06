import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homie/theme/colors.dart';
import 'package:homie/theme/helper.dart';

class Hey extends StatefulWidget {
  const Hey({Key? key}) : super(key: key);

  @override
  State<Hey> createState() => _HeyState();
}

class _HeyState extends State<Hey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Heyto",
          style: TextStyle(color: Colors.green, fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: getbody(),
    );
  }

  Widget getbody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            getImage("phone.png"),
            fit: BoxFit.cover,
            width: 100,
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            "Get 2 tickets by watching each ad",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: [
                    getSvgIcon("google.svg"),
                    const SizedBox(
                      width: 8.0,
                    ),
                    const Text(
                      "200",
                      style: TextStyle(fontSize: 14, color: textBlack),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: const [
                    Text(
                      "WATCH THE AD",
                      style: TextStyle(fontSize: 14, color: textWhite),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: const [
              Divider(
                thickness: 0.8,
              ),
              Text("or"),
              Divider(
                thickness: 0.8,
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Center(
            child: getImage("person.png"),
          ),
          RichText(
            text: const TextSpan(
                text: "By adding each of your friends, you'll earn",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "20 tickets!",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 160.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                  child: 
                  const Text(
                      "Copy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                      textAlign: TextAlign.center,
                    ),),
              Container(
                height: 160.0,
                width: 200.0,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: const Text("heyto.app/invitetoheyto12@12")
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
