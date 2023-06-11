import 'package:flutter/material.dart';
import 'package:job_portal_ui/screens/IntroPages/intro_page1.dart';
import 'package:job_portal_ui/screens/home_screen.dart';
import 'package:job_portal_ui/widgets/bottom_nav.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'IntroPages/intro_page2.dart';
import 'IntroPages/intro_page3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;
  String next = 'Next';
  String getStarted = 'Get Started';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (index){
          setState(() {
            isLastPage = index == 2;
          });
          },
          controller: _controller,
          children: [
            IntroPage1(onPress: () { Navigator.push(context, MaterialPageRoute(builder: (ctx){
              return BottomNav();
            })); },),
             IntroPage2(onPress: () { Navigator.push(context, MaterialPageRoute(builder: (ctx){
               return BottomNav();
             })); },),
             IntroPage3(onPress: () { Navigator.push(context, MaterialPageRoute(builder: (ctx){
               return BottomNav();
             })); },),
          ],
        ),
        Align(
          alignment: Alignment(0, 0.7),
          child: Container(
              child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const WormEffect(
              dotColor: Color(0xffEFEFEF),
              strokeWidth: 1.5,
              dotWidth: 32.0,
              dotHeight: 6,
              spacing: 16.0,
              radius: 6,
              paintStyle: PaintingStyle.stroke,
              activeDotColor: Color(0xff59C1F2),
            ),
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Align(
            alignment: Alignment(0, 0.9),
            child:isLastPage? GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx){
                  return BottomNav();
                }));
              },

              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xff2355C4),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(

                  getStarted,
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                  ),
                ),
              ),
            ): GestureDetector(
              onTap: (){
                _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
              },

              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xff2355C4),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(

                    next,
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
