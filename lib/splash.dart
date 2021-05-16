import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:palestine_app/pages/main_screen.dart';
import 'package:palestine_app/value/animate_do.dart';
import 'package:palestine_app/widgets/custom_image.dart';
import 'package:palestine_app/widgets/custom_text.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    var delay = Duration(seconds: 3);

    Future.delayed(delay, () {
      Get.to(() => MainScreen());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ZoomIn(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomSvgImage(
              width: 260.03.w,
              height: 200.55.h,
              imageName: 'logo',
            ),
            SizedBox(
              height: 15.h,
            ),
            // Center(
            //   child: CustomText(
            //     "متجر فلسطين",
            //     fontWeight: FontWeight.w700,
            //     fontSize: 40.sp,
            //   ),
            // )
          ],
        ),
      ),
    ));
  }
}
