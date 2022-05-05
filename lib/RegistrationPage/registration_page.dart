import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_db/ProfilePage/my_profile_page.dart';

class RegistrationPage extends StatelessWidget {
  final fName_controller = TextEditingController();
  final lName_controller = TextEditingController();
  final phoneNum_controller = TextEditingController();
  final password_controller = TextEditingController();

  final userdata = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF9F9FDF9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Registration',
          style: TextStyle(
              color: Colors.black,
          ),),
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
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      'First Name',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        controller: fName_controller,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xF9F9FDF9),
                          hintText: 'Your first name',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Text(
                      'Last Name',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        controller: lName_controller,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xF9F9FDF9),
                          border: InputBorder.none,
                          hintText: 'Your last name',
                        ),
                      ),
                    ),
                    Text(
                      'Phone number',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: phoneNum_controller,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xF9F9FDF9),
                          border: InputBorder.none,
                          hintText: '998(9x) xxx xx xx',
                        ),
                      ),
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        controller: password_controller,
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xF9F9FDF9),
                          border: InputBorder.none,
                          hintText: '********',
                        ),
                      ),
                    ),
                    Text(
                      'Password again',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        controller: password_controller,
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xF9F9FDF9),
                          border: InputBorder.none,
                          hintText: '********',
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
                    Get.toNamed("/main-page");
                    String fName = fName_controller.text;
                    String lName = lName_controller.text;
                    String phoneNum = phoneNum_controller.text;
                    String password = password_controller.text;
                    if (fName != '' && lName != '' && phoneNum != '' && password != '') {
                      userdata.write('isLogged', true);
                      userdata.write('fName',fName );
                      userdata.write('lName',lName );
                      userdata.write('phoneNum',phoneNum );
                      userdata.write('password', password);
                      Get.offAll(MyProfilePage());
                    }else{
                      Get.snackbar("Error", "Please Enter Username & Password",snackPosition: SnackPosition.BOTTOM);
                    }
                  },
                  child: Text('Register'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}