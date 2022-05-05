import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginPhonePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF9F9FDF9),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
              'Login',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Stack(
              children: [
                Container(
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                          'Phone Number',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: null,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xF9F9FDF9),
                            border: InputBorder.none,
                            hintText: '998(9x) xxx xx xx',
                          ),
                        ),
                      ),
                    ],

                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/login-phone-page2");
                    },
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
