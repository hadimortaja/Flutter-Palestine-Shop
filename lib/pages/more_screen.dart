import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palestine_app/value/colors.dart';
import 'package:palestine_app/widgets/custom_image.dart';
import 'package:palestine_app/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 100.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: CustomText(
                "المعلومات الشخصية",
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
                              "الوضع الداكن",
                              fontSize: 20.sp,
                            ),
                          ],
                        ),
                        Spacer(),
                        Transform.scale(
                          scale: 0.7,
                          child: CupertinoSwitch(
                              activeColor: AppColors.primaryColor,
                              value: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                        )
                      ],
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
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20.h,
                          color: Colors.grey,
                        )
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
                          color: Colors.grey[100],
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
