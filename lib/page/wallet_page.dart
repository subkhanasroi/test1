import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TotalWallet(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 380,
                    padding: EdgeInsets.only(left: 15, top: 25),
                    child: Text(
                      'History Transaction',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 25, right: 10),
                                      child: Text(
                                        'Payment',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.lightGreenAccent),
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Cash',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              detailTransaction('Awannsewu'),
                              detailTransaction('Booking ID:1234'),
                              detailTransaction('12 April 2021'),
                            ],
                          ),
                        ),
                        Text(
                          '+ RP 350.000',
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: 25,
                                        right: 10,
                                      ),
                                      child: Text(
                                        'Withdraw',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              detailTransaction('Awannsewu'),
                              detailTransaction('Booking ID:1234'),
                              detailTransaction('12 April 2021'),
                            ],
                          ),
                        ),
                        Text(
                          '- Rp 100.000',
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 25, right: 10),
                                      child: Text(
                                        'Tip',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.lightGreenAccent),
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Awannpay',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              detailTransaction('Awannsewu'),
                              detailTransaction('Booking ID:1234'),
                              detailTransaction('12 April 2021'),
                            ],
                          ),
                        ),
                        Text(
                          '+ RP 20.000',
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'More',
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                  Container(
                    width: 380,
                    padding: EdgeInsets.only(left: 15, top: 25),
                    child: Text(
                      'Refferal History',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 350,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 25, right: 10),
                                          child: Text(
                                            'Payment',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.lightGreenAccent),
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            'Cash',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  detailTransaction('Awannsewu'),
                                  detailTransaction('Booking ID:1234'),
                                  detailTransaction('12 April 2021'),
                                ],
                              ),
                            ),
                            Text(
                              '+ RP 350.000',
                              style: TextStyle(fontSize: 30),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 350,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 25, right: 10),
                                          child: Text(
                                            'Withdraw',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  detailTransaction('Awannsewu'),
                                  detailTransaction('Booking ID:1234'),
                                  detailTransaction('12 April 2021'),
                                ],
                              ),
                            ),
                            Text(
                              '- Rp 100.000',
                              style: TextStyle(fontSize: 30),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 350,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 25, right: 10),
                                          child: Text(
                                            'Tip',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.lightGreenAccent),
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            'Awannpay',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  detailTransaction('Awannsewu'),
                                  detailTransaction('Booking ID:1234'),
                                  detailTransaction('12 April 2021'),
                                ],
                              ),
                            ),
                            Text(
                              '+ RP 20.000',
                              style: TextStyle(fontSize: 30),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'More',
                      style: TextStyle(fontSize: 20),
                    )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container detailTransaction(String text) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(text),
            ],
          ),
        ],
      ),
    );
  }
}

class TotalWallet extends StatelessWidget {
  const TotalWallet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 10),
        child: Column(
          children: [
            Text(
              'Total Wallet Awann Pay',
              style: TextStyle(fontSize: 20),
            ),
            Text('Rp.350.000', style: TextStyle(fontSize: 35)),
            Container(
              width: 100,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: Center(
                  child: Text(
                'Withdraw',
                style: TextStyle(fontSize: 20),
              )),
            )
          ],
        ),
      ),
    );
  }
}
