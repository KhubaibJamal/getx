import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/detail_controller.dart';
import 'package:getx/controller/home_controller.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find();
    final DetailController detailController = Get.put(DetailController());
    return Scaffold(
      appBar: AppBar(
        title: Text("${homeController.count}"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.withOpacity(detailController.opacity.value),
                ),
              ),
              Obx(
                () => Slider(
                  value: detailController.opacity.value,
                  onChanged: (value) {
                    detailController.increment(value);
                  },
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Notification'),
                  Obx(
                    () => Switch(
                      value: detailController.notification.value,
                      onChanged: (value) {
                        detailController.setNotification(value);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
