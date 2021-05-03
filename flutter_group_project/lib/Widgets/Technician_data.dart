import 'package:flutter/material.dart';

class TechnicianData extends StatelessWidget {
  final String data;
  final IconData icon;
  final TextStyle textStyle;
  TechnicianData({
    @required this.data,
    this.icon,
    this.textStyle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(5),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.amber,
          ),
          SizedBox(width:20.0),
          Text(
            data,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
