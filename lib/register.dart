import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class RegisterScreen extends StatefulWidget {
  static String routeName = "/register";

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 25,
            child: TimelineTile(
              axis: TimelineAxis.horizontal,
              alignment: TimelineAlign.center,
              isFirst: true,
              endChild: Container(
                child: Text("Personal"),
                constraints: const BoxConstraints(minWidth: 50),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 100,
            child: TimelineTile(
              axis: TimelineAxis.horizontal,
              alignment: TimelineAlign.center,
              isLast: true,
              endChild: Container(
                  child: Text("Upload Data"),
                  constraints: const BoxConstraints(minWidth: 50)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50, left: 25, right: 25),
            child: Column(
              children: [
                NamaField(),
                SizedBox(height: 10),
                NoKtpField(),
                SizedBox(height: 10),
                AlamatField(),
                SizedBox(height: 10),
                Container(
                    padding: EdgeInsets.only(left: 75),
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
                SizedBox(
                  height: 50,
                  width: 125,
                  child: FlatBgit addutton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
