import 'package:flutter/material.dart';

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
          padding: EdgeInsets.only(left: 12),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.cFF8A00,
                ),
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                width: AppSizer.editW(context, 150),
                child: Center(child: Text("tasks")),
              )),
    )
    ;
  }
}
