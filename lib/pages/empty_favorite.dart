import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palestine_app/value/colors.dart';
import 'package:palestine_app/widgets/custom_image.dart';
import 'package:palestine_app/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(top: 200.h),
          width: Get.width,
          child: Center(
            child: CustomSvgImage(
              imageName: "emptyfavorite",
              height: 200.h,
              width: 200.w,
            ),
          ),
        ),

        CustomText(
          "لا يوجد شيء في المفضلة",
          color: Get.isDarkMode ? Colors.white : Colors.black,
          fontSize: 25.sp,
        ),
        SizedBox(
          height: 60.h,
        ),
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 20.w),
        //   child: GestureDetector(
        //     onTap: () {
        //       print("tapped");
        //     },
        //     child: Container(
        //       alignment: Alignment.bottomCenter,
        //       width: Get.width,
        //       height: 50.h,
        //       decoration: BoxDecoration(
        //           color: AppColors.primaryColor,
        //           borderRadius: BorderRadius.circular(10.r)),
        //       child: Center(
        //         child: CustomText(
        //           "تسوق الآن",
        //         ),
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
