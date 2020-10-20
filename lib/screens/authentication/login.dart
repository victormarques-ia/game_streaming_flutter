import 'package:flutter/material.dart';
import 'package:game_streaming/screens/authentication/master.dart';
import 'package:game_streaming/utils/constants.dart';
import 'package:game_streaming/shared/rounded_button.dart';
import 'package:game_streaming/shared/custom_field.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomField(
                          label: "Email", iconData: Icons.email_outlined),
                      CustomField(
                          label: "Password", iconData: Icons.remove_red_eye),
                    ],
                  ),
                ),
              ),
              RoundedButton(
                text: "Log In",
                color: kPrimaryColor,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (Master()),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
