import 'package:flutter/material.dart';

class Verification extends StatelessWidget {
  static String routeName = '/verification';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
          child: Column(
            children: [
              Text(
                'Registration Succes',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Spacer(
                flex: 1,
              ),
              Image(
                image: AssetImage('assets/hand_phone.png'),
              ),
              Spacer(
                flex: 1,
              ),
              Image(
                image: AssetImage('assets/text.png'),
              ),
              Spacer(
                flex: 1,
              ),
              SizedBox(
                height: 50,
                width: 125,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    "DONE",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
