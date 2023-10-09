import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SayacController extends GetxController {
  late var _sayac = 0.obs;
  int getSayac() {
    return _sayac.value;
  }

  setSayac(var yeniDeger) {
    _sayac.value = yeniDeger;
  }

  void arttir() {
    _sayac += 1;
    Get.snackbar('Artti $_sayac', 'Merhaba değer arttı');
  }

  void azalt() {
    _sayac -= 1;
    Get.showSnackbar(
      const GetSnackBar(
        title: 'de',
        message: 'asdasd',
        duration: Duration(seconds: 1),
        dismissDirection: DismissDirection.startToEnd,
      ),
    );
  }
}
