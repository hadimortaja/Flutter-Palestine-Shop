import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:palestine_app/pages/full_cart.dart';
import 'package:palestine_app/value/colors.dart';
import 'package:palestine_app/widgets/custom_text.dart';
import 'package:palestine_app/pages/empty_cart.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List products = [];
    return !products.isEmpty
        ? Scaffold(body: EmptyCart())
        : Scaffold(
            bottomSheet: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                width: Get.width,
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: Colors.grey[300])),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        "الاجمالي :",
                        color: Get.isDarkMode
                            ? AppColors.primaryColor
                            : Colors.black,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        "20 شيكل ",
                        color: Get.isDarkMode
                            ? Colors.white
                            : AppColors.primaryColor,
                      ),
                      Spacer(),
                      Container(
                        height: 60.h,
                        width: 120.w,
                        decoration:
                            BoxDecoration(color: AppColors.primaryColor),
                        child: Center(
                          child: CustomText("تأكيد الشراء"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            appBar: AppBar(
                backgroundColor:
                    Get.isDarkMode ? Colors.transparent : Colors.white,
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: CustomText(
                  "السلة",
                  color: Get.isDarkMode ? AppColors.primaryColor : Colors.black,
                  fontSize: 25.sp,
                ),
                elevation: 0.0,
                leadingWidth: 200.w,
                leading: Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("tabbed");
                        },
                        child: Container(
                          width: 68.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Colors.red[50]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.h),
                                child: CustomText(
                                  "حذف الكل",
                                  fontSize: 18.sp,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return FullCart();
                    },
                    itemCount: 20,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            ),
          );
  }
}
