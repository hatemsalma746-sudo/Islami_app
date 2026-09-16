import 'package:flutter/material.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_images.dart';

class BottomWidget extends StatelessWidget {
  String label;
  String images;
   BottomWidget({super.key,required this.images,required this.label});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.blackColor,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.goldColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(images),size: 28,),
            label: label,),

        ] );
  }
}
