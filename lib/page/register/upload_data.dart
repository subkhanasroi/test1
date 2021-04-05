import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadData extends StatefulWidget {
  @override
  _UploadDataState createState() => _UploadDataState();
}

class _UploadDataState extends State<UploadData> {
  File _image;
  final picker = ImagePicker();
  GlobalKey<ScaffoldState> _scaffoldKey;
  int _completePage;
  int _currentPage;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();
    _completePage = 0;
    _currentPage = 1;
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
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

  Widget _divider(int i) {
    return Expanded(
      child: Divider(
        color: _completePage > i ? Colors.grey[400] : Colors.grey[300],
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
        color: _currentPage >= num ? Colors.grey[400] : Colors.grey[300],
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
      appBar: AppBar(
        title: Text('Register'),
      ),
      key: _scaffoldKey,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 25, left: 125, right: 125),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              _pagination(num: 1),
              _divider(1),
              _pagination(num: 2),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              GestureDetector(
                onTap: getImage,
                child: Row(
                  children: [
                    _image != null
                        ? Container(
                            child: Image.file(
                              _image,
                              width: 100,
                              height: 100,
                            ),
                          )
                        : Icon(
                            Icons.add_photo_alternate_outlined,
                            size: 100,
                          ),
                    Text(
                      'Upload Foto',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: getImage,
                child: Row(
                  children: [
                    Icon(
                      Icons.add_photo_alternate_outlined,
                      size: 100,
                    ),
                    Text(
                      'Upload KTP',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: getImage,
                child: Row(
                  children: [
                    Icon(
                      Icons.add_photo_alternate_outlined,
                      size: 100,
                    ),
                    Text(
                      'Upload SKCK',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: getImage,
                child: Row(
                  children: [
                    Icon(
                      Icons.add_photo_alternate_outlined,
                      size: 100,
                    ),
                    Text(
                      'Upload CV dan Lamaran',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent),
                  child: Center(child: Text('Next')),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
