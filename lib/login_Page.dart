import 'package:bharatq/splashscreen/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home/homeBottom.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Obx(() {
          if (controller.googleAccount.value == null)
            return buildLoginButton();
          else
            return buildProfileView();
        }),
      ),
    );
  }

  Widget buildProfileView() {
    return HomeBottomBar();
  }

  FloatingActionButton buildLoginButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
      },
      icon: Image.asset('assets/images/googlesign.png'),
      label: Text("Sign in With Google"),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }
}
