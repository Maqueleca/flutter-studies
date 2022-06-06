import 'package:flutter/material.dart';
import 'package:homie/theme/helper.dart';
import 'package:homie/theme/padding.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getBody(), backgroundColor: Colors.white);
  }

    void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: AlertDialog(
              title: Text(
                "Meet People Nearby",
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
                    "Your lacation will be used tosow potential matches near you",
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
                  onPressed: () {},
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
                            "ALLOW LOCATION",
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
    return Padding(
      padding: const EdgeInsets.all(mainPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                getImage("person.png"),
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Enable Location",
            style: TextStyle(
              color: Colors.green,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            "You'll need to enable your location in order to use Heyto",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
          ),
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
                    "ALLOW LOCATION",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            "Tell me more",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
