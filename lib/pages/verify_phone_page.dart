import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homie/pages/code_page.dart';
import 'package:homie/theme/colors.dart';
import 'package:homie/theme/padding.dart';

class VerifyPhonePage extends StatefulWidget {
  const VerifyPhonePage({Key? key}) : super(key: key);

  @override
  _VerifyPhonePageState createState() => _VerifyPhonePageState();
}

class _VerifyPhonePageState extends State<VerifyPhonePage> {
  bool isButtonActive = false;
  String? selected;
  List listItem = ["+244", "+98", "+57", "+18", "+12"];
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
        child: Column(children: [
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
          SizedBox(height: 35.0),
          Text(
            "My Number is",
            style: TextStyle(
              color: Colors.green,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding:
                const EdgeInsets.only(left: 50, top: 10, right: 40, bottom: 10),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Container(
                  width: 75,
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                    ),
                    hint: Text("+244"),
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 30,
                    value: selected,
                    isDense: true,
                    items: listItem.map((label) {
                      return DropdownMenuItem(
                        child: Text(label),
                        value: label,
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selected = newValue as String?;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 0.0),
                child: Container(
                  width: 180,
                  child: TextField(
                    controller: controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Phone Number"),
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "When you tap Continue, Heyto will send a text with "
                    "verification code, Message and data rates may apply "
                    "The verified phone number can be used to login",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CodePage()));
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
    );
  }
}
