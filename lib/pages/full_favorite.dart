import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:palestine_app/value/colors.dart';
import 'package:palestine_app/widgets/custom_image.dart';
import 'package:palestine_app/widgets/custom_text.dart';

class FullFavorite extends StatefulWidget {
  @override
  _FullFavoriteState createState() => _FullFavoriteState();
}

class _FullFavoriteState extends State<FullFavorite> {
  SlidableController slidableController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Slidable(
            actionPane: SlidableDrawerActionPane(),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: GestureDetector(
                  onTap: () {
                    print("delete");
                  },
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete,
                          size: 25.h,
                          color: Colors.red[300],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomText(
                          "حذف",
                          color: Colors.red[300],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
            child: Container(
              height: 100.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: Colors.grey[300])),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://feedvisor.com/wp-content/uploads/2019/07/What-reports-are-needed-for-sponsored-products-advertising.jpg')),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r))),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          "تايتل 1 1 1",
                          color: Get.isDarkMode
                              ? AppColors.primaryColor
                              : Colors.black,
                        ),
                        // Spacer(),

                        CustomText(
                          "السعر : 25 شيكل",
                          color: Get.isDarkMode ? Colors.white : Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
      ],
    );
  }
}
