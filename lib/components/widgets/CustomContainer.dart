import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
   CustomContainer({super.key,required this.widget});
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
        height: 50.h,
        width: 100.w,
        color: Theme.of(context).colorScheme.primary,
        child: widget);
  }
}
