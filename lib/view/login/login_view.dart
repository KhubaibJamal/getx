import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/login_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login GetX'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: loginController.emailController.value,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              TextFormField(
                controller: loginController.password.value,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 40),
              Obx(
                () => InkWell(
                  onTap: () {
                    loginController.loginApi();
                  },
                  child: loginController.loading.value
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Container(
                          height: 45,
                          color: Colors.green,
                          child: const Center(
                            child: Text('Login'),
                          ),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
