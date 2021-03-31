import 'package:flutter/material.dart';

class NewJobDialog extends StatefulWidget {
  @override
  _NewJobDialogState createState() => _NewJobDialogState();
}

class _NewJobDialogState extends State<NewJobDialog> {
  double _value = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            Text('Detail Order', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                Icon(Icons.place_outlined),
                Text('Awann Sewu',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: [Icon(Icons.content_paste), Text('1x Standart Room')],
            ),
            Row(
              children: [
                Row(
                  children: [Icon(Icons.date_range), Text('3 March 2021')],
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.access_time_outlined),
                Text('14.30 - 16.30')
              ],
            ),
            Row(
              children: [
                Row(
                  children: [Icon(Icons.attach_money), Text('Rp. 150.000')],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Cash Payment',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.red[700],
                inactiveTrackColor: Colors.red[100],
                trackShape: RoundedRectSliderTrackShape(),
                trackHeight: 4.0,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                thumbColor: Colors.redAccent,
                overlayColor: Colors.red.withAlpha(32),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                tickMarkShape: RoundSliderTickMarkShape(),
                activeTickMarkColor: Colors.red[700],
                inactiveTickMarkColor: Colors.red[100],
                valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                valueIndicatorColor: Colors.redAccent,
                valueIndicatorTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Slider(
                value: _value,
                min: 0,
                max: 100,
                divisions: 10,
                label: '$_value',
                onChanged: (value) {
                  setState(
                    () {
                      _value = value;
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.symmetric(vertical: 200, horizontal: 50),
      title: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            "Awann Sewu has request new Order",
            textAlign: TextAlign.center,
          )),
      content: NewJobDialog());
  // show the dialog
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
