import 'package:flutter/material.dart';

class Advisor extends StatefulWidget {
  const Advisor({Key? key}) : super(key: key);

  @override
  State<Advisor> createState() => _AdvisorState();
}

class _AdvisorState extends State<Advisor> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/advisor_background.png"),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 125),
                            child: Text(
                              "المستشارين",
                              style: TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ),
                          flex: 80,
                        ),
                        Expanded(
                          flex: 20,
                          child: IconButton(onPressed: () {
                            Navigator.pop(context);
                          }, icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 24,)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    flex: 55,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "البحث",
                              prefixIcon: IconButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                icon: Icon(Icons.search),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 25,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    ),
                                    color: Color(0xFFDDE4EF),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("التخصص"),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 25,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    ),
                                    color: Color(0xFFDDE4EF),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("المستشار"),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 25,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    ),
                                    color: Color(0xFFDDE4EF),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("التقييم"),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 340,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
//الكرت الأول
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 27),
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
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text("د. حمود الدوسري", style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                 SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text('دكتوراه في علم البيانات', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                    ),
                                    const Icon(Icons.arrow_back_ios_new_rounded),
                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("★★★★☆", style: TextStyle(fontSize: 18),),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 6,),
                                Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(right: 250),
                                        child: Text("متاح", style: const TextStyle(color : Colors.green, fontWeight: FontWeight.bold, fontSize: 14),),
                                      ),
                                      const SizedBox(width: 3,),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //الكرت الثاني
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 27),
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
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text("د. مجدل القحطاني", style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text('دكتوراه في علم البيانات', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                    ),
                                    const Icon(Icons.arrow_back_ios_new_rounded),
                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("★★★★☆", style: TextStyle(fontSize: 18),),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 6,),
                                Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(right: 250),
                                        child: Text("غير متاح", style: const TextStyle(color : Colors.red, fontWeight: FontWeight.bold, fontSize: 14),),
                                      ),
                                      const SizedBox(width: 3,),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
