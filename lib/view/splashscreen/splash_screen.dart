import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:noteapp/view/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    splash_navigator(context);
    return Scaffold(
      body: Container(
        height: 600,
        decoration: const BoxDecoration(
          image:  DecorationImage(
            image: AssetImage('asset/image/images.jpg')
          )
        ),
      ),
    );
    
  }
}
// ignore: non_constant_identifier_names
Future<void> splash_navigator(context) async {
  await Future.delayed(const Duration(seconds: 2));
Get.offAll(const ScreenHome(title: '', descr: '', notes: ''));

}