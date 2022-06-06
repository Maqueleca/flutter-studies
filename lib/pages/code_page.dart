import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homie/pages/screen_page/welcone_page.dart';
import 'package:homie/theme/colors.dart';

class CodePage extends StatefulWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  _CodePageState createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
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
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/arrow_back_icon.svg",
                      color: textBlack,
                    )),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Text(
                    "My Code is",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "945123639",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 13.0),
                      Text(
                        "RESEND",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 0.0),
                            child: Container(
                              width: 30,
                              child: TextField(
                                decoration: InputDecoration(),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 0.0),
                        child: Container(
                          width: 30,
                          child: TextField(
                            decoration: InputDecoration(),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 0.0),
                        child: Container(
                          width: 30,
                          child: TextField(
                            decoration: InputDecoration(),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 0.0),
                        child: Container(
                          width: 30,
                          child: TextField(
                            decoration: InputDecoration(),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 0.0),
                        child: Container(
                          width: 30,
                          child: TextField(
                            controller: controller,
                            decoration: InputDecoration(),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 16.0),
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
                                        builder: (context) => WelcomePage()));
                              }
                            : null,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 12.0, bottom: 8.0),
                          child: Text(
                            "CONTINUE",
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
