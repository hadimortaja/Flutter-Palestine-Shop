import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palestine_app/value/colors.dart';
import 'package:palestine_app/widgets/custom_image.dart';
import 'package:palestine_app/widgets/custom_text.dart';

class CategoryItem extends StatelessWidget {
  final int index;
  CategoryItem({this.index});

  List<Map<String, Object>> categories = [
    {
      'categoryName': "هواتف",
      'categoryImagesPath':
          "https://virtualrapid.com/wp-content/uploads/2020/10/Best-Budget-Phone-Under-200.jpg"
    },
    {
      'categoryName': "ملابس",
      'categoryImagesPath':
          "https://www.incimages.com/uploaded_files/image/1920x1080/getty_507716250_226806.jpg"
    },
    {
      'categoryName': "أحذية",
      'categoryImagesPath':
          "https://www.rei.com/dam/content_team_010818_52427_htc_running_shoes_hero2_lg.jpg"
    },
    {
      'categoryName': "الصحة والجمال",
      'categoryImagesPath':
          "https://modo3.com/thumbs/fit630x300/104821/1474363582/%D8%B9%D8%A7%D9%84%D9%85_%D8%A7%D9%84%D8%B5%D8%AD%D8%A9_%D9%88%D8%A7%D9%84%D8%AC%D9%85%D8%A7%D9%84.jpg"
    },
    {
      'categoryName': "أجهزة كومبيوتر",
      'categoryImagesPath':
          "https://www.macworld.co.uk/cmsdata/features/3776008/apple_macbook_air_m1_2020_review_87_thumb800.jpg"
    },
    {
      'categoryName': "أثاث",
      'categoryImagesPath':
          "https://ii1.pepperfry.com/media/catalog/product/r/o/800x880/royal-wing-chair-in-blue-color-by-dreamzz-furniture-royal-wing-chair-in-blue-color-by-dreamzz-furnit-6hcjya.jpg"
    },
    {
      'categoryName': "ساعات",
      'categoryImagesPath':
          "140,q_100,w_1080/v1/assets/images/13471916/2021/2/9/a9a87e2a-f8c8-4953-9e5f-b8c1b8f4ff201612846540076-boAT-Unisex-Black-Storm-Smart-Watch-621612846538704-1.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   // image:OctoImage(

              //   // )
              //    NetworkImage(
              //     categories[index]['categoryImagesPath'],
              //   ),
              // ),
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                color: Colors.grey[300],
              )),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Image.network(
                categories[index]['categoryImagesPath'],
                fit: BoxFit.cover,
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
              )),
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          height: 100.h,
          width: 100.w,
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomText(
          categories[index]['categoryName'],
          fontSize: 18.sp,
          color: Get.isDarkMode ? AppColors.primaryColor : Colors.black,
        )
      ],
    );
  }
}
