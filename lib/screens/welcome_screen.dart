import 'package:flutter/material.dart';

import '../widgets/input_field.dart';
import '../constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

List welcomeScreenContent = [
  {
    "header": "تخصصت ؟",
    "description": "تعرف على التخصصات القريبة لك عن طريق اختبار قصير ..!",
  },
  {
    "header": "محتار ؟",
    "description": "استشر خبراء من نفس التخصص او من سوق العمل..",
  },
  {
    "header": "الان اهم خطوة !",
    "description":
        "احصل على مرشدين يوجهونك خلال مرحلة تعلمك وطور نفس في مسارك مع مستشارين من سوق العمل",
  },
];

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<Widget> slides = welcomeScreenContent
      .map((content) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bground1.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Image.asset(
                  'images/Whitelogo.png',
                  height: 220.0,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: <Widget>[
                      Text(content['header'],
                          style: TextStyle(
                              fontSize: 48.0,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff264d6d),
                              height: 2.0)),
                      Text(
                        content['description'],
                        style: TextStyle(
                            letterSpacing: 1.2, fontSize: 28.0, height: 1.3),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              )
            ],
          )))
      .toList();

  List<Widget> indicator() => List<Widget>.generate(
      slides.length,
      (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
                color: currentPage.round() == index
                    ? Color(0XFF256075)
                    : Color(0XFF256075).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10.0)),
          ));
  double currentPage = 0.0;
  final _pageViewController = new PageController();

  @override
  void initState() {
    super.initState();
    _pageViewController.addListener(() {
      setState(() {
        currentPage = _pageViewController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          // isExtended: true,
          child: Icon(Icons.arrow_forward_ios_sharp),
          backgroundColor: Color(0xff264d6d),
          onPressed: () {
            _pageViewController.nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              PageView.builder(
                controller: _pageViewController,
                itemCount: slides.length,
                itemBuilder: (BuildContext context, int index) {
                  _pageViewController.addListener(() {
                    setState(() {
                      currentPage = _pageViewController.page!;
                    });
                  });
                  return slides[index];
                },
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 70.0),
                    padding: EdgeInsets.symmetric(vertical: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: indicator(),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
