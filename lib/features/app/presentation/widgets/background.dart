import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,

    this.bottomImage = "images/Group-3-copy.png",
  }) : super(key: key);

  final String  bottomImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   child: Image.asset(
            //     topImage,
            //     width: 120,
            //   ),
            // ),
            Positioned(
              bottom: MediaQuery.of(context).size.height -(MediaQuery.of(context).size.height *1.23),
              left: MediaQuery.of(context).size.width -330,


              child: Image.asset(bottomImage),

            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
