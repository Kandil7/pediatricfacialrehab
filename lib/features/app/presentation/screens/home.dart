import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job/utils/colors.dart';

import '../../data/repositories/notification_manager.dart';
import '../../domain/usecases/app_cubit/login_ cubit.dart';
import '../../domain/usecases/app_cubit/login_state.dart';
import '../widgets/component.dart';
import 'levels.dart';

class MyApp extends StatelessWidget {
  final Widget? startwidget;
  MyApp({
    this.startwidget,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..createDatabase()..initializeNotification(),
      // providers: [
      //   BlocProvider(
      //     create: (context) => AppCubit()..createDatabase()..initializeNotification(),
      //   ),],
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.deepOrange,
            ),
            debugShowCheckedModeBanner: false,
            home: startwidget,
          );
        },
      ),
    );
  }
}
