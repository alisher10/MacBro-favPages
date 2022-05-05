import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_db/RegistrationPage/registration_page.dart';

class MyProfilePage extends StatelessWidget {
  final userdata = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Text(
          '${userdata.read('fName')}\n${userdata.read('lName')}\n${userdata.read('phoneNum')}',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: FlatButton(
                        onPressed: () {
                          Get.toNamed("/registration-page");
                          userdata.write('isLogged', false);
                          userdata.remove('fName');
                          userdata.remove('lName');
                          userdata.remove('phoneNum');
                          Get.offAll(RegistrationPage());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                            Text(
                              'Edit your profile',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.history,
                              color: Colors.blue,
                            ),
                            Text(
                              'Debts details',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.calculate,
                              color: Colors.blue,
                            ),
                            Text(
                              'Debts calculator',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.shopping_cart_sharp,
                              color: Colors.blue,
                            ),
                            Text(
                              'Shops',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.blue,
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.blue,
                            ),
                            Text(
                              'Contacts',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey,
                            ),
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
    );
  }
}
