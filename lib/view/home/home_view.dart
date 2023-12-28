import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';
import 'package:getx/view/detail/detail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(controller.count.value.toString())),
          ElevatedButton(
            onPressed: () {
              controller.increment();
            },
            child: const Text("counter"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const DetailView());
            },
            child: const Text("navigate to detail screen"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const DetailView());
            },
            child: const Text("navigate to login screen"),
          ),
        ],
      ),
    );
  }
}
