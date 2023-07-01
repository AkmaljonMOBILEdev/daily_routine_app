import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';

class UniversalInput extends StatelessWidget {
  const UniversalInput({super.key, required this.labelText, required this.maxLines});

  final String labelText;
  final int maxLines;


  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.7)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColors.c643FDB),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColors.c643FDB),
        ),
      ),
    );
  }
}
