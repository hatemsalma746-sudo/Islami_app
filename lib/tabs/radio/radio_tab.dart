import 'package:flutter/material.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_images.dart';
import 'package:islami/utils/app_styles.dart';
import 'package:islami/utils/screen_utils.dart';
import 'package:islami/view/widgets/radio_container.dart';

class RadioTab extends StatelessWidget {
  RadioTab({super.key,});

  @override
  Widget build(BuildContext context) {
    double height=context.height;
    double width= context.width;
    return Stack(
      children: [
        Image.asset(AppImages.radioPage,width: double.infinity,
          height: double.infinity,fit: BoxFit.fill,),
        Scaffold(
          backgroundColor: AppColors.blackCoverColor,
          body: Padding(
            padding:EdgeInsets.symmetric(horizontal:width*0.04 ),
            child: Column(
              children: [
                Image.asset(AppImages.header),
                Expanded(
                  child: DefaultTabController(length: 2, child: Column(
                    children: [
                      Container(
                        height: height*0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.blackCoverColor
                        ),
                        child: TabBar(
                          labelColor: AppColors.blackColor,
                            labelStyle: AppStyles.bold16black,
                            unselectedLabelStyle: AppStyles.bold16White,
                            dividerColor: AppColors.transparentColor,
                            indicatorColor: AppColors.goldColor,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator:BoxDecoration(
                              color: AppColors.goldColor,
                                borderRadius:BorderRadius.circular(16)
                            ),
                            tabs: [
                          Text("Radio"),
                          Text("Reciters",)
                        ]),
                      ),
                      Expanded(
                        child: TabBarView(children: [
                          ListView(children: [
                            RadioContainer(reader: "Radio Ibrahim Al-Akdar"),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: "Radio Al-Qaria Yassen",
                              image: AppImages.maskGroup2,imageOffset: 30,icon:Icons.pause,),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: "Radio Ahmed Al-trabulsi"),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: "Radio Addokali Mohammad Alalim"),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: "Radio Al-Minshawi"),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: "Radio Mohamed refat"),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: "Radio yasser el_dosary"),

                          ],),
                          ListView(children: [
                            RadioContainer(reader: " Ibrahim Al-Akdar"),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: " Al-Qaria Yassen",
                              image: AppImages.maskGroup2,imageOffset: 30,icon:Icons.pause,),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: " Ahmed Al-trabulsi"),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: " Addokali Mohammad Alalim"),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: " Al-Minshawi"),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: " Mohamed refat"),
                            SizedBox(height: height*0.01,),
                            RadioContainer(reader: " yasser el_dosary"),

                          ],)
                        ]),
                      )

                    ],
                  )),
                ),
              ],
            ),
          )
        )
      ],);
  }
}