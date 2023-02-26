import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job/features/app/domain/repositories/cach_helper.dart';
import 'package:job/features/app/domain/repositories/constant.dart';
import 'package:path/path.dart';

import 'features/app/data/repositories/notification_manager.dart';
import 'features/app/domain/usecases/app_cubit/bloc_observe.dart';
import 'features/app/domain/usecases/app_cubit/login_ cubit.dart';
import 'features/app/domain/usecases/app_cubit/login_state.dart';
import 'features/app/presentation/screens/camera1.dart';
import 'features/app/presentation/screens/home.dart';
import 'features/app/presentation/screens/levels.dart';
import 'features/app/presentation/screens/splashScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  // await NotificationService().initNotification();
// inili
  // Register the UI isolate's SendPort to allow for communication from the
  // background isolate.

  await CacheHelper.init();
  var active = CacheHelper.getData(key: 'active');
  Widget widget;
  if (active != null) {
    widget = levelsScreen();
  } else {
    widget = splashScreen();
  }

  runApp(MyApp(
    startwidget: widget,
  ));
}


