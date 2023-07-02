import 'package:daily_routine_app/ui/home_screen/widget/completed_tasks_and_see_all_widget.dart';
import 'package:daily_routine_app/ui/home_screen/widget/ongoing_tasks_widget.dart';
import 'package:daily_routine_app/ui/home_screen/widget/search_tasks_and_filter.dart';
import 'package:daily_routine_app/ui/home_screen/widget/completed_tasks_widget.dart';
import 'package:daily_routine_app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: AppSizer.editH(context, 30),
            ),
            SearchTasksAndFilter(),
            SizedBox(
              height: AppSizer.editH(context, 25),
            ),
            CompletedTasksAndSeeAllWidget(
              text: "Completed Tasks",
            ),
            SizedBox(
              height: AppSizer.editH(context, 25),
            ),
            TasksWidget(),
            SizedBox(
              height: AppSizer.editH(context, 40),
            ),
            CompletedTasksAndSeeAllWidget(
              text: "Ongoing Projects",
            ),
            SizedBox(
              height: AppSizer.editH(context, 30),
            ),
            OngoingTasksWidget(),
          ],
        ),
      ),
    );
  }
}
