import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:job/reminder.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'gallery.dart';
import 'levelfive.dart';
import 'levelfour.dart';
import 'levelone.dart';
import 'levelsix.dart';
import 'levelthree.dart';
import 'leveltwo.dart';

class levelsScreen extends StatelessWidget {
   levelsScreen({Key? key}) : super(key: key);
  double value = 40.0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
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
                                'Levels',
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
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(height: 45,),
                    MaterialButton(
                        onPressed: () {
                            Navigator.push (context, MaterialPageRoute(builder: (context)=>levelSix()));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: 300.0,
                          height: 63.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            color: Color.fromRGBO(197, 71, 95, 1),
                            child: Center(
                              child: Text(
                                'Level 6',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),

                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 25,),
                    MaterialButton(
                        onPressed: () {
                            Navigator.push (context, MaterialPageRoute(builder: (context)=>levelFive()));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: 300.0,
                          height: 63.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            color: Color.fromRGBO(238, 89, 118, 1),
                            child: Center(
                              child: Text(
                                'Level 5',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),

                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 25,),
                    MaterialButton(
                        onPressed: () {
                            Navigator.push (context, MaterialPageRoute(builder: (context)=>levelFour()));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: 300.0,
                          height: 63.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            color: Color.fromRGBO(74, 180, 142, 1),
                            child: Center(
                              child: Text(
                                'Level 4',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),

                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 25,),
                    MaterialButton(
                        onPressed: () {
                            Navigator.push (context, MaterialPageRoute(builder: (context)=>levelThree()));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: 300.0,
                          height: 63.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            color: Color.fromRGBO(92, 221, 175, 1),
                            child: Center(
                              child: Text(
                                'Level 3',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),

                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 25,),
                    MaterialButton(
                        onPressed: () {
                            Navigator.push (context, MaterialPageRoute(builder: (context)=>levelTwo()));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: 300.0,
                          height: 63.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            color: Color.fromRGBO(65, 166, 216, 1),
                            child: Center(
                              child: Text(
                                'Level 2',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),

                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 25,),
                    MaterialButton(
                        onPressed: () {
                            Navigator.push (context, MaterialPageRoute(builder: (context)=>levelOne()));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: 300.0,
                          height: 63.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            color: Color.fromRGBO(75, 195, 255, 1),
                            child: Center(
                              child: Text(
                                'Level 1',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),

                              ),
                            ),
                          ),
                        )),

                  ],
                ),
                          SizedBox(width: 10,),
                          Container(
                            width: 20,
                            height: 540,
                            child: SfSlider.vertical(
    min: 0.0,
    max: 100.0,
    value: value,
    interval: 20,
    showTicks: true,
    showLabels: true,
    enableTooltip: true,
    minorTicksPerInterval: 1,
    onChanged: (dynamic value) {

    })
    )],
            )








          ],
        ),
        drawer: Container(
          width: 200,
          child: Drawer(
            child: ListView(

              padding: const EdgeInsets.all(0),
              children: [
                const DrawerHeader(

                  decoration: BoxDecoration(
                    color: Color.fromRGBO(244, 83, 68, 1),
                  ), //BoxDecoration
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Color.fromRGBO(244, 83, 68, 1),
                    ),
                    accountName: Text(
                      "Welcome",
                      style: TextStyle(fontSize: 11),
                    ),
                    accountEmail: Text('User Name',
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),),
                    currentAccountPictureSize: Size.square(50),
                    currentAccountPicture: CircleAvatar(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('images/Profile Image-1.png'),
                      ),
                    ), //circleAvatar
                  ), //UserAccountDrawerHeader
                ),
                SizedBox(height: 30,),
                ListTile(
                  leading: IconButton(onPressed: (){}, icon: Image.asset('images/gallery.png'),),
                  title: const Text('Gallery '),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertDialog(

                      title: Container(
                        color: Color.fromRGBO(230, 230, 230, 1),
                        child: Column(

                          children: [

                            IconButton(onPressed: (){
                              Navigator.pop(context, 'OK');
                            }, icon: CircleAvatar(

                              radius: 60,
                              foregroundImage: AssetImage('images/x.png'),
                              backgroundColor: Colors.white,
                            ),),
                            SizedBox(height: 5,),
                            Center(child: Text('Enter Your Password')),
                            SizedBox(height: 5,),
                            Container(
                              child: TextFormField(

                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: '    Password'


                                ),
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Roboto'
                                ),


                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              width:200,

                              height: 35.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              color: Colors.white,


                            ),
                              ),
                            SizedBox(height: 5,),
                            MaterialButton(
                                onPressed: () {
                                  Navigator.push (context, MaterialPageRoute(builder: (context)=>gallery()));
                                },
                                child: Container(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  width: 150.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        'Submit',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )),

                          ],
                        ),
                      ),


                    ),));
                  },
                ),
                ListTile(
                  leading:IconButton(onPressed: (){}, icon: Image.asset('images/Reminder.png'),),
                  title: const Text(' Reminder '),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>reminder(),));
                  },
                ),
                ListTile(
                  leading:IconButton(onPressed: (){}, icon: Image.asset('images/language.png'),),
                  title: const Text(' Language '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: IconButton(onPressed: (){}, icon: Image.asset('images/noun_Info_1174604.png'),),
                  title: const Text(' INFO '),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertDialog(
                      title: Container(
                        color: Color.fromRGBO(230, 230, 230, 1),

                        child: Column(
                          children: [
                            IconButton(onPressed: (){
                              Navigator.pop(context, 'OK');
                            }, icon: CircleAvatar(

                              radius: 60,
                              foregroundImage: AssetImage('images/x.png'),
                              backgroundColor: Colors.white,
                            ),),
                            SizedBox(height: 20,),
                            Center(
                              child: const Text('INFO',
                                style: TextStyle(
                                    fontSize: 22
                                ),),
                            ),
                            SizedBox(height: 5,),
                            Text('This app was created by PT6 of the faculty of physiotherapy KFS University\n'
                                ' group 7, with the assistance of students'
                                ' of The Faculty of Artificial Intelligence KFS university, under the supervision of'
                                ' Prof. Dr Fayez Al-Shami',
                              style: TextStyle(
                                  fontSize: 15
                              ),),
                          ],
                        ),
                      ),


                    ),));
                  },
                ),
                ListTile(
                  leading: IconButton(onPressed: (){}, icon: Image.asset('images/share.png'),),
                  title: const Text('Share'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 210,),
                ListTile(
                  leading: IconButton(onPressed: (){}, icon: Image.asset('images/Screenshot 2023-01-10 095030.png'),),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
