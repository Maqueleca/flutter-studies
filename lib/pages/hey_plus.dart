import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homie/pages/hey.dart';
import 'package:homie/pages/photosScreen/page1.dart';
import 'package:homie/pages/photosScreen/page2.dart';
import 'package:homie/pages/photosScreen/page3.dart';
import 'package:homie/theme/colors.dart';
import 'package:homie/theme/helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HeyPlus extends StatefulWidget {
  const HeyPlus({Key? key}) : super(key: key);

  @override
  State<HeyPlus> createState() => _HeyPlusState();
}

class _HeyPlusState extends State<HeyPlus> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: getAppBar(), preferredSize: const Size.fromHeight(200)),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/arrow_back_icon.svg",
            color: textWhite,
          )),
      title: RichText(
        text: const TextSpan(
            text: "Heyto",
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
            ),
            children: <TextSpan>[
              TextSpan(
                text: " Stars",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow,
                ),
              ),
            ]),
      ),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.info))],
      backgroundColor: primary,
      flexibleSpace: Stack(
        children: [
          Container(
            child: Image.asset(
              getImage("phone.png"),
              fit: BoxFit.cover,
              width: 100,
            ),
          ),
          Container(
            decoration: BoxDecoration(color: textBlack.withOpacity(0.5)),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 12, right: 12, bottom: 8, top: 8),
                      child: Text(
                        "11:59:32",
                        style: TextStyle(
                            fontSize: 16,
                            color: textWhite,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(15))),
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 190.0,
                  left: 160.0,
                  child: Container(
                    width: 150,
                    height: 150,
                    child: PageView(
                      controller: controller,
                      onPageChanged: (index) {
                        setState(() => isLastPage = index == 2);
                      },
                      children: const [FirstPage(), SecondPage(), ThirdPage()],
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const WormEffect(
                  spacing: 9,
                  dotColor: Colors.black26,
                  activeDotColor: Colors.green,
                ),
                onDotClicked: (index) => controller.animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut),
              ),
            ),
            const Text(
              "Your ticket assets",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8.0,
            ),
            MaterialButton(
              onPressed: () {},
              child: Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
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
                        width: 8.0,
                      ),
                      const Text(
                        "200",
                        style: TextStyle(fontSize: 14, color: textBlack),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Colors.black38,
                      child: Column(
                        children: [
                          Container(
                              height: 250.0,
                              width: 250.0,
                              child: Column(children: const [
                                Text(
                                  "3",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "month",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ])),
                          Container(
                            height: 100.0,
                            width: 250.0,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Row(
                                children: [
                                  getSvgIcon("google.svg"),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  const Text("500",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Colors.black38,
                      child: Column(
                        children: [
                          Container(
                              height: 250.0,
                              width: 250.0,
                              child: Column(children: const [
                                Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "month",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ])),
                          Container(
                            height: 100.0,
                            width: 250.0,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Row(
                                children: [
                                  getSvgIcon("google.svg"),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  const Text("200",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            MaterialButton(
              onPressed: () {
                 Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Hey()));
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
                    children: const [
                      Text(
                        "Increase your tickets",
                        style: TextStyle(fontSize: 14, color: textWhite),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              "You do not have to pay for the ticket.",
              style: TextStyle(color: Colors.white, fontSize: 14.0),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
