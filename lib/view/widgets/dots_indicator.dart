import 'package:flutter/material.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/screen_utils.dart';

class DotsIndicator extends StatelessWidget {
  bool active;
   DotsIndicator({super.key, required this.active});
  @override
  Widget build(BuildContext context) {
    double height=context.height;
    double width= context.width;
    return AnimatedContainer(duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: width*0.01),
      height:height*0.01,
      width:active ?width*0.04: width*0.02 ,
      decoration: BoxDecoration(
        color:active ? AppColors.goldColor:AppColors.greyColor,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
