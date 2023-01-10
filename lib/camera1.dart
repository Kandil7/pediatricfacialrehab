import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cameraOne extends StatelessWidget {
  const cameraOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('CAMERA',
        style: TextStyle(
          fontSize: 40,
          color: Color.fromRGBO(244, 83, 68, 1),
        ),),
      ),
    );
  }
}
