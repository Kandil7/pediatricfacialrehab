import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'levels.dart';

class secondScreen extends StatelessWidget {
  const secondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset('images/Amjad.png'),
                  Center(
                    child: Text(
                      'Pediatric Facial Rehab',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 33,
                          color: Color.fromRGBO(244, 83, 68, 1),
                          fontFamily: 'Roboto'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 207,
              ),
              ClipPath(
                clipper: WaveClipperOne(reverse: true),
                child: Container(
                  height: 120,
                  color: Color.fromRGBO(244, 83, 68, 1),
                  child: Row(
                    children: [
                      Center(
                        child: TextButton(onPressed: (){
                          showModalBottomSheet(context: context,
                              builder: (BuildContext context){
                            return Container(
                              child: ClipPath(
                                clipper: WaveClipperOne(reverse: true),
                                child: Container(
                                height: 320,
                                color: Color.fromRGBO(244, 83, 68, 1),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 30,),
                                      Row(
                                        children: [
                                          SizedBox(width: 6,),
                                          Text('Login',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 27,
                                            color: Colors.white,
                                          ),),
                                        ],
                                      ),
                                      SizedBox(height: 8,),
                                      Row(
                                        children: [
                                          SizedBox(width: 6,),
                                          Text('Please login to your account.',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),),
                                        ],
                                      ),
                                      SizedBox(height: 8,),
                                      Container(
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        width: 300.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Container(
                                          color: Colors.white,
                                          child: Center(
                                              child:TextFormField(
                                                decoration: InputDecoration(
                                                  hintText: '  Email Address'
                                                ),
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Roboto'
                                                ),


                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 18,),
                                      Container(
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        width: 300.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Container(
                                          color: Colors.white,
                                          child: Center(
                                            child:TextFormField(
                                              decoration: InputDecoration(
                                                  hintText: '  Password'
                                              ),
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Roboto'
                                              ),

                                            )
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 18,),
                                      MaterialButton(
                                          onPressed: () {
                                            Navigator.push (context, MaterialPageRoute(builder: (context)=>levelsScreen()));
                                          },
                                          child: Container(
                                            clipBehavior: Clip.antiAliasWithSaveLayer,
                                            width: 300.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              child: Center(
                                                child: Text(
                                                  'LOGIN',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(244, 83, 68, 1),
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                            )));
                              });

                        }, child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),)
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
