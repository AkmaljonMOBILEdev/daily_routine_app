import 'package:daily_routine_app/ui/calendar_screen/widgets/calendar_button.dart';
import 'package:daily_routine_app/utils/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  List<String> daysOfWeek = ['MON','TUE','WED','THU','FRI','SUT','SUN'];
  List<String> numOfWeek = ['1','2','3','4','5','6','7'];
  int currentIndex = 0;
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                SizedBox(height: 10.h,),
                Text('June',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 28.sp),),
                SizedBox(height: 20.h,),
                SizedBox(
                  height: 72.h,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:List.generate(7, (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color:AppColors.c1C1243,border: Border.all(color: AppColors.c643FDB)),
                        child: CalendarButton(onTap: (){
                          currentIndex = index;
                          setState(() {});
                        }, dayOfWeek: daysOfWeek[index], numOfWeek: numOfWeek[index],isTap:isTap, currentIndex: index, ownIndex: currentIndex,),
                      ),
                      )
                  ),
                ),
                SizedBox(height: 30.h,),
                Container(
                  height: AppSizer.editH(context, 120),
                  width:AppSizer.editW(context, 335),
                  color: Colors.red,
                ),
                SizedBox(height: 10.h,),
                Container(
                  height: AppSizer.editH(context, 120),
                  width:AppSizer.editW(context, 335),
                  color: Colors.red,
                ),
                SizedBox(height: 10.h,),
                Container(
                  height: AppSizer.editH(context, 120),
                  width:AppSizer.editW(context, 335),
                  color: Colors.red,
                ),
                SizedBox(height: 10.h,),
                Container(
                  height: AppSizer.editH(context, 120),
                  width:AppSizer.editW(context, 335),
                  color: Colors.red,
                ),
                SizedBox(height: 10.h,),
                Container(
                  height: AppSizer.editH(context, 120),
                  width:AppSizer.editW(context, 335),
                  color: Colors.red,
                ),
                SizedBox(height: 10.h,),
                Container(
                  height: AppSizer.editH(context, 120),
                  width:AppSizer.editW(context, 335),
                  color: Colors.red,
                ),

              ],
            ),
          ],
        )
      ),
    );
  }
}
