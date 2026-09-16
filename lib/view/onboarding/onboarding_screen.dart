import 'package:flutter/material.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_images.dart';
import 'package:islami/utils/app_route.dart';
import 'package:islami/utils/app_styles.dart';
import 'package:islami/utils/screen_utils.dart';
import 'package:islami/view/widgets/dots_indicator.dart';

import 'onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController=PageController();
  List<OnboardingModel> onboardingList=[
    OnboardingModel(title: "Welcome To Islami App", imagePath: AppImages.welcomeBoarding),
    OnboardingModel(title: "Welcome To Islami", imagePath: AppImages.kaba,description:"We Are Very Excited To Have You In Our \nCommunity"),
    OnboardingModel(title: "Reading the Quran", imagePath: AppImages.quran,description:"Read, and your Lord is the Most Generous"),
    OnboardingModel(title: "Bearish", imagePath: AppImages.bearish,description:"Praise the name of your Lord, the Most \nHigh"),
    OnboardingModel(title: "Holy Quran Radio", imagePath: AppImages.mic,description:"You can listen to the Holy Quran Radio \nthrough the application for free and easily")
  ];
  int currentIndex=0;
  @override
  void initState() {
    pageController.addListener(()
    {
      currentIndex=pageController.page!.toInt();
      setState(() {
      });
    });
  }
  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height= context.height;
    double width= context.width;
    return Scaffold(
      backgroundColor: AppColors.blackBgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.002),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppImages.header,height: height*0.15,),
              SizedBox(height: height*0.05,),
              Expanded(
                flex: 8,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: onboardingList.length,
                    itemBuilder: (context,index){
                 return Column(
                    children: [
                      Image.asset(onboardingList[index].imagePath,height: height*0.4,),
                      SizedBox(height: height*0.02,),
                      Text(onboardingList[index].title,
                        style: AppStyles.bold24gold,textAlign:TextAlign.center,),
                      SizedBox(height: height*0.03,),
                      if(onboardingList[index].description!=null)
                      Text(onboardingList[index].description!,style: AppStyles.bold20gold,
                          textAlign:TextAlign.center),
                    ],
                  );
                }),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: currentIndex!=0? (){
                    pageController.animateToPage(currentIndex-1, duration: Duration(milliseconds: 3000), curve: Curves.bounceInOut);
                  }:null, child:Text(currentIndex!=0?"Back":"",style: AppStyles.bold16gold,)),
                  Row(
                   children: [
                     DotsIndicator(active: currentIndex==0),
                     DotsIndicator(active: currentIndex==1),
                     DotsIndicator(active: currentIndex==2),
                     DotsIndicator(active: currentIndex==3),
                     DotsIndicator(active: currentIndex==4),
                   ],
                  ),
                  TextButton(onPressed: (){
                    if(currentIndex==4){
                      Navigator.pushReplacementNamed(context, AppRoute.homeRouteName);
                    }
                    else{
                      pageController.animateToPage(currentIndex+1, duration: Duration(milliseconds: 3000), curve: Curves.bounceInOut);
                    }
                  }, child:Text(currentIndex!=onboardingList.length-1?"Next":"Finish",style: AppStyles.bold16gold,))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
