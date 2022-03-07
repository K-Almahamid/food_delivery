import 'package:flutter/material.dart';
import 'package:food_delivery/pages/splash/get_start.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: const GetStart(),
      title: const Text(
        'مرحبا بك في تطبيق مطعمنا',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.white),
      ),
      // image: Image.network(
      //     'https://i.pinimg.com/236x/34/57/30/345730a335becf43c2a3272e79074f9c.jpg'),
      backgroundColor: AppColors.mainColor,
      loaderColor: Colors.white,
      photoSize: 100,
    );
  }
}


