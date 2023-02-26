import 'package:flutter/material.dart';

class cameraOne extends StatefulWidget {
  @override
  _cameraOneState createState() => _cameraOneState();
}
class _cameraOneState extends State<cameraOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Center(
        child: Text('Camera'),
      ),
    );
  }
}