import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_task_to_do/ceviri.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Messages(),
      locale: Get.deviceLocale, //cihaz dili algıla
      //  locale: const Locale('tr', 'TR'), //varsayılan dil
      fallbackLocale: const Locale('en', 'UK'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
