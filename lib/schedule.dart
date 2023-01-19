// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:http/http.dart' as http;
// import 'package:rxdart/rxdart.dart';
// import 'package:sih2022/payload_screen.dart';

// class ScheduleNotification extends StatefulWidget {
//   const ScheduleNotification({Key? key}) : super(key: key);

//   @override
//   State<ScheduleNotification> createState() => _ScheduleNotificationState();
// }

// class _ScheduleNotificationState extends State<ScheduleNotification> {
//   @override
//   void initState() {
//     super.initState();
//     NotificationApi.init();
//     listenNotifications();
//   }

//   void listenNotifications() =>
//       NotificationApi.onNotifications.stream.listen(onClickedNotification);

//   void onClickNotification(String? payload) => Navigator.of(context)
//       .push(MaterialPageRoute(builder: (context) => const PayloadScreen()));

  

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
