import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:job/features/app/presentation/widgets/component.dart';
import 'package:job/utils/colors.dart';
import 'camera1.dart';

class levelThree extends StatefulWidget {
  levelThree({Key? key}) : super(key: key);

  @override
  State<levelThree> createState() => _levelThreeState();
}

class _levelThreeState extends State<levelThree> {
  double rating = 2 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(CLevel3, "Level 3",context),
      body: levelsContent(context, CLevel3)


    );
  }
}
