import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_style.dart';

class MiniPlayer extends StatelessWidget {
  final String title;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  const MiniPlayer({
    super.key,
    required this.title,
    required this.onPrevious,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: ShapeDecoration(color: AppColors.ink, shape: StadiumBorder()),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.chevron_left),
            color: AppColors.cream,
            onPressed: () {
              onPrevious;
            },
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: AppTextStyle.label.copyWith(color: AppColors.cream),
              ),
            ),
          ),
          IconButton(
            onPressed: () => onNext,
            icon: Icon(Icons.chevron_right),
            color: AppColors.cream,
          ),
        ],
      ),
    );
  }
}
