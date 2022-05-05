import 'package:flutter/material.dart';
import 'package:get/get.dart';


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mac',
                      style: TextStyle(
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                        'Bro',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {
                  Get.toNamed("/login-phone-page");
                  //Get.to(LoginPhonePage());
                },
                child: Text(
                  'For clients',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.white,
              ),
            ],
          ),
        ),
    );
  }
}
