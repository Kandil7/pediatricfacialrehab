import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:job/features/app/domain/usecases/app_cubit/login_%20cubit.dart';
import 'package:job/features/app/domain/usecases/app_cubit/login_state.dart';
import 'package:job/utils/colors.dart';
import 'package:job/features/app/domain/repositories/cach_helper.dart';

import '../../data/repositories/notification_manager.dart';
import '../widgets/component.dart';

class reminder extends StatelessWidget {
  const reminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: defaultAppBar(CLevelMain, 'Reminder',context),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showTimePicker(context: context, initialTime: TimeOfDay.now())
                  .then((value) {
                DateFormat('hh:mm a').format(DateTime(0, 0, 0, value!.hour, value.minute));
                cubit.hourController = value.hour??9;
                cubit.minuteController = value.minute??00;

                CacheHelper.saveData(key: 'hour_reminder', value: value.hour??9);
                CacheHelper.saveData(key: 'minute_reminder', value: value.minute??00);
                 cubit.hour_reminder=CacheHelper.getData(key:'hour_reminder');
                 cubit.minute_reminder=CacheHelper.getData(key:'minute_reminder');
                cubit.scheduledNotification(hour: value.hour, minutes: value.minute, id: 0);
                cubit.timeController = '${cubit.hour_reminder??9}:${cubit.minute_reminder??00}';

              });
            },
            child: Icon(Icons.edit),
            backgroundColor: CLevelMain,
          ),
          body: Column(
            children: [

              reminderWidget(
                context: context,
                title: 'Reminder',
                subtitle: 'Reminder',
                color: CLevelMain,
                time: cubit.timeController??'${cubit.hourController??9}:${cubit.minuteController??00}'
              ),
            ],
          ),
        );
      }
    );
  }

  reminderWidget({required BuildContext context, required String title, required String subtitle, required String time, required Color color}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: CLevelMain,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: CLevelMain,
                ),
              ),
            ],
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: CLevelMain,
            ),
          ),
        ],
      ),
    );
  }
}
