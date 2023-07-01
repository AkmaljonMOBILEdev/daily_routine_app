import 'package:daily_routine_app/utils/colors.dart';
import 'package:daily_routine_app/utils/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetTaskTitle extends StatelessWidget {
  const GetTaskTitle({super.key, required this.caption, required this.onChanged});
  final String caption;
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 327.w,
      margin: EdgeInsets.symmetric(horizontal: AppSizer.editW(context, 24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(caption, style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight:FontWeight.w700, letterSpacing: .8
          )),
          SizedBox(height: 8.h,),
          TextField(
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w500
            ),
            onChanged: onChanged,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
              hintText: 'Text',
              hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w500
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(
                  color: AppColors.c643FDB
                )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide(
                      color: AppColors.c643FDB
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide(
                      color: AppColors.c643FDB
                  )
              )
            ),
          ),
        ],
      ),
    );
  }
}
