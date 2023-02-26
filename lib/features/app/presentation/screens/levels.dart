import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:job/features/app/domain/usecases/app_cubit/login_%20cubit.dart';
import 'package:job/features/app/presentation/screens/reminder.dart';
import 'package:job/features/app/presentation/screens/splashScreen.dart';
import 'package:job/utils/colors.dart';
import 'package:slider_controller/slider_controller.dart';
import '../../domain/repositories/constant.dart';
import '../widgets/component.dart';
import 'gallery.dart';
import 'levelfive.dart';
import 'levelfour.dart';
import 'levelone.dart';
import 'levelsix.dart';
import 'levelthree.dart';
import 'leveltwo.dart';

class levelsScreen extends StatefulWidget {
  String? username;

  levelsScreen({Key? key, this.username}) : super(key: key);


  @override
  State<levelsScreen> createState() => _levelsScreenState();
}

class _levelsScreenState extends State<levelsScreen> {
  double values = 40.0;
  String dropdownValue = 'English';


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 120,
          flexibleSpace: Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              clipper:
              WaveClipperOne(reverse: false),
              child:
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                height: 142,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(0, 20),
                    bottomRight: Radius.circular(30),
                  ),
                  color: CLevelMain,
                ),
              ),
            ),
          ),

          //backgroundColor: Color.fromRGBO(244, 83, 68, 1),
          title: Text(
            'Levels',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 34,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      levelsMB(context, levelSix(), CLevel6, 'Level 6'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      levelsMB(context, levelFive(), CLevel5, 'Level 5'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      levelsMB(context, levelFour(), CLevel4, 'Level 4'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      levelsMB(context, levelThree(), CLevel3, 'Level 3'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      levelsMB(context, levelTwo(), CLevel2, 'Level 2'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      levelsMB(context, levelOne(), CLevel1, 'Level 1'),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width * 0.000000001,
                        height: MediaQuery.of(context).size.height * 0.72,


                        child: RotatedBox(
                          quarterTurns: 3,
                          // child:BalloonSlider(
                          //     value: 0.5,
                          //     ropeLength: 55,
                          //     showRope: true,
                          //     onChangeStart: (val) {},
                          //     onChanged: (val) {},
                          //     onChangeEnd: (val) {},
                          //     color: Colors.indigo
                          //
                          // )
                          child: SliderController(
                            isDraggable: true,
                            sliderDecoration: SliderDecoration(
                              activeColor: Color.fromRGBO(244, 83, 68, 1),
                              inactiveColor: Colors.grey.withOpacity(0.5),

                              //height: MediaQuery.of(context).size.height * 0.75,


                            ),
                            value: 100,

                            onChanged: (dynamic value) {
                              setState(() {
                                values = value;
                              });

                              print('slider value : $value');
                            },),

                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        drawer: Container(
          width: 200,
          child: Drawer(
            child: ListView(

              children: [
                 DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(244, 83, 68, 1),
                  ), //BoxDecoration
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 83, 68, 1),
                    ),
                    accountName: Text(
                      "Welcome",
                      style: TextStyle(fontSize: 11),
                    ),
                    accountEmail: Text(
                      AppCubit.get(context).playerName??AppCubit.get(context).usernameController.text,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    currentAccountPictureSize: Size.square(50),
                    currentAccountPicture: CircleAvatar(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            AssetImage('images/Profile Image-1.png'),
                      ),
                    ), //circleAvatar
                  ), //UserAccountDrawerHeader
                ),
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Image.asset('images/gallery.png'),
                  ),
                  title: const Text('Gallery '),
                  onTap: () {
                    var passwordControllerG=TextEditingController();

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlertDialog(
                            backgroundColor: Color.fromRGBO(230, 230, 230, 1),
                            icon: IconButton(
                                onPressed: () {
                                  Navigator.pop(context, 'OK');
                                },
                                icon: Icon(Icons.close)),
                            title: Column(
                              children: [
                                Center(
                                    child: Text(
                                  'Please enter your password',
                                  style: TextStyle(fontSize: 16),
                                )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: TextFormField(
                                    controller: passwordControllerG,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        hintText: 'Password'),
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'Roboto'),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                MaterialButton(
                                    onPressed: () {
                                      if (passwordControllerG.text == AppCubit.get(context).playerPassword) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Gallery()));
                                      }
                                      else{
                                        Navigator.pop(context, 'OK');
                                      }
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
                        ));
                  },
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Image.asset('images/Reminder.png'),
                  ),
                  title: const Text(' Reminder '),
                  onTap: () {
                    var passwordControllerR=TextEditingController();

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlertDialog(
                            backgroundColor: Color.fromRGBO(230, 230, 230, 1),
                            icon: IconButton(
                                onPressed: () {
                                  Navigator.pop(context, 'OK');
                                },
                                icon: Icon(Icons.close)),
                            title: Column(
                              children: [
                                Center(
                                    child: Text(
                                      'Please enter your password',
                                      style: TextStyle(fontSize: 16),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: TextFormField(
                                    controller: passwordControllerR,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(20),
                                        ),
                                        hintText: 'Password'),
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'Roboto'),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                MaterialButton(
                                    onPressed: () {
                                      if (passwordControllerR.text == AppCubit.get(context).playerPassword) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => reminder()));
                                      }
                                      else{
                                        Navigator.pop(context, 'OK');
                                      }
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
                        ));
                  },
                ),
                ListTile(

                  leading: IconButton(
                    onPressed: () {},
                    icon: Image.asset('images/language.png'),
                  ),
                  title: DropdownButton<String>(
                    value: dropdownValue,
                    onChanged: ( newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['English', 'Arabic']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Image.asset('images/noun_Info_1174604.png'),
                  ),
                  title: const Text(' INFO '),
                  onTap: () {

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => defaultAlertDialog(context),
                        ));
                  },
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Image.asset('images/share.png'),
                  ),
                  title: const Text('Share'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon:
                        Image.asset('images/Screenshot 2023-01-10 095030.png'),
                  ),
                  title: const Text('Logout'),
                  onTap: () {
                    AppCubit.get(context).logout();
                    navigateToAndFinish(context: context, widget: splashScreen());
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
