import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:job/features/app/presentation/widgets/component.dart';
import 'package:job/utils/colors.dart';

import 'camera1.dart';

class levelFive extends StatefulWidget {
  levelFive({Key? key}) : super(key: key);

  @override
  State<levelFive> createState() => _levelFiveState();
}

class _levelFiveState extends State<levelFive> {
  double rating = 2 ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: defaultAppBar(CLevel5, "Level 5",context),
        body: levelsContent(context, CLevel5)
    
    
      ),
    );
  }
}
