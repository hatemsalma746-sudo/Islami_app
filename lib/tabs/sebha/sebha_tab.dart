import 'package:flutter/material.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_images.dart';
import 'package:islami/utils/app_styles.dart';
import 'package:islami/utils/screen_utils.dart';

class SebhaTab extends StatefulWidget {

  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> azkar =["سبحان الله", "الحمد لله", "الله أكبر",];
  List<String> ayat =["سَبِّحِ اسْمَ رَبِّكَ الأعلى", "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ", "وَرَبَّكَ فَكَبِّرْ",];
  int counter = 0;
  int index =0;
  double angle=0;

  @override
  Widget build(BuildContext context) {
    double height=context.height;
    double width=context.width;
    return Stack(
      children: [
        Image.asset(AppImages.sebhaPage,width: double.infinity,height: double.infinity
          ,fit: BoxFit.fill,),
        Scaffold(
         backgroundColor: AppColors.blackCoverColor,
          body: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppImages.header,height: height*0.22,),
              Text(ayat[index],style: AppStyles.bold36White,textAlign: TextAlign.center,),
              Stack(alignment: AlignmentGeometry.topCenter,
                children: [
                  Image.asset(AppImages.sabhaHead),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          counter++;
                          angle+=10;
                          if(counter%33==0){
                            index++;
                            if(index==azkar.length){
                              counter=0;
                              index=0;
                            }
                          }
                          setState(() {
                          });
                        },
                        child: Padding(
                          padding:EdgeInsets.only(top:height*0.09),
                          child: Transform.rotate(
                              angle: angle,
                              child: Image.asset(AppImages.sabhaShape)),

                        ),
                      ),
                     Padding(
                       padding:EdgeInsets.only(top: height*0.07),
                       child: Column(
                         children: [
                         Text(azkar[index],style:AppStyles.bold36White,),
                         SizedBox(height: height*0.02,),
                         Text("$counter",style: AppStyles.bold36White,)
                       ],),
                     )
                    ],
                  ),


                ],
              )
            ])
        )],
          );

  }
}