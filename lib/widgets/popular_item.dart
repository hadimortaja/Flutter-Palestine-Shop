import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PopularItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey[300],
          ),
          borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    
                      "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                )),
              ),
              Positioned(
                right: 12.w,
                top: 10.h,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.grey.shade800,
                ),
              ),
              Positioned(
                right: 10.w,
                top: 7.h,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 12.w,
                top: 32.h,
                child: Container(
                  padding: EdgeInsets.all(10.h),
                  color:Colors.white
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
