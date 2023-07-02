import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';

class CompletedTasksAndSeeAllWidget extends StatefulWidget {
  const CompletedTasksAndSeeAllWidget({Key? key, required this.text})
      : super(key: key);
  final String text;

  @override
  State<CompletedTasksAndSeeAllWidget> createState() =>
      _CompletedTasksAndSeeAllWidgetState();
}

class _CompletedTasksAndSeeAllWidgetState
    extends State<CompletedTasksAndSeeAllWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 20, color: AppColors.white),
          ),
          ZoomTapAnimation(
              onTap: () {},
              child: Text(
                "See all",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16,
                      color: AppColors.cFF8A00,
                    ),
              )),
        ],
      ),
    );
  }
}
