import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homie/pages/hey_plus.dart';
import 'package:homie/pages/home.dart';
import 'package:homie/pages/love.dart';
import 'package:homie/pages/message.dart';
import 'package:homie/pages/profile.dart';
import 'package:homie/theme/colors.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  PreferredSizeWidget? getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            onPressed: (){
               Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HeyPlus()));
            },
            child: SvgPicture.asset(
              "assets/images/camera_icon.svg",
              width: 30.0,
            ),
          ),
         const Text("Heyton", style: TextStyle(fontSize: 35.0, color: Colors.green)),
          SvgPicture.asset(
            "assets/images/message_icon.svg",
            width: 30.0,
          ),
        ],
      ),
    );
  }

    Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        Home(),
        LovePage(),
        MessengePage(),
        ProfilePage()
      ],
    );
  }

  Widget getFooter() {
    List iconItems = [
      "assets/icons/home_icon.svg",
      "assets/icons/love_icon.svg",
      "assets/icons/message_icon.svg",
      "assets/icons/profile_icon.svg"
    ];
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: textWhite,
          border: Border(
              top: BorderSide(width: 2, color: textBlack.withOpacity(0.06)))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(iconItems.length, (index) {
            return InkWell(
              onTap: () {
                setState(() {
                  pageIndex = index;
                });
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    iconItems[index],
                    width: 22,
                    color: pageIndex == index ? success : grey,
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
