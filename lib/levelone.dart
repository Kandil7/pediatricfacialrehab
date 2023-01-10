import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:job/camera1.dart';

class levelOne extends StatefulWidget {
   levelOne({Key? key}) : super(key: key);

  @override
  State<levelOne> createState() => _levelOneState();
}

class _levelOneState extends State<levelOne> {
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
                  color: Color.fromRGBO(75, 195, 255, 1),
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
                            'Level 1',
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
                        backgroundImage: AssetImage('images/asset-1.png'),
                      ),
                      iconSize: 120,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RatingBar.builder(
                      minRating: 1,
                        itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                        updateOnDrag: true,
                        itemSize: 24,
                        onRatingUpdate: (rating)=> setState(() {
                          this.rating = rating ;
                        }) )
                ]),
                SizedBox(width: 90,),
                Column(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));


                    },
                        icon: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('images/asset-2.png'),
                    ),
                      iconSize: 120,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RatingBar.builder(
                        minRating: 1,
                        itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                        updateOnDrag: true,
                        itemSize: 24,
                        onRatingUpdate: (rating)=> setState(() {
                          this.rating = rating ;
                        }) )
                  ],
                ),

              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 30,),
                Column(
                  children: [
                    IconButton(onPressed: () {

                      Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));


                    },
                      icon:
                      CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('images/asset-3.png'),
                    ),
                      iconSize: 120,

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RatingBar.builder(
                        minRating: 1,
                        itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                        updateOnDrag: true,
                        itemSize: 24,
                        onRatingUpdate: (rating)=> setState(() {
                          this.rating = rating ;
                        }) )
                  ],
                ),
                SizedBox(width: 90,),
                Column(
                  children: [
                   IconButton(onPressed: (){
                     Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));


                   }, icon:  CircleAvatar(
                     radius: 60,
                     backgroundImage: AssetImage('images/asset-4.png'),
                   ),iconSize: 120,),
                    SizedBox(
                      height: 20,
                    ),
                    RatingBar.builder(
                        minRating: 1,
                        itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                        updateOnDrag: true,
                        itemSize: 24,
                        onRatingUpdate: (rating)=> setState(() {
                          this.rating = rating ;
                        }) )
                  ],
                ),

              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 30,),
                Column(
                  children: [
                    IconButton(onPressed: (){

                      Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));


                    }, icon: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('images/asset-4.png'),
                    ),
                      iconSize: 120,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RatingBar.builder(
                        minRating: 1,
                        itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                        updateOnDrag: true,
                        itemSize: 24,
                        onRatingUpdate: (rating)=> setState(() {
                          this.rating = rating ;
                        }) )
                  ],
                ),
                SizedBox(width: 90,),
                Column(
                  children: [
                    IconButton(
                    onPressed: () {
                      Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));

                    }, icon:   CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('images/asset-5.png'),
                    ),
                      iconSize: 120,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RatingBar.builder(
                        minRating: 1,
                        itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                        updateOnDrag: true,
                        itemSize: 24,
                        onRatingUpdate: (rating)=> setState(() {
                          this.rating = rating ;
                        }) )
                  ],
                ),

              ],
            ),

              ],
            )
          ,
        ),


    );
  }
}
