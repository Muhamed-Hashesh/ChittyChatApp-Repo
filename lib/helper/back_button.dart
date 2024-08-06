import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

IconButton backIconButton(BuildContext context) {
  return IconButton(
    onPressed: () {
      Get.back();
    },
    icon: Icon(
      Ionicons.chevron_back_outline,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      size: 35,
    ),
  );
}
