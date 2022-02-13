import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../splashscreen/login_controller.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage:
                  Image.network(controller.googleAccount.value?.photoUrl ?? '')
                      .image,
              radius: 100,
            ),
            Text(
              controller.googleAccount.value?.displayName ?? '',
              style: Get.textTheme.headlineSmall,
            ),
            Text(
              controller.googleAccount.value?.email ?? '',
              style: Get.textTheme.bodyText1,
            ),
            ActionChip(
                label: Icon(Icons.logout),
                onPressed: () {
                  controller.logout();
                }),
          ],
        ),
      ),
    );
  }
}
