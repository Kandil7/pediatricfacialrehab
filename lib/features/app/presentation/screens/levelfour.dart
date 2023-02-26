import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:job/features/app/presentation/widgets/component.dart';
import 'package:job/utils/colors.dart';
import 'camera1.dart';

class levelFour extends StatefulWidget {
  levelFour({Key? key}) : super(key: key);

  @override
  State<levelFour> createState() => _levelFourState();
}

class _levelFourState extends State<levelFour> {
  double rating = 2 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(CLevel4, "Level 4", context),
      body: levelsContent(context, CLevel4)


    );
  }
}
