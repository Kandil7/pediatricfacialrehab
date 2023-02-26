import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:job/features/app/presentation/screens/levels.dart';

import '../../../../utils/colors.dart';
import '../screens/camera1.dart';

Widget levelsContent (BuildContext context, Color color){
  return ListView(
    children: [

      Row(
        children: [

          Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));
                  },
                  icon: CircleAvatar(
                    backgroundColor: color,
                    radius: 65,
                    child: CircleAvatar(

                      radius: 60,
                      backgroundImage: AssetImage('images/asset-1.png'),
                    ),
                  ),
                  iconSize: 150,
                ),
                SizedBox(
                  height:MediaQuery.of(context).size.height *0.01,
                ),
                RatingBar.builder(
                    minRating: 1,
                    itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                    updateOnDrag: true,
                    itemSize: 24,
                    onRatingUpdate: (rating)=> rating)
              ]),
          SizedBox(width: MediaQuery.of(context).size.width *0.05,),
          Column(
            children: [
              IconButton(onPressed: () {
                Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));


              },
                icon: CircleAvatar(
                  backgroundColor: color,
                  radius: 65,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/asset-2.png'),
                  ),
                ),
                iconSize: 150,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.01,
              ),
              RatingBar.builder(
                  minRating: 1,
                  itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                  updateOnDrag: true,
                  itemSize: 24,
                  onRatingUpdate: (rating)=> rating )
            ],
          ),

        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.01,),
      Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width *0.05,),

          Column(
            children: [
              IconButton(onPressed: () {

                Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));


              },
                icon:
                CircleAvatar(
                  backgroundColor: color,
                  radius: 65,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/asset-3.png'),
                  ),
                ),
                iconSize: 140,

              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.001,
              ),
              RatingBar.builder(
                  minRating: 1,
                  itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                  updateOnDrag: true,
                  itemSize: 24,
                  onRatingUpdate: (rating)=> rating )
            ],
          ),
          SizedBox(width: MediaQuery.of(context).size.width *0.05,),
          Column(
            children: [
              IconButton(onPressed: (){
                Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));


              }, icon:  CircleAvatar(
                backgroundColor: color,
                radius: 65,
                child: CircleAvatar(

                  radius: 60,
                  backgroundImage: AssetImage('images/asset-4.png'),
                ),
              ),iconSize: 140,),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.001,
              ),
              RatingBar.builder(
                  minRating: 1,
                  itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                  updateOnDrag: true,
                  itemSize: 24,
                  onRatingUpdate: (rating)=> rating )
            ],
          ),

        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.01,),
      Row(
        children: [
          Column(
            children: [
              IconButton(onPressed: (){

                Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));


              }, icon: CircleAvatar(
                backgroundColor: color,
                radius: 65,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/asset-4.png'),
                ),
              ),
                iconSize: 140,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.001,
              ),
              RatingBar.builder(
                  minRating: 1,
                  itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                  updateOnDrag: true,
                  itemSize: 24,
                  onRatingUpdate: (rating)=> rating )
            ],
          ),
          SizedBox(width: MediaQuery.of(context).size.width *0.1),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push (context, MaterialPageRoute(builder: (context)=>cameraOne()));

                }, icon:   CircleAvatar(
                radius: 65,
                  backgroundColor: color,
                  child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/asset-5.png'),
              ),
                ),
                iconSize: 140,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.001,
              ),
              RatingBar.builder(
                  minRating: 1,
                  itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,),
                  updateOnDrag: true,
                  itemSize: 24,
                  onRatingUpdate: (rating)=>rating),
            ],
          ),

        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.01,),


    ],
  );
}

AppBar defaultAppBar(Color color, String label,BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      onPressed: () {
        navigateToAndFinish(context: context, widget: levelsScreen());
      },
    ),
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
            color: color,
          ),
        ),
      ),
    ),

    //backgroundColor: Color.fromRGBO(244, 83, 68, 1),
    title: Text(
      label,
      style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 34,
          color: Colors.white,
          fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}
navigateTo({required BuildContext context, required Widget widget}) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder:
              (context) =>
              widget));
}
navigateToAndFinish({required BuildContext context, required Widget widget}) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder:
              (context) =>
          widget));
}
MaterialButton levelsMB(
    BuildContext context, Widget widget, Color color, String label) {
  return MaterialButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget));
      },
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width:MediaQuery.of(context).size.width *0.73,
        height: MediaQuery.of(context).size.height *0.077,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          color: color,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ));
}

AlertDialog buildAlertDialog(BuildContext context) {
  return AlertDialog(
    title: Container(
      color: Color.fromRGBO(230, 230, 230, 1),
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context, 'OK');
            },
            icon: CircleAvatar(
              radius: 60,
              foregroundImage: AssetImage('images/x.png'),
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: const Text(
              'INFO',
              style: TextStyle(fontSize: 22),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'This app was created by PT6 of the faculty of physiotherapy KFS University\n'
            ' group 7, with the assistance of students'
            ' of The Faculty of Artificial Intelligence KFS university, under the supervision of'
            ' Prof. Dr Fayez Al-Shami',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    ),
  );
}

Widget defaultAlertDialog(BuildContext context) {
  return AlertDialog(
    elevation: 0,
    buttonPadding: EdgeInsets.all(5),
    backgroundColor: Colors.grey[200],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    title: Text(
      'INFO',
      style: TextStyle(fontSize: 22),
    ),
    icon: Align(
      alignment: Alignment.topRight,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context, 'OK');
        },
        icon: Icon(
          Icons.cancel_outlined,
          size: 40,
        ),
      ),
    ),
    content: Container(
      child: Text(
        '''This app was created by PT6 of the faculty of physiotherapy KFS University group 7, with the assistance of studentsof The Faculty of Artificial Intelligence KFS university, under the supervision of Prof. Dr Fayez Al-Shami''',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    ),
  );
}
// path_3

// double path_3_xs = size.width / 414;
// double path_3_ys = size.height / 896;
//
// Path path_3 = Path()
//   ..moveTo(0 * path_3_xs, 0 * path_3_ys)
//   ..lineTo(415.72 * path_3_xs, 0 * path_3_ys)
//   ..lineTo(415.72 * path_3_xs, 51.42 * path_3_ys)
//   ..cubicTo(415.72 * path_3_xs, 85.33 * path_3_ys,388.15 * path_3_xs, 112.82 * path_3_ys,354.14 * path_3_xs, 112.82 * path_3_ys)
//   ..cubicTo(354.14 * path_3_xs, 112.82 * path_3_ys,167.83 * path_3_xs, 112.82 * path_3_ys,79.3 * path_3_xs, 112.82 * path_3_ys)
//   ..cubicTo(78.32 * path_3_xs, 112.82 * path_3_ys,80.53 * path_3_xs, 112.8 * path_3_ys,79.3 * path_3_xs, 112.82 * path_3_ys)
//   ..cubicTo(-5.87 * path_3_xs, 114.35 * path_3_ys,0 * path_3_xs, 184.2 * path_3_ys,0 * path_3_xs, 184.2 * path_3_ys)
//   ..lineTo(0 * path_3_xs, 0 * path_3_ys)
//   ..close();
// path_3 = path_3.shift(Offset(-1.81 * path_3_xs, -16 * path_3_ys));
//
// Paint path_3_fillPaint = Paint()..style = PaintingStyle.fill..color = Color(0xfff45341);
//
// canvas.drawPath(path_3, path_3_fillPaint);
// class MyPainter extends CustomPainter {
//   Color color;
//
//   MyPainter({@required this.color});
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = new Paint()
//       ..color = Color(0xfff45341)
//       ..strokeCap = StrokeCap.round
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 2;
//     double path_3_xs = MediaQuery.of(context).size.width / 414;
//     double path_3_ys = MediaQuery.of(context).size.height / 896;
//     // double path_3_ys = size.height / 896;
//
//     Path path_3 = Path()
//       ..moveTo(0 * path_3_xs, 0 * path_3_ys)
//       ..lineTo(415.72 * path_3_xs, 0 * path_3_ys)
//       ..lineTo(415.72 * path_3_xs, 51.42 * path_3_ys)
//       ..cubicTo(415.72 * path_3_xs, 85.33 * path_3_ys, 388.15 * path_3_xs,
//           112.82 * path_3_ys, 354.14 * path_3_xs, 112.82 * path_3_ys)
//       ..cubicTo(354.14 * path_3_xs, 112.82 * path_3_ys, 167.83 * path_3_xs,
//           112.82 * path_3_ys, 79.3 * path_3_xs, 112.82 * path_3_ys)
//       ..cubicTo(78.32 * path_3_xs, 112.82 * path_3_ys, 80.53 * path_3_xs,
//           112.8 * path_3_ys, 79.3 * path_3_xs, 112.82 * path_3_ys)
//       ..cubicTo(-5.87 * path_3_xs, 114.35 * path_3_ys, 0 * path_3_xs,
//           184.2 * path_3_ys, 0 * path_3_xs, 184.2 * path_3_ys)
//       ..lineTo(0 * path_3_xs, 0 * path_3_ys)
//       ..close();
//     canvas.drawPath(path, paint);
//   }
// }

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double path_3_xs = size.width / 414;
    double path_3_ys = size.height / 896;
    // double path_3_ys = size.height / 896;

    Path path_3 = Path()
      ..moveTo(0 * path_3_xs, 0 * path_3_ys)
      ..lineTo(415.72 * path_3_xs, 0 * path_3_ys)
      ..lineTo(415.72 * path_3_xs, 51.42 * path_3_ys)
      ..cubicTo(415.72 * path_3_xs, 85.33 * path_3_ys, 388.15 * path_3_xs,
          112.82 * path_3_ys, 354.14 * path_3_xs, 112.82 * path_3_ys)
      ..cubicTo(354.14 * path_3_xs, 112.82 * path_3_ys, 167.83 * path_3_xs,
          112.82 * path_3_ys, 79.3 * path_3_xs, 112.82 * path_3_ys)
      ..cubicTo(78.32 * path_3_xs, 112.82 * path_3_ys, 80.53 * path_3_xs,
          112.8 * path_3_ys, 79.3 * path_3_xs, 112.82 * path_3_ys)
      ..cubicTo(-5.87 * path_3_xs, 114.35 * path_3_ys, 0 * path_3_xs,
          184.2 * path_3_ys, 0 * path_3_xs, 184.2 * path_3_ys)
      ..lineTo(0 * path_3_xs, 0 * path_3_ys)
      ..close();
    return path_3;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
AppBar buildAppBarDemo() {
  return AppBar(
    title: Text(
      'Levels',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
    toolbarHeight: 80,
    backgroundColor: CLevelMain,
    elevation: 0.0,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(0),
      child: ClipPath(
        clipper: Customshape(),
        child: Container(
          height: 50,
          color: CLevelMain,
          child: Center(
              child: Text(
                "Subscribe to Proto Coders Point",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        ),
      ),
    ),
  );
}
// AppBar(
// toolbarHeight: 130,
// backgroundColor: Colors.transparent,
// elevation: 0.0,
// flexibleSpace: ClipPath(
// clipper: Customshape(),
// child: Container(
// height: 250,
// width: MediaQuery.of(context).size.width,
// color: Colors.red,
// child: Center(child: Text("Subscribe to Proto Coders Point",style: TextStyle(fontSize: 20,color: Colors.white),)),
// ),
// ),
// ),





// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter - www.tutorialkart.com'),
//       ),
//       body: ListView(children: <Widget>[
//         Container(
//           width: 400,
//           height: 400,
//           child: CustomPaint(
//             painter: OpenPainter(),
//           ),
//         ),
//       ]),
//     );
//   }
// }
//
// class OpenPainter extends SfThumbShape {
//   @override
//    paint(Canvas canvas, Size size) {
//     var paint1 = Paint()
//       ..color = Color(0xff995588)
//       ..style = PaintingStyle.fill;
//     canvas.drawRect(Offset(100, 100) & const Size(200, 150), paint1);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }










