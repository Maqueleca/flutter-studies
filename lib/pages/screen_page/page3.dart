import 'package:flutter/material.dart';
import 'package:homie/constant/sexual_model.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  List<SexualModel> sexual = [
    SexualModel("Straight", false),
    SexualModel("Gay", false),
    SexualModel("Lesbian", false),
    SexualModel("Asexual", false),
    SexualModel("Demisexual", false),
    SexualModel("Pansexual", false),
    SexualModel("Queer", false),
    SexualModel("Questioning", false),
    SexualModel("Bisexual", false),
  ];

  List<SexualModel> selectedSexual = [];
  bool checkBox = false;

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
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "My Sexual",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Orientation is",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              "Select up to 3",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 500,
              width: 300.0,
              child: Padding(
                padding: const EdgeInsets.only(right: 120.0),
                child: ListView.builder(
                    itemCount: sexual.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SexualItem(
                        sexual[index].name,
                        sexual[index].isSelected,
                        index,
                      );
                    }),
              ),
            ),
            SizedBox(height: 10.0),
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
      ),
    );
  }

  Widget SexualItem(String name, bool isSelected, int index) {
    return ListTile(
      leading: isSelected
          ? Icon(
              Icons.check,
              color: Colors.green,
            )
          : Text(""),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w200,
        ),
      ),
      onTap: () {
        setState(() {
          Colors.green;
          sexual[index].isSelected = !sexual[index].isSelected;
          if (sexual[index].isSelected == true) {
            selectedSexual.add(SexualModel(name, true));
          } else if (sexual[index].isSelected == false) {
            selectedSexual
                .removeWhere((element) => element.name == sexual[index].name);
          }
        });
      },
    );
  }
}
