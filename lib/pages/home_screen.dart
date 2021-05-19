import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:palestine_app/widgets/custom_image.dart';
import 'package:palestine_app/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  List<String> images = [
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/beauty-products-1603140461.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*",
    "https://46ba123xc93a357lc11tqhds-wpengine.netdna-ssl.com/wp-content/uploads/2019/09/amazon-alexa-event-sept-2019.jpg",
    "https://i.insider.com/5ed95c393f7370198527eea3?width=700",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: !Get.isDarkMode ? Colors.white : Colors.grey.shade900,
      appBar: AppBar(
        leadingWidth: 40.w,
        leading: Center(
            child: Icon(Icons.search,
                color: Get.isDarkMode ? Colors.white : Colors.black)),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Get.isDarkMode ? Colors.transparent : Colors.white,
        actions: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    CustomText(
                      "مرحبا بك ...",
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      fontSize: 25.sp,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    CustomText(
                      "هادي غسان مرتجى",
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      fontSize: 25.sp,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.r),
                  child: Container(
                    width: Get.width,
                    height: 170.h,
                    child: Swiper(
                      // curve: Curves.easeInOut,
                      autoplay: true,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    images[index],
                                  )),
                              borderRadius: BorderRadius.circular(25.r)),
                        );
                      },
                      itemCount: images.length,
                      viewportFraction: 0.8,

                      scale: 0.8,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
