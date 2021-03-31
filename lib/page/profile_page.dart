import 'package:flutter/material.dart';
import 'package:test1/common/constans/image.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  String nickname = 'John Wick';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _buildBody()
    );
  }

  Widget _buildBody(){return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50),
        Text(
          'Status : on Verification',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 16),
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(kImgProfile),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$nickname',
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
                icon: Icon(Icons.create_outlined),
                color: Colors.grey[400],
                onPressed: () async {
                  String update = await showAlertDialog();
                  if (update != null) {
                    setState(() {
                      nickname = update;
                    });
                  }
                })
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            detail(header: Text('13'), desc: 'Total order'),
            detail(
                header: Row(
                  children: [Icon(Icons.star), Text('4.9')],
                ),
                desc: 'Total Rating'),
            detail(header: Text('199'), desc: 'Point'),
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
    ));}
  Widget detail({@required Widget header, @required String desc}) {
    return Column(
      children: [header, Text('$desc')],
    );
  }

  Future showAlertDialog() {
    TextEditingController edit = new TextEditingController();
    // set up the buttons
    Widget cancelButton = MaterialButton(
        child: Text("Cancel"),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop();
        });
    Widget continueButton = MaterialButton(
      child: Text("Continue"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop(edit.text);
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Change Nickname"),
      content: TextField(
        controller: edit,
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
