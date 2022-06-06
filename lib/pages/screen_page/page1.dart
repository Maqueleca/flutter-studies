import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "H",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 55,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            "Welcome to Heyton",
            style: TextStyle(
              color: Colors.green,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          Text(
            "Please follow these House rules.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.0),
          Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  label: Text(
                    'Be yourself.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                    ),
                  ),
                  style: ButtonStyle(),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              "Make sure your photo, and bio, are tue to who you are.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 12.0),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                label: Text(
                  'Stay Safe.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                  ),
                ),
                style: ButtonStyle(),
              ),
            ]),
            SizedBox(height: 8.0),
            RichText(
              text: TextSpan(
                  text: "Don't be too give out personal information.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: " Date Safely",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: 12.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                label: Text(
                  'Play it cool.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                  ),
                ),
                style: ButtonStyle(),
              ),
            ]),
            SizedBox(height: 8.0),
            Text(
              "Respect oters and treat them as you would like to be treated.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 12.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                label: Text(
                  'Be proactive.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                  ),
                ),
                style: ButtonStyle(),
              ),
               SizedBox(height: 8.0),
            Text(
              "Always report badbehavior.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              textAlign: TextAlign.left,
            ),
            ]),
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
                    "I AGREE",
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
