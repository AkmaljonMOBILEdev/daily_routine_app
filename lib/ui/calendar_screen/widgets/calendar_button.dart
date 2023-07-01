import 'package:daily_routine_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalendarButton extends StatefulWidget {
  const CalendarButton({super.key, required this.onTap, required this.dayOfWeek, required this.numOfWeek,required this.isTap, required this.currentIndex, required this.ownIndex});

  final VoidCallback onTap;
  final String dayOfWeek;
  final String numOfWeek;
  final bool isTap;
  final int currentIndex;
  final int ownIndex ;


  @override
  State<CalendarButton> createState() => _CalendarButtonState();
}

class _CalendarButtonState extends State<CalendarButton> {

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 60.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:AppColors.c1C1243,border: Border.all(color: AppColors.c643FDB)),
      child:InkWell(
        onTap: widget.onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 5.h,),
            Text(widget.dayOfWeek,style:widget.currentIndex!=widget.ownIndex?Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 18,fontWeight: FontWeight.w600):Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18,fontWeight: FontWeight.w600)),
            SizedBox(height: 5.h,),
            Text(widget.numOfWeek,style:widget.currentIndex!=widget.ownIndex?Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 18,fontWeight: FontWeight.w600):Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18,fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
