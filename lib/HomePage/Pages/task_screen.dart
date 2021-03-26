import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> with TickerProviderStateMixin {
  TabController _taskController;
  var pages = [];

  @override
  void initState() {
    super.initState();
    _taskController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _taskController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TabBar(
          controller: _taskController,
          indicatorColor: Colors.teal,
          labelColor: Colors.teal,
          unselectedLabelColor: Colors.black,
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              text: "One",
            ),
            Tab(
              text: "Two",
            ),
          ],
        )
      ],
    );
  }
}
