import 'package:daily_routine_app/ui/task_screen/create_task_screen/create_task_screen.dart';
import 'package:daily_routine_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(width: 12.w,),
            const Text('Home screen'),
          ],
        ),
        actions: [
          ZoomTapAnimation(
            onTap: (){
              showCreateTask(context);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 6),
              height: 45.w,
              width: 40.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: AppColors.cFF8A00),
              child: const Icon(Icons.add),
            ),
          ),


        ],
      ),
    );
  }
}
