import 'package:flutter/material.dart';

class JobProgress extends StatefulWidget {
  @override
  _JobProgressState createState() => _JobProgressState();
}

class _JobProgressState extends State<JobProgress> {
  GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
      ),
      key: _scaffoldKey,
      body: _buildBody()
    );
  }
  Widget _buildBody(){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
    );
  }
}
