import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../../../utils/colors.dart';
import '../widgets/component.dart';

class Gallery extends StatefulWidget {
  Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _Gallery();
}

class _Gallery extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:defaultAppBar(CLevelMain,"Gallery",context),
      body: Center(
        child: Text("Gallery"),
      )
    );
  }
}
