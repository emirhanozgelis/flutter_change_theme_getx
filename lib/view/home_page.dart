import 'package:change_theme/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          Obx(
            () => Switch(
                value: controller.isDark.value,
                onChanged: controller.onChangeTheme),
          )
        ],
      ),
      body: pageBody(),
    );
  }

  Widget pageBody() {
    return Container(
      width: Get.width,
      height: Get.height,
      alignment: Alignment.center,
      child: Wrap(
        spacing: 20,
        direction: Axis.vertical,
        children: [
          welcomeText(),
          tempButton(),
        ],
      ),
    );
  }

  Widget welcomeText() {
    return Text(
      "Welcome !!! ",
      style: Get.textTheme.bodyText1,
    );
  }

  Widget tempButton() {
    return ElevatedButton(
      onPressed: () {},
      style: Get.theme.elevatedButtonTheme.style,
      child: const Text('Button'),
    );
  }
}
