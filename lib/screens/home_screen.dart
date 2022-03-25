import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:amd/screens/advisor_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color mainColor = Color(0xff264D6D);
  int _selectedIndex = 0;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final pages = [
      GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all( color: const Color(0xffB1B1B1), width: 2  ,),
            borderRadius: const BorderRadius.all(const Radius.circular(25)),
            color: Colors.white,
            boxShadow: [
              const BoxShadow(
                color: Color.fromARGB(255, 204, 202, 202),
                blurRadius: 5.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
                offset: const Offset(
                  2.0, // Move to right 15 horizontally
                  5.0, // Move to bottom 15 Vertically
                ),
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Center(
              child: Wrap(
                children: [
                  Text(
                    "مبادئ علم البيانات",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff264D6D), fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        onTap: () {
          setState(() {});
        },
      ),
      GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all( color: const Color(0xffB1B1B1), width: 2  ,),
            borderRadius: const BorderRadius.all(const Radius.circular(25)),
            color: Colors.white,
            boxShadow: [
              const BoxShadow(
                color: Color.fromARGB(255, 204, 202, 202),
                blurRadius: 5.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
                offset: const Offset(
                  2.0, // Move to right 15 horizontally
                  5.0, // Move to bottom 15 Vertically
                ),
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Center(
              child: Wrap(
                children: [
                  Text(
                    "مقدمة في تعلم الآلة",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff264D6D), fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        onTap: () {
          setState(() {});
        },
      ),
      GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all( color: const Color(0xffB1B1B1), width: 2  ,),
            borderRadius: const BorderRadius.all(const Radius.circular(25)),
            color: Colors.white,
            boxShadow: [
              const BoxShadow(
                color: Color.fromARGB(255, 204, 202, 202),
                blurRadius: 5.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
                offset: const Offset(
                  2.0, // Move to right 15 horizontally
                  5.0, // Move to bottom 15 Vertically
                ),
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Center(
              child: Wrap(
                children: [
                  Text(
                    "تحليل البيانات",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff264D6D), fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        onTap: () {
          setState(() {});
        },
      ),
    ];
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/home_background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 20,
                          child: Container(
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage(
                                "images/person.jpg",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "مرحباً محمد",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "نظم المعلومات",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 13,
                          child: Text(
                            "55 د",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Expanded(
                    flex: 30,
                    child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all( color: const Color(0xffB1B1B1), width: 2  ,),
                          borderRadius: const BorderRadius.all(const Radius.circular(25)),
                          color: Colors.white,
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(255, 204, 202, 202),
                              blurRadius: 5.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: const Offset(
                                2.0, // Move to right 15 horizontally
                                5.0, // Move to bottom 15 Vertically
                              ),
                            ),
                          ],
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("ما خاب من استشار", style: const TextStyle(fontSize: 24, color: Color(0xff264D6D) , fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Wrap(
                                  children: [
                                    Text("جدد تخصصك وحقق طموحاتك وأهدافك المهنية باستشارة خبرائنا الآن !",
                                      style: TextStyle(
                                          fontSize: 16
                                      ),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Advisor()));
                        });
                      },
                    ),
                  ),
                  Expanded(
                    flex: 24,
                    child:  Container(
                      margin: EdgeInsets.symmetric(horizontal: 45),
                      decoration: BoxDecoration(
                        border: Border.all( color: const Color(0xffB1B1B1), width: 2  ,),
                        borderRadius: const BorderRadius.all(const Radius.circular(25)),
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                            color: Color.fromARGB(255, 204, 202, 202),
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: const Offset(
                              2.0, // Move to right 15 horizontally
                              5.0, // Move to bottom 15 Vertically
                            ),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("تجربة : عبدالله بن ماجد  .. محلل بيانات", style: const TextStyle(fontSize: 16 , color: Color(0xff264D6D),  fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10),
                            Wrap(
                              children: [
                                Text("البداية كانت من مقرر جامعي، حبيت المادة، وقررت اتعمق بالمقرر، دخلت العديد من الدورات، اختلطت مع ناس من... المزيد",
                                style: TextStyle(
                                  fontSize: 16
                                ),),
                              ],
                            )
                        ]
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 25,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: PageView.builder(
                          controller: controller,
                          itemCount: pages.length,
                          itemBuilder: (_, index) {
                            return pages[index % pages.length];
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: SmoothPageIndicator(
                      textDirection: TextDirection.rtl,
                      controller: controller,
                      count: pages.length,
                      effect: ScrollingDotsEffect(
                        dotColor: Colors.grey,
                        activeDotColor: Color(0xff264D6D),
                        activeStrokeWidth: 2,
                        activeDotScale: 1.3,
                        maxVisibleDots: 5,
                        radius: 8,
                        spacing: 12,
                        dotHeight: 9,
                        dotWidth: 9,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        //Bottom Bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff264D6D),
          items: const <BottomNavigationBarItem>[
            // Home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Map',
            ),
            // Settings
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            // Map
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
