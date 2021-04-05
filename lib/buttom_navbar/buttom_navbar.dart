import 'package:flutter/material.dart';
import 'package:test1/dialog/exit_dialog.dart';
import 'package:test1/page/detail_task/task_page.dart';
import 'package:test1/page/homepage.dart';
import 'package:test1/page/profile_page.dart';
import 'package:test1/page/wallet_page.dart';

class ButtonNavbar extends StatefulWidget {
  @override
  _ButtonNavbarState createState() => _ButtonNavbarState();
}

class _ButtonNavbarState extends State<ButtonNavbar> {
  GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  int _selectedItemIndex = 0;
  var _pages = [
    HomePageScreen(),
    TaskScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];
  Future<bool> _onWillPop() async {
    return await openExitDialog(context) ?? false;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        key: _scaffoldKey,
        body: Center(
          child: _pages[_selectedItemIndex],
        ),
        bottomNavigationBar: Row(
          children: [
            buildNavbarItem(Icons.home_outlined, 0, 'Home'),
            buildNavbarItem(Icons.insert_drive_file_outlined, 1, 'Task'),
            buildNavbarItem(Icons.home_repair_service_outlined, 2, 'Wallet'),
            buildNavbarItem(Icons.account_circle_outlined, 3, 'Profile'),
          ],
        ),
      ),
      onWillPop: _onWillPop,
    );
  }

  Widget buildNavbarItem(IconData icon, int index, String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        padding: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width / 4,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 4, color: Colors.grey)),
                gradient: LinearGradient(colors: [
                  Colors.grey.withOpacity(1),
                  Colors.grey.withOpacity(1)
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                color: index == _selectedItemIndex
                    ? Colors.grey[200]
                    : Colors.grey)
            : BoxDecoration(),
        child: Column(
          children: [
            Icon(
              icon,
              color: index == _selectedItemIndex
                  ? Colors.grey[300]
                  : Colors.grey[300],
            ),
            Text(
              text,
              style: TextStyle(
                  color: index == _selectedItemIndex
                      ? Colors.grey[300]
                      : Colors.grey[300]),
            ),
          ],
        ),
      ),
    );
  }
}
