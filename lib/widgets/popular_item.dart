import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:palestine_app/value/colors.dart';
import 'package:palestine_app/widgets/custom_image.dart';
import 'package:palestine_app/widgets/custom_text.dart';

class PopularItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            width: 170.w,
            height: 139.h,
            decoration: BoxDecoration(
                // color: Colors.white,
                border: Border.all(
                  color: Colors.grey[300],
                ),
                borderRadius: BorderRadius.circular(15.r)),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: Container(
                        width: 170.w,
                        height: 136.h,
                        child: Image.network(
                          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",

                          // "sdds",
                          fit: BoxFit.fill,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;

                            return Center(child: CupertinoActivityIndicator());
                          },
                          errorBuilder: (context, error, stackTrace) => Center(
                              child: CustomPngImage(
                            width: Get.width,
                            height: Get.height,
                            imageName: 'noimage',
                            boxFit: BoxFit.cover,
                          )),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 12.w,
                      top: 10.h,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    Positioned(
                      left: 11.w,
                      top: 10.h,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            width: 170.w,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: CustomText(
                    "اسم المنتج",
                    fontSize: 18.sp,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: CustomSvgImage(
                    imageName: 'cart',
                    height: 20.h,
                    width: 20.w,
                    color:
                        Get.isDarkMode ? AppColors.primaryColor : Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: CustomText(
              " 15 شيكل ",
              color: Get.isDarkMode ? Colors.white : Colors.black,
              fontSize: 18.sp,
            ),
          )
        ],
      ),
    );
  }
}
