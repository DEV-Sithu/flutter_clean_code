import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseBackPressed extends StatelessWidget {
  const BaseBackPressed({super.key});

  @override
  Widget build(BuildContext context) =>  Padding(
    padding: const EdgeInsets.all(8.0),
    child: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    ),
  );
}
