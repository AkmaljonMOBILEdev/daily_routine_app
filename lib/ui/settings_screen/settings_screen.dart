import 'package:daily_routine_app/ui/settings_screen/widgets/language_edit_widget.dart';
import 'package:daily_routine_app/utils/icons.dart';
import 'package:daily_routine_app/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();

}

class _SettingsScreenState extends State<SettingsScreen> {
  bool initialval = false;
  ThemeData? appTheme;
  ThemeData themLight = ThemeData.light();
  ThemeData themeDark = ThemeData.dark();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Text('Settings'),
            SizedBox(width: 10.w,),
            SvgPicture.asset(AppIcons.settings,color: Colors.white,)
          ],
        ),
        actions: [
          ZoomTapAnimation(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25,vertical: 6),
              height: 32.w,
              width: 75.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),border: Border.all(color: Colors.white)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Text('Edit'),
                  SvgPicture.asset(AppIcons.edit,color: Colors.white,)
                ],
              )
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(AppImages.avatar),
            SizedBox(height: 15.h,),
            Text('Tien Tom',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            Text('TienTom3010@gmail.com',style: TextStyle(fontSize: 12,color: AppColors.cA29EB6),),
            SizedBox(height: 150,),

            Container(
              height:80.h ,
              width:327.w ,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),border: Border.all(color: Colors.white)),
              child: Center(
                child: ListTile(
                  leading: Container(
                    height: 48.h,
                    width: 48.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.r),color: AppColors.cEFF1F3),
                    child: Icon(CupertinoIcons.moon_fill),
                  ),
                  title: Text('Dark theme'),
                  trailing:Switch(
                    onChanged: (h) {
                      setState(() {
                        appTheme = initialval ? themLight : themeDark;
                        initialval = h;
                      });
                    },
                    value: initialval,
                  ),



                ),
              ),
            ),

            SizedBox(height: 30.h,),

            Container(
              height:80.h ,
              width:327.w ,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),border: Border.all(color: Colors.white)),
              child: Center(
                child: ListTile(
                  leading: Container(
                    height: 48.h,
                    width: 48.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.r),color: AppColors.cEFF1F3),
                    child: Icon(Icons.language),
                  ),
                  title: Text('Language'),
                  trailing: IconButton(
                    icon:  Icon(Icons.keyboard_arrow_right_rounded, color: Colors.white,), onPressed: () {
                      showModalBottomSheet<void>(
                        context: context, builder: (BuildContext context) {
                          return Container(
                            height: 250.h,
                            color: AppColors.c643FDB,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children:[
                                   EditLanguage(title: 'English', photo: AppImages.avatar),
                                    SizedBox(height: 20.w,),
                                    EditLanguage(title: 'Uzbek', photo: AppImages.avatar),
                                    SizedBox(height: 20.w,),
                                    EditLanguage(title: 'Russian', photo: AppImages.avatar),

                                  ],
                              ),
                            ),
                        );
                      },
                    );
                  },


                  ),
                ),
              ),
            ),






          ],
        ),
      ),
    );
  }
}
