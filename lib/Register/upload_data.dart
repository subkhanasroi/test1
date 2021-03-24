import 'package:flutter/material.dart';
import 'package:test1/HomePage/buttom_navbar.dart';

class PersonalDataPage extends StatelessWidget {
  static String routeName = '/personaldata';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.grey[300]),
      title: 'Register',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Register'),
        ),
        body: PersonalDataScreen(),
      ),
    );
  }
}

class PersonalDataScreen extends StatefulWidget {
  @override
  _PersonalDataScreenState createState() => _PersonalDataScreenState();
}

class _PersonalDataScreenState extends State<PersonalDataScreen> {
  int _completePage;
  int _currentPage;
  @override
  void initState() {
    super.initState();
    _completePage = 0;
    _currentPage = 1;
  }

  Widget _divider(int i) {
    return Expanded(
      child: Divider(
        color: _completePage > i ? Colors.grey[300] : Colors.grey[400],
        thickness: 4.0,
      ),
    );
  }

  Widget _pagination({
    @required int num,
  }) {
    return Container(
      width: 32.0,
      height: 32.0,
      decoration: BoxDecoration(
        color: _currentPage >= num ? Colors.grey[300] : Colors.grey[400],
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          "$num",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 125),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                _pagination(num: 1),
                _divider(1),
                _pagination(num: 2),
              ],
            ),
          ),
          FotoWidget(),
          KtpWidget(),
          SKCKWidget(),
          CVWidget(),
          SizedBox(
            height: 50,
            width: 125,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ButtonNavbar()),
                );
              },
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FotoWidget extends StatelessWidget {
  const FotoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 25),
      child: Row(
        children: [
          SizedBox(
              child: IconButton(
                  iconSize: 75,
                  icon: Icon(Icons.add_a_photo),
                  onPressed: () {})),
          Text(
            "Upload Foto",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class KtpWidget extends StatelessWidget {
  const KtpWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 50),
      child: Row(
        children: [
          SizedBox(
              child: IconButton(
                  iconSize: 75,
                  icon: Icon(Icons.add_a_photo),
                  onPressed: () {})),
          Text(
            "Upload KTP",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class SKCKWidget extends StatelessWidget {
  const SKCKWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 50),
      child: Row(
        children: [
          SizedBox(
              child: IconButton(
                  iconSize: 75,
                  icon: Icon(Icons.add_a_photo),
                  onPressed: () {})),
          Text(
            "Upload SKCK",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class CVWidget extends StatelessWidget {
  const CVWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 50),
      child: Row(
        children: [
          SizedBox(
              child: IconButton(
                  iconSize: 75,
                  icon: Icon(Icons.add_a_photo),
                  onPressed: () {})),
          Text(
            "Upload CV dan Lamaran",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
