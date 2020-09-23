
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeView> {
  final HomeController ctrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            title: Text('หน้าหลัก'),
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            title: Text('โครงการทั้งหมด'),
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            title: Text('การแจ้งเตือน'),
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            title: Text('โปรไฟล์'),
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
    );
  }
}
