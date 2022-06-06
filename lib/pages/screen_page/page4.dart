import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  final controller = PageController();

  GlobalKey<ScaffoldState>? _key;
  int _defaultChoiceIndex = 0;
  List<String> _dynamicChips = ['WOMAN', 'MAN', 'EVERYONE'];

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget choiceChips() {
    return Container(
      height: 200.0,
      child: ListView.builder(
        itemCount: _dynamicChips.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
            label: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 40.0,
                    width: double.infinity,
                    child: Text(_dynamicChips[index])),
                ),
              ),
            ),
            selected: _defaultChoiceIndex == index,
            selectedColor: Colors.green,
            onSelected: (bool selected) {
              setState(() {
                _defaultChoiceIndex = selected ? index : 0;
              });
            },
            backgroundColor: Colors.blue,
            labelStyle: TextStyle(color: Colors.white),
          );
        },
      ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Show Me",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            choiceChips(),
            SizedBox(
              height: 20.0,
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
