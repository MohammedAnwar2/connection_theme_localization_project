import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
   CustomContainer({super.key,required this.widget});
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:EdgeInsetsDirectional.only(top: 30.h),
      child: Container(

          alignment: Alignment.center,
          height: 50.h,
          width: 100.w,
          color: Theme.of(context).colorScheme.primary,
          //color: Colors.blue,
          child: widget),
    );
  }
}
