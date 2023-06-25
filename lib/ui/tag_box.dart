import 'package:daily_routine_app/ui/calendar_screen/calendar_screen.dart';
import 'package:daily_routine_app/ui/home_screen/home_screen.dart';
import 'package:daily_routine_app/ui/settings_screen/settings_screen.dart';
import 'package:daily_routine_app/ui/task_screen/task_screen.dart';
import 'package:daily_routine_app/utils/colors.dart';
import 'package:daily_routine_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TagBox extends StatefulWidget {
  const TagBox({super.key});

  @override
  State<TagBox> createState() => _TagBoxState();
}

class _TagBoxState extends State<TagBox> {
  int currentIndex=0;
  List<Widget> screens=[];
  @override
  void initState() {
    screens.addAll( const [
      HomeScreen(),
      TaskScreen(),
      CalendarScreen(),
      SettingsScreen()
      ]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
            screens[currentIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: AppColors.c643FDB,),
                height: 70.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ZoomTapAnimation(child: IconButton(onPressed: (){currentIndex = 0; setState(() {});}, icon: SvgPicture.asset(AppImages.home,height: 33.h,width: 33.h,color: AppColors.white,))),
                    ZoomTapAnimation(child: IconButton(onPressed: (){currentIndex = 1; setState(() {});}, icon: SvgPicture.asset(AppImages.task,height: 33.r,width: 33.r,color: AppColors.white,))),
                    ZoomTapAnimation(child: IconButton(onPressed: (){currentIndex = 2; setState(() {});}, icon: SvgPicture.asset(AppImages.calendar,height: 33.r,width: 33.r,color: AppColors.white,))),
                    ZoomTapAnimation(child: IconButton(onPressed: (){currentIndex = 3; setState(() {});}, icon: SvgPicture.asset(AppImages.settings,height: 33.r,width: 33.r,color: AppColors.white,))),
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}