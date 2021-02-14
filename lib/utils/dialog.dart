import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomWidgets {
  static showErrorSnachbar(title, content) {
    Get.snackbar(title.toString(), content.toString(),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white);
  }

  static showSuccessSnachbar(title, content) {
    Get.snackbar(title.toString(), content.toString(),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white);
  }
}
