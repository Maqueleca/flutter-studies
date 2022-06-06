import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homie/constant/story_json.dart';
import 'package:homie/pages/verify.dart';
import 'package:homie/theme/colors.dart';
import 'package:homie/theme/helper.dart';
import 'package:homie/theme/padding.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: getBody(),
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: AlertDialog(
              title: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage(
                        getImage("person.png"),
                      ),
                    ),
                    const Text(" Choose an account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    const Text("to continue to Heyto",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: textBlack,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              content: Column(
                children: [
                  Column(
                    children: List.generate(2, (index) {
                      return Column(children: [
                        Column(children: [
                          ListTile(
                            leading: CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                getImage("maqui.jpg"),
                              ),
                            ),
                            title: Text(
                              stories[index]['name'],
                              style: const TextStyle(
                                  color: textBlack,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              stories[index]['email'],
                              style: const TextStyle(
                                  color: textBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            onTap: () {},
                          ),
                        ]),
                        const Divider(
                          thickness: 0.8,
                        ),
                      ]);
                    }),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.add),
                            SizedBox(
                              width: 12,
                            ),
                            Text("add another account"),
                          ],
                        ),
                        const Divider(
                          thickness: 0.8,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              text:
                                  "To continue, Google will share your name, email address, and profile picture with Figma Mirror.Before using this app, review its",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " Privacy Policy",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.lightBlue),
                                ),
                                TextSpan(text: " and "),
                                TextSpan(
                                    text: "terms of service",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.lightBlue,
                                    ))
                              ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          );
        });
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(mainPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 130,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Heyto",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text:
                            "By clicking Login, you agree with our terms, learn how we process your data in our",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " Privacy Policy",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                              text: "Cookies Policy",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold))
                        ]),
                  ),
                ),
                const SizedBox(height: 12),
                MaterialButton(
                  onPressed: _showDialog,
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
                        children: [
                          getSvgIcon("google.svg"),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "LOG IN WITH GOOGLE",
                            style: TextStyle(fontSize: 14, color: textBlack),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
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
                        children: [
                          getSvgIcon("facebook.svg"),
                          const SizedBox(
                            width: 20,
                          ),
                          const Center(
                            child: Text(
                              "LOG IN WITH FACEBOOK",
                              style: TextStyle(fontSize: 14, color: textBlack),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const VerifyPage()));
                  },
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
                        children: [
                          Container(
                            child: getSvgIcon("phone.svg"),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Center(
                            child: Text(
                              "LOGIN WITH PHONE NUMBER",
                              style: TextStyle(fontSize: 14, color: textBlack),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Center(
                  child: Text(
                    "Trouble loggin in?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
