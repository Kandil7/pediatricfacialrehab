import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationHelper {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  /// Initialize notification
  initializeNotification() async {
    _configureLocalTimeZone();
    // const IOSInitializationSettings initializationSettingsIOS = IOSInitializationSettings();

    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings("ic_launcher");

    const InitializationSettings initializationSettings = InitializationSettings(
      // iOS: initializationSettingsIOS,
      android: initializationSettingsAndroid,
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  /// Set right date and time for notifications
  tz.TZDateTime _convertTime(int hour, int minutes) {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduleDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minutes,
    );
    if (scheduleDate.isBefore(now)) {
      scheduleDate = scheduleDate.add(const Duration(days: 1));
    }
    return scheduleDate;
  }

  Future<void> _configureLocalTimeZone() async {
    tz.initializeTimeZones();
    final String timeZone = await FlutterNativeTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(timeZone));
  }

  /// Scheduled Notification
  scheduledNotification({
    required int hour,
    required int minutes,
    required int id,
    //required String sound,
  }) async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      'It\'s time to Play',
      'See you there ',
      _convertTime(hour, minutes),
      NotificationDetails(
        android: AndroidNotificationDetails(
          //'your channel id $sound',
          'your channel id',
          'your channel name',
          channelDescription: 'your channel description',
          importance: Importance.max,
          priority: Priority.high,
          //sound: RawResourceAndroidNotificationSound(sound),
        ),
        //iOS: IOSNotificationDetails(sound: '$sound.mp3'),
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
      payload: 'It could be anything you pass',
    );
  }

  /// Request IOS permissions
  void requestIOSPermissions() {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  cancelAll() async => await flutterLocalNotificationsPlugin.cancelAll();
  cancel(id) async => await flutterLocalNotificationsPlugin.cancel(id);
}


// class NotificationManager {
//   var flutterLocalNotificationsPlugin;
//
//   NotificationManager() {
//     flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
//     initNotifications();
//   }
//
//   getNotificationInstance() {
//     return flutterLocalNotificationsPlugin;
//   }
//
//   void initNotifications() {
//     // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
//     var initializationSettingsAndroid =
//     new AndroidInitializationSettings('@mipmap/launcher_icon');
//     var initializationSettingsIOS = IOSInitializationSettings(
//         onDidReceiveLocalNotification: onDidReceiveLocalNotification);
//
//     var initializationSettings = InitializationSettings(
//         initializationSettingsAndroid, initializationSettingsIOS);
//
//     flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onSelectNotification: onSelectNotification);
//   }
//
//   void showNotificationDaily(
//       int id, String title, String body, int hour, int minute) async {
//     var time = new Time(hour, minute, 0);
//     await flutterLocalNotificationsPlugin.showDailyAtTime(
//         id, title, body, time, getPlatformChannelSpecfics());
//     print('Notification Succesfully Scheduled at ${time.toString()}');
//   }
//
//   getPlatformChannelSpecfics() {
//     var androidPlatformChannelSpecifics = AndroidNotificationDetails(
//         'your channel id', 'your channel name', 'your channel description',
//         importance: Importance.Max,
//         priority: Priority.High,
//         ticker: 'Medicine Reminder');
//     var iOSPlatformChannelSpecifics = IOSNotificationDetails();
//     var platformChannelSpecifics = NotificationDetails(
//         androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
//
//     return platformChannelSpecifics;
//   }
//
//   Future onSelectNotification(String payload) async {
//     print('Notification clicked');
//     return Future.value(0);
//   }
//
//   Future onDidReceiveLocalNotification(
//       int id, String title, String body, String payload) async {
//     return Future.value(1);
//   }
//
//   void removeReminder(int notificationId) {
//     flutterLocalNotificationsPlugin.cancel(notificationId);
//   }
// }
