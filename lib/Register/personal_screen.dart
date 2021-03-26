import 'package:flutter/material.dart';

import 'package:test1/Register/upload_data.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50, left: 25, right: 25),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        _pagination(num: 1),
                        _divider(1),
                        _pagination(num: 2),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  NamaField(),
                  SizedBox(height: 10),
                  NoKtpField(),
                  SizedBox(height: 10),
                  AlamatField(),
                  SizedBox(height: 10),
                  Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Column(
                        children: [
                          KecamatanField(),
                          SizedBox(height: 10),
                          KelurahanField(),
                          SizedBox(height: 10),
                          KodePosField(),
                          SizedBox(height: 10),
                        ],
                      )),
                  PhoneField(),
                  SizedBox(height: 10),
                  EmailField(),
                  SizedBox(height: 10),
                  PasswordField(),
                  SizedBox(height: 10),
                  ConfirmPasswordField(),
                  SizedBox(height: 10),
                  NextButton(),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 125,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PersonalDataPage()),
          );
        },
        child: Text(
          "Next",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

//Field
class NamaField extends StatelessWidget {
  const NamaField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Nama',
        ),
      ),
    );
  }
}

class NoKtpField extends StatelessWidget {
  const NoKtpField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Nomer KTP',
        ),
      ),
    );
  }
}

class AlamatField extends StatelessWidget {
  const AlamatField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Alamat',
        ),
      ),
    );
  }
}

class KecamatanField extends StatelessWidget {
  const KecamatanField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Kecamatan',
        ),
      ),
    );
  }
}

class KelurahanField extends StatelessWidget {
  const KelurahanField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Kelurahan',
        ),
      ),
    );
  }
}

class KodePosField extends StatelessWidget {
  const KodePosField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Kode Pos',
        ),
      ),
    );
  }
}

class PhoneField extends StatelessWidget {
  const PhoneField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Phone',
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Email',
        ),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Password',
        ),
      ),
    );
  }
}

class ConfirmPasswordField extends StatelessWidget {
  const ConfirmPasswordField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Confirm Password',
        ),
      ),
    );
  }
}
