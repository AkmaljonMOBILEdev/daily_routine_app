import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/colors.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Calendar'),
        actions: [
          ZoomTapAnimation(
            onTap: (){},
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
    );
  }
}
