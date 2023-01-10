import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
class gallery extends StatefulWidget {
  gallery({Key? key}) : super(key: key);

  @override
  State<gallery> createState() => _gallery();
}

class _gallery extends State<gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ClipPath(
                clipper: WaveClipperOne(reverse: false),
                child: Container(
                  height: 142,
                  width: 392.4,
                  color: Color.fromRGBO(244, 83, 68, 1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 6,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context) ;
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Gallery',

                            style: TextStyle(
                              letterSpacing: 2,
                                fontFamily: 'Roboto',
                                fontSize: 34,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),

          ],
        )
        ,
      ),


    );
  }
}
