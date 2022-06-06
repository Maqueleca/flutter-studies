import 'package:flutter/material.dart';
import 'package:homie/pages/verify_phone_page.dart';
import 'package:homie/theme/colors.dart';
import 'package:homie/theme/helper.dart';
import 'package:homie/theme/padding.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
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
        padding: const EdgeInsets.all(mainPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(mainPadding),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      getImage("phone.png"),
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Verify your phone",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: "this will help protect your account and provides "
                        "you another way to log in. Your number will not be shared "
                        "with oher Hayto users",
                    style: TextStyle(
                      fontSize: 16,
                      color: textBlack,
                    ))),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyPhonePage()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.greenAccent,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Verify Now",
                      style: TextStyle(
                          fontSize: 22,
                          color: textWhite,
                          fontWeight: FontWeight.bold),
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
