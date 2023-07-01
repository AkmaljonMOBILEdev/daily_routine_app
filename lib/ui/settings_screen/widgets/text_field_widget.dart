import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key, required this.title, required this.textActionType, required this.keyboardType}) : super(key: key);
  final String title;
  final TextInputAction textActionType;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(title),
        ),
        SizedBox(height: 8.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            style:Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight:FontWeight.w500 , color: AppColors.white, fontSize: 12),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 12,horizontal: 16),
              hintText: title,
              hintStyle:Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight:FontWeight.w500 , color: AppColors.white.withOpacity(0.5), fontSize: 12),

              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33),
                  borderSide: BorderSide(color: AppColors.white,width:1 )
              ),
              errorBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33),
                  borderSide: BorderSide(color: AppColors.white,width:1 )
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33),
                  borderSide: BorderSide(color: AppColors.white,width:1 )
              ),
            ),
            keyboardType: keyboardType,
            textInputAction:  textActionType,
            cursorColor: AppColors.white,

          ),
        ),
      ],
    );
  }
}
