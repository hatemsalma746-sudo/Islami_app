import 'package:flutter/material.dart';
import 'package:islami/tabs/hadith/hadith_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/time/time_tab.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_images.dart';
import 'package:islami/utils/screen_utils.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> tabList=[
      QuranTab(),HadithTab(),SebhaTab(),RadioTab(),TimeTab()
    ];

  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    double height= context.height;
    double width = context.width;
    return Stack(
      children: [
        Image.asset(AppImages.quranPage,fit: BoxFit.fill,width:double.infinity,
        height: double.infinity,),
        Scaffold(
          backgroundColor: AppColors.blackCoverColor,
          bottomNavigationBar:BottomNavigationBar(
            selectedItemColor: AppColors.whiteColor,
              unselectedItemColor: AppColors.blackColor,
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.goldColor,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: selectedIndex,
              onTap: (index){
              selectedIndex=index;
              setState(() {
              });
              },
              items: [
               builtBottomNavigationBarItem(icon: AppImages.quranIcon, label: "Quran",index: 0),
                builtBottomNavigationBarItem(icon: AppImages.hadithIcon, label: "Hadith",index: 1),
                builtBottomNavigationBarItem(icon: AppImages.sebhaIcon, label: "Sabha",index: 2),
                builtBottomNavigationBarItem(icon: AppImages.radioIcon, label: "Radio",index: 3),
                builtBottomNavigationBarItem(icon: AppImages.timeIcon, label: "Time",index: 4)
              ] ),
          body: tabList[selectedIndex],

        )
      ]
    );
  }

  BottomNavigationBarItem builtBottomNavigationBarItem({
    required String icon, required String label, required int index
}){
    return BottomNavigationBarItem(
        icon:selectedIndex==index? Container(
            padding:EdgeInsets.symmetric(horizontal:20,vertical: 6),
            decoration: BoxDecoration(
                color: AppColors.blackContainerColor,
                borderRadius: BorderRadius.circular(66)
            ),
            child: ImageIcon(AssetImage(icon),size: 28,)
        ): ImageIcon(AssetImage(icon),),
             label: label);
}
}