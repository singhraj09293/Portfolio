import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_style.dart';

class AppPill extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color? borderColor;
  const AppPill({
    super.key,
    required this.text,
    this.backgroundColor = AppColors.cream,
    this.textColor = AppColors.ink,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: StadiumBorder(
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: 1.5,
          ),
        ),
      ),
      child: Text(text, style: AppTextStyle.label.copyWith(color: textColor)),
    );
  }
}
