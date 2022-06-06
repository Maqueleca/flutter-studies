import 'package:flutter/material.dart';
import 'package:homie/pages/login_page.dart';
import 'package:homie/pages/screen_page/page1.dart';
import 'package:homie/pages/screen_page/page2.dart';
import 'package:homie/pages/screen_page/page3.dart';
import 'package:homie/pages/screen_page/page4.dart';
import 'package:homie/pages/screen_page/page5.dart';
import 'package:homie/pages/screen_page/page6.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 6,
                      effect: WormEffect(
                        spacing: 12,
                        dotColor: Colors.black26,
                        activeDotColor: Colors.green,
                      ),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut),
                    ),
                  ),
                  TextButton(
                      onPressed: () => controller.jumpToPage(5),
                      child: Text(
                        'SKIP',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: PageView(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() => isLastPage = index == 5);
                  },
                  children: [
                    PageOne(),
                    PageTwo(),
                    PageThree(),
                    PageFour(),
                    PageFive(),
                    PageSix()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
