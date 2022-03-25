import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_progress_hud/flutter_progress_hud.dart';

import '../widgets/input_field.dart';

// import '../widgets/reuseable_button.dart';
import '../constants.dart';
// import 'chat_screen.dart';

class LoginScreen extends StatefulWidget {
  // static const String id = 'Login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final _auth = FirebaseAuth.instance;
  String email = "";
  String password = "";

  void updateEmail(String email) {
    this.email = email;
  }

  void updatePassword(String password) {
    this.password = password;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bground2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 150.0,
              width: 300,
              child: Image.asset(
                'images/bluelogo2.png',
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            InputField(
              hintText: '053******',
              inputType: InputType.email,
              onChange: updateEmail,
            ),
            SizedBox(
              height: 8.0,
            ),
            InputField(
              hintText: '***********.',
              inputType: InputType.password,
              onChange: updatePassword,
            ),
            SizedBox(
              height: 24.0,
            ),
            // ReuseableButton(
            //   tag: 'Log In',
            //   title: 'Log In',
            //   buttonColor: Colors.lightBlueAccent,
            //   onPress: () async {
            //     final progress = ProgressHUD.of(context);
            //     try {
            //       progress!.show();
            //       final newUser = await _auth.signInWithEmailAndPassword(
            //           email: email, password: password);
            //       if (newUser != null) {
            //         progress.dismiss();
            //         Navigator.pushNamed(context, ChatScreen.id);
            //       }
            //     } catch (e) {
            //       progress!.dismiss();
            //       print(e);
            //     }
            //   },
            // ),
          ],
        ), /* add child content here */
      ),
    );
  }
}
