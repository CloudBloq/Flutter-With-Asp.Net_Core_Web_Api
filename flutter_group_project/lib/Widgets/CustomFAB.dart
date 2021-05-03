import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  final Function onPressed;

  const CustomFAB({@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Colors.amber[200],
      focusColor: Colors.amberAccent,
      child: Icon(
        Icons.check,
        color: Colors.blue,
      ),
    );
  }
}
