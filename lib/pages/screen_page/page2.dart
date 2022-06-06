import 'package:flutter/material.dart';
import 'package:homie/pages/code_page.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool isButtonActive = false;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActive = controller.text.isNotEmpty;

      setState(() => this.isButtonActive = isButtonActive);
    });
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

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
        child: Container(
          child: Column(children: [
            SizedBox(height: 25.0),
            Text(
              "My first name is",
              style: TextStyle(
                color: Colors.green,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 40, bottom: 10),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 0.0),
                  child: Container(
                    width: 270,
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(hintText: "First Name"),
                      style: TextStyle(color: Colors.black, fontSize: 17.0),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20.0,
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
                  onPressed: isButtonActive
                      ? () {
                          setState(() => isButtonActive = false);
                          controller.clear();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CodePage()));
                        }
                      : null,
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
}
