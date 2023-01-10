import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:job/camera1.dart';

class levelSix extends StatefulWidget {
  levelSix({Key? key}) : super(key: key);

  @override
  State<levelSix> createState() => _levelSixState();
}

class _levelSixState extends State<levelSix> {
  double rating = 2 ;
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
                  color: Color.fromRGBO(197, 71, 95, 1),
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
                              Navigator.pop(context);
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
                            'Level 6',
                            style: TextStyle(
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
            Row(
              children: [
                SizedBox(width: 30,),
                Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));
                        },
                        icon: CircleAvatar(
                          backgroundColor: Colors.cyanAccent,
                          radius: 60,
                          backgroundImage: AssetImage('images/1.png'),
                        ),
                        iconSize: 120,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
                SizedBox(width: 50,),
                RatingBar.builder(
                    minRating: 1,
                    itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                    updateOnDrag: true,
                    itemSize: 30,
                    onRatingUpdate: (rating)=> setState(() {
                      this.rating = rating ;
                    }) )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 30,),
                Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));
                        },
                        icon: CircleAvatar(
                          backgroundColor: Colors.cyanAccent,
                          radius: 60,
                          backgroundImage: AssetImage('images/2.png'),
                        ),
                        iconSize: 120,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
                SizedBox(width: 50,),
                RatingBar.builder(
                    minRating: 1,
                    itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                    updateOnDrag: true,
                    itemSize: 30,
                    onRatingUpdate: (rating)=> setState(() {
                      this.rating = rating ;
                    }) )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 30,),
                Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));
                        },
                        icon: CircleAvatar(
                          backgroundColor: Colors.cyanAccent,
                          radius: 60,
                          backgroundImage: AssetImage('images/3.png'),
                        ),
                        iconSize: 120,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
                SizedBox(width: 50,),
                RatingBar.builder(
                    minRating: 1,
                    itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                    updateOnDrag: true,
                    itemSize: 30,
                    onRatingUpdate: (rating)=> setState(() {
                      this.rating = rating ;
                    }) )
              ],
            ),

          ],
        )
        ,
      ),


    );
  }
}
