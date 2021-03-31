import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/tool/hex_color.dart';

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
      children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          child: TabBar(
            controller: _taskController,
            indicatorColor: Colors.grey,
            labelColor: Colors.grey,
            unselectedLabelColor: Colors.black,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: "On Going Order",
              ),
              Tab(
                text: "History",
              ),
            ],
          ),
        ),
        Container(
          height: 600,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: TabBarView(
            controller: _taskController,
            children: [
              Container(
                child: ListView(
                  children: [
                    Container(
                      child: detailOrder(
                          'Awann Sewu Hotel',
                          'Ongoing',
                          '1x standar room',
                          '03 March 2021',
                          '14.30-16.30',
                          'Rp.150.000',
                          'Cash Payment',
                          InkWell(
                            child: Text('detail'),
                            onTap: () {},
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: detailOrder(
                          'Awann Sewu Hotel',
                          'Ongoing',
                          '1x standar room',
                          '03 March 2021',
                          '14.30-16.30',
                          'Rp.150.000',
                          'Cash Payment',
                          InkWell(
                            child: Text('detail'),
                            onTap: () {},
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                child: ListView(
                  children: [
                    Container(
                      child: detailOrder(
                          'Awann Sewu Hotel',
                          'Ongoing',
                          '1x standar room',
                          '03 March 2021',
                          '14.30-16.30',
                          'Rp.150.000',
                          'Cash Payment',
                          InkWell(
                            child: Text('detail'),
                            onTap: () {},
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget detailOrder(String hotel, String status, String room, String date,
      String time, String money, String transaction, Widget detail) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                '$hotel',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 55,
                  decoration: BoxDecoration(
                      color: HexColor('5ae85f'),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('$status'))
            ],
          ),
          Row(
            children: [
              Icon(Icons.content_paste),
              Text('$room'),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.date_range),
                  Text('$date'),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Icon(Icons.access_time_outlined),
                  Text('$time'),
                ],
              )
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.attach_money),
                  Text('$money'),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '$transaction',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 10,
              ),
              detail,
            ],
          ),
        ],
      ),
    );
  }
}
