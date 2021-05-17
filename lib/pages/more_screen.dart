import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palestine_app/services/theme_notifier.dart';
import 'package:palestine_app/value/colors.dart';
import 'package:palestine_app/widgets/custom_image.dart';
import 'package:palestine_app/widgets/custom_text.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  // bool _value = ;
  bool theme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: context.theme.backgroundColor,

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 25.w),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                  color: Get.isDarkMode
                                      ? Colors.white
                                      : Colors.black)),
                        ),
                        Positioned(
                          bottom: -3.h,
                          left: -8.w,
                          child: Container(
                            height: 25.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(
                    "مرحبا بك .. هادي غسان مرتجى",
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: CustomText(
                "المعلومات الشخصية",
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Container(
                height: 3.h,
                width: 60.w,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            MoreScreenItem(
              imagename: 'user',
              onTap: () {},
              title: "sjldsjldjls",
              subtitle: "sdsdsds",
            ),
            MoreScreenItem(
              imagename: 'user',
              onTap: () {},
              title: "sjldsjldjls",
              subtitle: "sdsdsds",
            ),
            MoreScreenItem(
              imagename: 'user',
              onTap: () {},
              title: "sjldsjldjls",
              subtitle: "sdsdsds",
            ),
            MoreScreenItem(
              imagename: 'user',
              onTap: () {},
              title: "sjldsjldjls",
              subtitle: "sdsdsds",
            ),
            MoreScreenItem(
              imagename: 'user',
              onTap: () {},
              title: "sjldsjldjls",
              subtitle: "sdsdsds",
            ),
            MoreScreenItem(
              imagename: 'user',
              onTap: () {},
              title: "sjldsjldjls",
              subtitle: "sdsdsds",
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: CustomText(
                "الإعدادات",
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Container(
                height: 3.h,
                width: 60.w,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: ThemeService().switchTheme,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Container(
                  width: Get.width,
                  height: 55.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          Container(
                            height: 40.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: CustomSvgImage(
                                imageName: "user",
                                height: 25.h,
                                width: 25.w,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              CustomText(
                                "الوضع الداكن",
                                fontSize: 20.sp,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ],
                          ),
                          Spacer(),
                          // GestureDetector(
                          //     child: Icon(
                          //       Icons.arrow_forward_ios,
                          //       color: Colors.grey,
                          //       size: 20.h,
                          //     ))
                          // Transform.scale(
                          //   scale: 0.7,
                          //   child: CupertinoSwitch(
                          //       activeColor: AppColors.primaryColor,
                          //       value: theme,
                          //       onChanged: (value) {
                          //         setState(() {
                          //           theme = value;
                          //         });
                          //       }),
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Container(
                width: Get.width,
                height: 55.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        Container(
                          height: 40.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: CustomSvgImage(
                              imageName: "user",
                              height: 25.h,
                              width: 25.w,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomText(
                              "تسجيل الخروج",
                              fontSize: 20.sp,
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
                            ),
                          ],
                        ),
                        Spacer(),
                        // Icon(
                        //   Icons.arrow_forward_ios,
                        //   size: 20.h,
                        //   color: Colors.grey,
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}

class MoreScreenItem extends StatelessWidget {
  final Function onTap;
  final String imagename;
  final String title;
  final String subtitle;
  MoreScreenItem({this.onTap, this.imagename, this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Container(
              width: Get.width,
              height: 55.h,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: CustomSvgImage(
                            imageName: imagename,
                            height: 25.h,
                            width: 25.w,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3.h,
                          ),
                          CustomText(
                            title,
                            color: Get.isDarkMode
                                ? AppColors.primaryColor
                                : Colors.black,
                            fontSize: 20.sp,
                          ),
                          CustomText(
                            subtitle,
                            fontSize: 15.sp,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                      Spacer(),
                      // Icon(
                      //   Icons.arrow_forward_ios,
                      //   size: 20.h,
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
