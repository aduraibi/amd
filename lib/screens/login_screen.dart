import 'package:flutter/material.dart';
import 'package:amd/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passVisible = true;
  Color mainColor = Color(0xff264D6D);
  var phone, password;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bground2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("images/logo.png"),
                    width: 200,
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("رقم الجوال"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: TextFormField(
                      onSaved: (val) {
                        phone = val;
                      },

                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'الرجاء ادخال رقم الجوال';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                      // textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: "*******053",
                        suffixIcon: Icon(Icons.phone),
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
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("كلمة المرور"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: TextFormField(
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'الرجاء ادخال رقم كلمة المرور';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      obscureText: passVisible,
                      decoration: InputDecoration(
                        hintText: "********",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passVisible = !passVisible;
                            });
                          },
                          icon: Icon(
                            !passVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color:
                                !passVisible ? Color(0xff8D4B99) : Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 73),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "نسيت كلمة المرور؟",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // زر تسجيل الدخول
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    width: 175,
                    height: 60,
                    child: ElevatedButton(
                      style: createdEleButtonStyle(),
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ليس لديك حساب؟"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "سجل الآن",
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

ButtonStyle createdEleButtonStyle() {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color(0xff264D6D)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13.0),
        // side: BorderSide(color: Color(0xff785283))
      ),
    ),
  );
}
