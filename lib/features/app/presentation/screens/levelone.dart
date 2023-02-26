import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:job/features/app/presentation/widgets/component.dart';
import 'package:job/utils/colors.dart';
import 'camera1.dart';

class levelOne extends StatefulWidget {
   levelOne({Key? key}) : super(key: key);

  @override
  State<levelOne> createState() => _levelOneState();
}

class _levelOneState extends State<levelOne> {
  double rating = 2 ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: defaultAppBar( CLevel1,"Level 1",context),
        body:levelsContent(context, CLevel1)
    
    
      ),
    );
  }
}
