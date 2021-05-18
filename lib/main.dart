import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:palestine_app/services/theme_notifier.dart';
import 'package:palestine_app/splash.dart';
import 'package:palestine_app/services/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness:
        Platform.isAndroid ? Brightness.dark : Brightness.light,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarDividerColor: Colors.grey,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () {
        return GetMaterialApp(
          // locale: Locale('ar'),
          theme: Themes.light,
          darkTheme: Themes.dark,
          themeMode: ThemeService().theme,
          // theme: ThemeData(
          //   fontFamily: "zahra",
          //   scaffoldBackgroundColor: Colors.white,
          // ),
          debugShowCheckedModeBanner: false,
          home: Splash(),
        );
      },
    );
  }
}
