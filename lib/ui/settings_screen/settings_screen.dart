import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Settings'),
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
