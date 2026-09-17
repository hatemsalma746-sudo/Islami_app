import 'package:flutter/material.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_images.dart';
import 'package:islami/utils/app_styles.dart';
import 'package:islami/utils/screen_utils.dart';

class RadioContainer extends StatelessWidget {
  String reader;
  String image;
  final IconData? icon;
  final IconData? icon2;
  final double imageOffset;
  RadioContainer({super.key,required this .reader,this.image=AppImages.maskGroup,
    this.icon,  this.imageOffset = 0,this.icon2
  });

  @override
  Widget build(BuildContext context) {
    double height= context.height;
    double width=context.width;
    return Container(
        margin: EdgeInsets.symmetric(vertical: height*0.001),
        padding: EdgeInsets.symmetric(vertical: height*0.01),
        decoration: BoxDecoration(
            color: AppColors.goldColor,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image:AssetImage(image),fit: BoxFit.fill,)
        ),
        child: Stack(
          children: [
        Positioned.fill(
        child: Transform.translate(
            offset: Offset(0, imageOffset),
      child: Image.asset(
        image,
        fit: BoxFit.fill,),
    ),
    ), Column(
            children: [
              Text(reader,style: AppStyles.bold20black,),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){},
                    icon:Icon(icon??Icons.play_arrow,color: AppColors.blackColor,size: 30)),
                  IconButton(onPressed: (){},
                    icon:Icon(icon2??Icons.volume_up,color: AppColors.blackColor,size: 30,)),
          
                ],)
            ],
          ),
        ])
    );
  }
}
