import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/icons.dart';
import '../../../utils/sizer.dart';

class SearchTasksAndFilter extends StatefulWidget {
  const SearchTasksAndFilter({Key? key}) : super(key: key);

  @override
  State<SearchTasksAndFilter> createState() => _SearchTasksAndFilterState();
}

class _SearchTasksAndFilterState extends State<SearchTasksAndFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        children: [
          SizedBox(
            width: AppSizer.editW(context, 260),
            height: AppSizer.editH(context, 58),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search tasks",
                prefixIcon: Padding(
                  padding:  EdgeInsets.all(15.h),
                  child: SvgPicture.asset(AppIcons.search),
                ),
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            width: AppSizer.editW(context, 18),
          ),
          ZoomTapAnimation(
            onTap: () {},
            child: Container(
              width: AppSizer.editW(context, 58),
              height: AppSizer.editH(context, 58),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r), color: Colors.orange),
              child: Padding(
                padding:  EdgeInsets.all(15.h),
                child: SvgPicture.asset(
                  AppIcons.filter,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
