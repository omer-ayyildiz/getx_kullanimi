import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_task_to_do/sayac_controller.dart';
import 'package:get_x_task_to_do/sayfa2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SayacController _controller = Get.put(SayacController());
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          floatingButton(
            _controller,
            Icons.add,
            () {
              _controller.arttir();
              print(_controller.getSayac());
            },
            ' 4',
          ),
          floatingButton(
            _controller,
            Icons.call_received_outlined,
            () {
              _controller.azalt();
            },
            '3',
          ),
          floatingButton(
            _controller,
            Icons.sunny,
            () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            '2',
          ),
          floatingButton(
            _controller,
            Icons.pages,
            () {
              Get.to(() => const Sayfa2());
            },
            '1',
          ),
          floatingButton(
            _controller,
            Icons.language,
            () {
              Get.updateLocale(
                Get.locale == const Locale('tr', 'TR')
                    ? const Locale('en', 'US')
                    : const Locale('tr', 'TR'),
              );
            },
            '0',
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: const TextStyle(fontSize: 19),
              textAlign: TextAlign.center,
            ),
            Obx(
              () => Text(
                _controller.getSayac().toString(),
                style: const TextStyle(fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton floatingButton(
    SayacController _controller,
    IconData icon,
    void Function()? onpress,
    String tag,
  ) {
    return FloatingActionButton(
      heroTag: tag,
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.green,
      onPressed: onpress,
      child: Icon(icon),
    );
  }
}
