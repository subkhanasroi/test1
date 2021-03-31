import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Forgot Password?",
            style: TextStyle(
              fontSize: 13,
            )),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Click Here",
            style: TextStyle(fontSize: 13, color: Colors.blue[400]),
          ),
        ),
      ],
    );
  }
}
