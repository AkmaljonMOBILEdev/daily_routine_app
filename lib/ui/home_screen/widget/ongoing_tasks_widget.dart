import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';
import '../../../utils/sizer.dart';


class OngoingTasksWidget extends StatefulWidget {
  const OngoingTasksWidget({Key? key}) : super(key: key);

  @override
  State<OngoingTasksWidget> createState() => _OngoingTasksWidgetState();
}

class _OngoingTasksWidgetState extends State<OngoingTasksWidget> {
  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(13.r),
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
            margin: EdgeInsets.all(5.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: AppColors.cFF8A00,
            ),
            width: AppSizer.editW(context, double.infinity),
            height: AppSizer.editH(context, 100),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){}, child: Text("outgoing tasks"))
              ],
            )
        ),
      ),
    );
  }
}
