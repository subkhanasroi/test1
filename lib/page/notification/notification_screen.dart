import 'package:flutter/material.dart';
import 'package:test1/dialog/new_job_dialog.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    _scaffoldKey = new GlobalKey<ScaffoldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notification',
      home: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Notification',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
          ),
          body: ListView(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 1),
                ]),
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text(
                  'Awannkabu Job is done. Your balance has been added Rp 300.000',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 1),
                ]),
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text(
                  'Awannsewu has cancelled the order',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showAlertDialog(context);
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(color: Colors.grey, spreadRadius: 1),
                  ]),
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: Text(
                    'New Job At the Vira',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 1),
                ]),
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text(
                  'Lorem ipsum',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )),
    );
  }
}
