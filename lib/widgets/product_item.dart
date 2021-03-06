import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:palestine_app/value/colors.dart';
import 'package:palestine_app/widgets/custom_image.dart';

import 'custom_text.dart';

class ProductItem extends StatefulWidget {
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Container(
        width: 180.w,
        height: 260.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: Colors.grey[300]),
          // color: Colors.white,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(2.r),
                  child: Container(
                    width: Get.width,
                    constraints: BoxConstraints(
                        minHeight: 100.h, maxHeight: Get.height * 0.4),
                    child: Image.network(
                      'https://feedvisor.com/wp-content/uploads/2019/07/What-reports-are-needed-for-sponsored-products-advertising.jpg',
                      fit: BoxFit.fitWidth,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;

                        return Center(child: CupertinoActivityIndicator());
                      },
                      // errorBuilder: (context, error, stackTrace) => Center(
                      //     child: CustomPngImage(
                      //   width: Get.width,
                      //   // height: 180.h,
                      //   imageName: 'noimage',
                      //   boxFit: BoxFit.cover,
                      // )),
                    ),
                  ),
                ),
                Badge(
                  toAnimate: true,
                  shape: BadgeShape.square,
                  badgeColor: AppColors.primaryColor,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(8.r)),
                  badgeContent: CustomText(
                    '????????',
                    color: Colors.white,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 8.w),
              margin: EdgeInsets.only(left: 5.w, bottom: 2.h, right: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  CustomText(
                    "??????????",
                    maxLines: 2,
                  ),
                  CustomText(
                    "\$ 150",
                    maxLines: 2,
                    fontSize: 20.sp,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        CustomText(
                          "????????????: 12",
                          maxLines: 2,
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
