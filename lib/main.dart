import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:visionmate/Screens/glasses_Screen.dart';
import 'package:visionmate/Screens/login_Screen.dart';
import 'package:visionmate/Screens/onboard_screen.dart';
import 'package:visionmate/Screens/register_Screen.dart';
import 'package:visionmate/Screens/splash_screen.dart';
import 'package:visionmate/Screens/text_Screen.dart';
import 'Screens/homeScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(402, 874),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: OnboardScreen(),
            routes: {
              "/splash": (context)=> splashScreen(),
              "/OnboardScreen":(context)=>OnboardScreen(),
              "/registerScreen":(context)=>register(),
              "/login":(context) => loginScreen(),
              "/Homescreen":(context) => Homescreen(),
              "/ReadTextScreen":(context) =>ReadTextPage(),
              "/FindGlassesScreen":(context) => GlassesScreen(),
            },
            initialRoute: "/splash",

          );
        });
  }
}
