import 'package:flutter/material.dart';
import 'package:test1/tool/hex_color.dart';

class DetailOrder extends StatefulWidget {
  @override
  _DetailOrderState createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        key: _scaffoldKey,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Detail',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.assignment_ind_outlined),
                      Text('Order ID: id12345678')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.date_range),
                      Text('03 March 2021'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined),
                      Text('14.30 - 16.30 WIB')
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('Status Order :'),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('44ccf2')),
                        child: Text('Upcoming'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)]),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment Detail',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hotel Room Cleaning',
                          ),
                          Text(
                            'Single room size',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Text('1x'),
                      Text('Rp 70.000')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hotel Room Cleaning',
                          ),
                          Text('Single room size',
                              style: TextStyle(fontSize: 10))
                        ],
                      ),
                      Text('1x'),
                      Text('Rp 80.000')
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)]),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Price',
                      ),
                      Text('Rp 150.000')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                      ),
                      Text('0')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                      ),
                      Text('Rp 150.000')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Paid With',
                      ),
                      Text('Rp 150.000')
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'CANCEL ORDER',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    onPressed: () {},
                  ),
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'GO TO LOCATION',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Text('Need Help?'),
          ],
        ),
      ),
    );
  }
}
