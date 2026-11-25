import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/widgets/app_pill.dart';

class Stiker extends StatelessWidget {
  final String text;
  final double angle;
  final Color textColor;
  final Color backgroundColor;
  const Stiker({
    super.key,
    required this.text,
    this.textColor = AppColors.ink,
    this.backgroundColor = AppColors.lime,
    this.angle = -2,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * math.pi / 180,
      child: AppPill(
        text: text,
        textColor: textColor,
        backgroundColor: backgroundColor,
        borderColor:AppColors.ink,
      ),
    );
  }
}
