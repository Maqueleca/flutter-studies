import 'package:flutter/material.dart';
import 'package:homie/pages/screen_page/multichip.dart';

class PageSix extends StatefulWidget {
  const PageSix({Key? key}) : super(key: key);

  @override
  _PageSixState createState() => _PageSixState();
}

class _PageSixState extends State<PageSix> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  List<String> _dynamicChips = [
    'Cycle',
    'Foodie',
    'Spirituality',
    'Movies',
    'Techonoloy',
    'Yoga',
    'Dog lover',
    'Swimming',
    'Crossfit',
    'Fashion',
    'Brunc',
    'Picniking',
    'Tattoos',
    'Volunteering',
    'Art',
    'Activism',
    'Vegetarian',
    'Walking',
    'Theater',
    'Hiking',
    'Blogging',
    'Festivals',
    'Dacing',
    'Vlogging',
    'Sushi',
    'Craft Beer',
    'Snowboarding',
    'Soccer',
    'Instagram',
    'Baking',
    'Outdoors',
    'Athlete',
    'Board Games',
    'Environmentalismo',
    'Surfing',
    'Writer'
  ];

  List<String> selectedProgrammingList = [];
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Passions",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              "Let everyone know what you're passionate about by adding it to your profile.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            MultiSelectChip(
              _dynamicChips, 
              onSelectionChanged: (selectedList) {
              setState(() {
                selectedProgrammingList = selectedList;
              });
            }),
                   SizedBox(
              height: 7.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    onSurface: Colors.green,
                    primary: Colors.greenAccent,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut),
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
          ],
        ),
      ),
    );
  }
}
