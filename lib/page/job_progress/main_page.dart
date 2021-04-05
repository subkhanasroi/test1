import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class JobProgress extends StatefulWidget {
  @override
  _JobProgressState createState() => _JobProgressState();
}

class _JobProgressState extends State<JobProgress> {
  File _image;
  final picker = ImagePicker();
  bool loading = false;
  GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      } else {
        print('No image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Job Progress'),
          leading: Icon(Icons.arrow_back_rounded),
        ),
        key: _scaffoldKey,
        body: _buildBody());
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 10.0,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Cleaner go to the Hotel',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Text(
          'Add before cleaning photos',
          style: TextStyle(fontSize: 10),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: _image != null
                        ? Container(
                            child: Image.file(
                              _image,
                              width: 75,
                              height: 75,
                            ),
                          )
                        : Icon(
                            Icons.add,
                            size: 75,
                          ),
                  ),
                  onTap: getImage,
                ),
                Text('room')
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: Icon(
                      Icons.add,
                      size: 75,
                    ),
                  ),
                  onTap: getImage,
                ),
                Text('bathroom')
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: Icon(
                      Icons.add,
                      size: 75,
                    ),
                  ),
                  onTap: getImage,
                ),
                Text('bed')
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Text(
              'Start Cleaning',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            GestureDetector(
              child: Container(
                width: 75,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text('Start')),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Vacuum Room',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                GestureDetector(
                  child: Container(
                    width: 75,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('Start')),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Laundry',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                GestureDetector(
                  child: Container(
                    width: 75,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('Start')),
                  ),
                  onTap: getImage,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Finish',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(
            'Add after cleaning photos',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(
            height: 20,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: Icon(
                      Icons.add,
                      size: 75,
                    ),
                  ),
                  onTap: getImage,
                ),
                Text('room')
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: Icon(
                      Icons.add,
                      size: 75,
                    ),
                  ),
                  onTap: getImage,
                ),
                Text('bathroom')
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(children: [
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: Icon(
                    Icons.add,
                    size: 75,
                  ),
                ),
                onTap: () {},
              ),
              Text('bed')
            ]),
          ]),
        ])
      ]),
    );
  }
}
