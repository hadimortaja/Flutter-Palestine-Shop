import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:palestine_app/server/app_get.dart';
import 'package:palestine_app/value/colors.dart';

import 'custom_image.dart';
import 'custom_text.dart';

class CustomNavBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppGet>(
      init: AppGet(),
      builder: (controller) => Directionality(
        textDirection: TextDirection.rtl,
        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(50.r)),
          child: BottomNavigationBar(
            selectedItemColor: Colors.black,
            elevation: 0,
            // backgroundColor: Colors.white,
            currentIndex: controller.indexScreen,
            onTap: controller.setIndexScreen,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            items: [
              BottomNavigationBarItem(
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSvgImage(
                      imageName: 'home',
                      height: 22.h,
                      width: 25.w,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomText(
                      'الرئيسية',
                      fontSize: 15.sp,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSvgImage(
                      imageName: 'home',
                      height: 22.h,
                      width: 25.w,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomText(
                      'الرئيسية',
                      fontSize: 15.sp,
                      color: Colors.grey,
                    ),
                  ],
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomPngImage(
                      imageName: 'category',
                      height: 22.h,
                      width: 25.w,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomText(
                      'التصنيفات',
                      fontSize: 15.sp,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomPngImage(
                      imageName: 'category',
                      height: 22.h,
                      width: 25.w,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomText(
                      'التصنيفات',
                      fontSize: 15.sp,
                      color: Colors.grey,
                    ),
                  ],
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSvgImage(
                      imageName: 'cart',
                      height: 22.h,
                      width: 25.w,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomText(
                      'السلة',
                      fontSize: 15.sp,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSvgImage(
                      imageName: 'cart',
                      height: 22.h,
                      width: 25.w,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomText(
                      'السلة',
                      fontSize: 15.sp,
                      color: Colors.grey,
                    ),
                  ],
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSvgImage(
                      imageName: 'more',
                      height: 22.h,
                      width: 25.w,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomText(
                      'المزيد',
                      fontSize: 15.sp,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSvgImage(
                      imageName: 'more',
                      height: 22.h,
                      width: 25.w,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomText(
                      'المزيد',
                      fontSize: 15.sp,
                      color: Colors.grey,
                    ),
                  ],
                ),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
