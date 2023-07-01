import 'package:daily_routine_app/ui/calendar_screen/calendar_screen.dart';
import 'package:daily_routine_app/ui/home_screen/home_screen.dart';
import 'package:daily_routine_app/ui/settings_screen/settings_screen.dart';
import 'package:daily_routine_app/ui/task_screen/task_screen.dart';
import 'package:daily_routine_app/utils/colors.dart';
import 'package:daily_routine_app/utils/images.dart';
import 'package:flutter/cupertino.dart';
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
  List<String> appBars = [];
  @override
  void initState() {
    screens.addAll( const [
      HomeScreen(),
      TaskScreen(),
      CalendarScreen(),
      SettingsScreen()
      ]);
    appBars = ['Home Screen','Tasks','Calendar','Settings'];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(appBars[currentIndex]),
        actions: [
          ZoomTapAnimation(
            onTap: (){
              showModalBottomSheet(
                isScrollControlled: true,
                 backgroundColor: AppColors.c1C1243,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),),
                  context: context,
                  builder: (context){
                return Container(
                  height: height*(5/7),
                  margin: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.h,),
                        Text('Add Task',style:Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500),),
                        SizedBox(height: 20.h,),
                        TextField(
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            labelText: 'Task Name',
                            labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.7)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.r),
                              borderSide: BorderSide(color: AppColors.c643FDB),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.r),
                              borderSide: BorderSide(color: AppColors.c643FDB),
                            ),
                          ),
                        ),
                        SizedBox(height: 25.h),
                        TextField(
                          maxLines: 4,
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            label: Text('Description'),
                            labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.8)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.r),
                              borderSide: BorderSide(color: AppColors.c643FDB),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.r),
                              borderSide: BorderSide(color: AppColors.c643FDB),
                            ),
                          ),
                        ),

                      ],
                  ),
                );
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25,vertical: 6),
              height: 45.w,
              width: 40.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: AppColors.cFF8A00),
              child: Icon(Icons.add),
            ),
          ),


        ],
      ),
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
                    ZoomTapAnimation(child: IconButton(onPressed: (){currentIndex = 0; setState(() {});}, icon: SvgPicture.asset(AppImages.home,height: 33.h,width: 33.h,colorFilter: ColorFilter.mode(currentIndex!=0?Colors.grey:Colors.white, BlendMode.srcATop),))),
                    ZoomTapAnimation(child: IconButton(onPressed: (){currentIndex = 1; setState(() {});}, icon: SvgPicture.asset(AppImages.task,height: 33.r,width: 33.r,colorFilter: ColorFilter.mode(currentIndex!=1?Colors.grey:Colors.white, BlendMode.srcATop),))),
                    ZoomTapAnimation(child: IconButton(onPressed: (){currentIndex = 2; setState(() {});}, icon: SvgPicture.asset(AppImages.calendar,height: 33.r,width: 33.r,colorFilter: ColorFilter.mode(currentIndex!=2?Colors.grey:Colors.white, BlendMode.srcATop),))),
                    ZoomTapAnimation(child: IconButton(onPressed: (){currentIndex = 3; setState(() {});}, icon: SvgPicture.asset(AppImages.settings,height: 33.r,width: 33.r,colorFilter: ColorFilter.mode(currentIndex!=3?Colors.grey:Colors.white, BlendMode.srcATop),))),
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}