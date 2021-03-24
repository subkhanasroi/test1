import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Notification(),
          Search(),
          Status(),
          Wallet(),
          JobView(),
        ],
      ),
    );
  }
}

class JobView extends StatelessWidget {
  const JobView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 350,
                height: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/hotel1.png'))),
                padding: EdgeInsets.symmetric(horizontal: 25),
              ),
              Container(
                  padding: EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    'Available Job',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: 350,
                height: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/hotel2.png'))),
                padding: EdgeInsets.symmetric(horizontal: 25),
              ),
              Container(
                  padding: EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    'Available Job',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: 350,
                height: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/hotel3.png'))),
                padding: EdgeInsets.symmetric(horizontal: 25),
              ),
              Container(
                  padding: EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    'Available Job',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}

class Wallet extends StatelessWidget {
  const Wallet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 30),
                child: Text('Wallet')),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 40),
                child: Text('RP.350.000'))
          ],
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 50),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            height: 40,
            width: 250,
            child: Center(
              child: Text(
                'AWANNCLEAN',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 25),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Center(
                child: IconButton(
                    color: Colors.grey[500],
                    iconSize: 25,
                    icon: Icon(Icons.notifications),
                    onPressed: () {}),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey[300],
        ),
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search_outlined),
              hintText: 'Search'),
        ),
      ),
    );
  }
}

class Status extends StatelessWidget {
  const Status({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 50,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/steve.png'),
            ),
          ),
          Container(
              child: Column(
            children: [
              Text('Welcome, Jhon'),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Text('4.7')
                ],
              ),
              Row(
                children: [
                  Text('Status :'),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightGreen),
                    height: 15,
                    width: 75,
                    child: Center(child: Text("Online")),
                  )
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
