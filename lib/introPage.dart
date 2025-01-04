import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:project_part2/components/cpView.dart';
import 'package:project_part2/components/styleText.dart';

class introPage extends StatefulWidget {
  const introPage({super.key});

  @override
  State<introPage> createState() => _introPageState();
}

class _introPageState extends State<introPage> {

  int pageIndex = 0;
  PageController _pageController = PageController();
  String next = "Next";

  exit(){
    if(pageIndex == 1){
      next = "Sign Up";
    }
    setState(() {
      if(pageIndex == 2){
        Navigator.of(context).pushNamedAndRemoveUntil("signUp", (route) => false,);
      }
    });
  }

  List pageView = [
    cpView(image: "images/logo.jpg", text: "Welcome To LIU University"),
    cpView(image: "images/OIP.jpeg", text: "Step into your future with confidence at LIU University"),
    cpView(image: "images/fall.png", text: "Join us Now")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.white,
              height: 600,
              child: PageView.builder(
                controller: _pageController,
                itemCount: pageView.length,
                itemBuilder: (BuildContext context, int i) {
                  pageIndex = i;
                  return pageView[i];

              },

              ),
            ),
          SmoothPageIndicator(controller: _pageController, count: 3, effect: const WormEffect(
              spacing: 10,
              activeDotColor: Colors.blue
          ),),
            ElevatedButton(onPressed: (){
              exit();
              _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear);
            }, child: styleText(val: next, size: 15, color: Colors.blue))
          ],
        ),
      ),
    );
  }
}
