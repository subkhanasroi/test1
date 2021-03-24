import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 50,
                  ),
                  child: Text(
                    'Status : on Verification',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/steve.png'),
            ),
            Container(
              padding: EdgeInsets.only(left: 150),
              child: Row(
                children: [
                  Text(
                    'John Wick',
                    style: TextStyle(fontSize: 20),
                  ),
                  IconButton(
                      icon: Icon(Icons.create_outlined),
                      color: Colors.grey[400],
                      onPressed: () {})
                ],
              ),
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Text('13', style: TextStyle(fontSize: 35))),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      Text('4.9', style: TextStyle(fontSize: 35)),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('199', style: TextStyle(fontSize: 35)))
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('total order', style: TextStyle(fontSize: 20))),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text('rating', style: TextStyle(fontSize: 20))),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text('point', style: TextStyle(fontSize: 20)))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Setting',
                    style: TextStyle(fontSize: 35),
                  ),
                  Text(
                    'Contact US',
                    style: TextStyle(fontSize: 35),
                  ),
                  Text(
                    'Share App',
                    style: TextStyle(fontSize: 35),
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(fontSize: 35),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
