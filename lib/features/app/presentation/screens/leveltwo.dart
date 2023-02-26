import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:job/features/app/presentation/widgets/component.dart';
import 'package:job/utils/colors.dart';
import 'camera1.dart';

class levelTwo extends StatefulWidget {
  levelTwo({Key? key}) : super(key: key);

  @override
  State<levelTwo> createState() => _levelTwoState();
}

class _levelTwoState extends State<levelTwo> {
  double rating = 2 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(CLevel2, "Level 2",context),
      body:levelsContent(context, CLevel2)



    );
  }
}
