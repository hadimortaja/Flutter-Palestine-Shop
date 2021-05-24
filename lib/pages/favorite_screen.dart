import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:palestine_app/pages/empty_favorite.dart';
import 'package:palestine_app/pages/full_cart.dart';
import 'package:palestine_app/pages/full_favorite.dart';
import 'package:palestine_app/value/colors.dart';
import 'package:palestine_app/widgets/custom_text.dart';
import 'package:palestine_app/pages/empty_cart.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List favoriteList = [];
    return !favoriteList.isEmpty
        ? Scaffold(body: EmptyFavorite())
        : Scaffold(
            backgroundColor:
                !Get.isDarkMode ? Colors.white : Colors.grey.shade900,
            appBar: AppBar(
              actions: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
              ],
              backgroundColor:
                  Get.isDarkMode ? Colors.transparent : Colors.white,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: CustomText(
                "المفضلة",
                color: Get.isDarkMode ? AppColors.primaryColor : Colors.black,
                fontSize: 25.sp,
              ),
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return FullFavorite();
                    },
                    itemCount: 1,
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
