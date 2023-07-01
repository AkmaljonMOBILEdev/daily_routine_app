import 'package:daily_routine_app/ui/task_screen/create_task_screen/widgets/get_title.dart';
import 'package:daily_routine_app/utils/colors.dart';
import 'package:daily_routine_app/utils/icons.dart';
import 'package:daily_routine_app/utils/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Add Task Screen'),
      ),
    );
  }
}

showCreateTask(BuildContext context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
            constraints: BoxConstraints(
              maxHeight: AppSizer.editH(context, 874) * .9,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.white, width: 1.w),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
                color: AppColors.c1C1243),
            child: Column(
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 2) - 60.w,
                    ),
                    Text(
                      'Create Task',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(
                          AppIcons.cansel,
                        ))
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: [
                      GetTaskTitle(caption: 'Title', onChanged: (v){

                      },),

                    ],
                  ),
                ),
              ],
            ));
      });
}
