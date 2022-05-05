import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hive_db/ProfilePage/my_profile_page.dart';

import '../FavoritePage/favorite_page.dart';
import '../View/gridview_api.dart';
import '../View/listview_api.dart';


class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  List<BottomNavigationBarItem>? items;

  final screens = [
    HomePage(),
    MyProfilePage(),
    FavoritePage(),
    MyProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(

                    ),
                      hintText: 'Searching',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.notifications)),
                ),
              ),
            ),
          ),
          body: screens[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,//AppColors.unselectedBottomNavItem,
          selectedItemColor: Colors.blue,//AppColors.assets,
          onTap: (index) => setState(() {
            currentIndex = index;
          }),//controller.setMenu(BottomMenu.values[pos]),
          //currentIndex: ,//controller.bottomMenu.index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          selectedLabelStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
          elevation: 8,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart),
                label: 'Shopping cart',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.yellow,
              ),
            ],
        ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/image0.jpg'),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  height: 300.0,
                  width: double.infinity,
                  child: ListViewAPI(),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sales!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  height: 300.0,
                  width: double.infinity,
                  child: ListViewAPI(),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Categories!',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  height: 1300.0,
                  width:  double.infinity,
                  child: GridViewAPI(),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recomended',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 300.0,
                  width: double.infinity,
                  child: ListViewAPI(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
