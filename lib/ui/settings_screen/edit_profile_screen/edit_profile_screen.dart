import 'package:daily_routine_app/ui/settings_screen/widgets/text_field_widget.dart';
import 'package:daily_routine_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/app_routes.dart';
import '../../../utils/images.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon:  Icon(Icons.arrow_back_ios_new,), onPressed: () {
          Navigator.pushNamed(context, RouteNames.tagBox);
        },
        ),
        title: Text("Edit profile"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(AppImages.avatar),
                SizedBox(height: 15.h,),
                Text('Tap to upload new image ',style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.cFF8A00),),
                SizedBox(height: 100.h,),
                TextFieldWidget(title: 'First name', textActionType: TextInputAction.next, keyboardType: TextInputType.name),
                SizedBox(height: 25.h,),
                TextFieldWidget(title: "Last name", textActionType: TextInputAction.next, keyboardType: TextInputType.name),
                SizedBox(height: 25.h),
                TextFieldWidget(title: "Job", textActionType: TextInputAction.done, keyboardType: TextInputType.text),
                SizedBox(height: 40.h,),
                ZoomTapAnimation(
                  child: Container(
                    height: 48.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),color: AppColors.c643FDB
                    ),
                    child: Center(
                      child: Text('Save changes'),
                    ),
                  ),
                  onTap: (){},
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
