import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';
import '../../../utils/sizer.dart';

class TasksWidget extends StatefulWidget {
  const TasksWidget({Key? key}) : super(key: key);

  @override
  State<TasksWidget> createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: AppSizer.editH(context, 183),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 12.h),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: AppColors.cFF8A00,
                ),
                padding: EdgeInsets.all(5.h),
                margin: EdgeInsets.all(5.h),
                width: AppSizer.editW(context, 150),
                child: Center(child: Text("tasks")),
              )),
    )
    ;
  }
}
