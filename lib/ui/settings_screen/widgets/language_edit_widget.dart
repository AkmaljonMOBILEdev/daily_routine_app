import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/images.dart';
class EditLanguage extends StatelessWidget {
  const EditLanguage({Key? key, required this.title, required this.photo}) : super(key: key);
  final String title;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return  ZoomTapAnimation(
      child: ListTile(
        leading: Image.asset(photo),
        title: Text(title),
      ),
      onTap: (){},
    );
  }
}
