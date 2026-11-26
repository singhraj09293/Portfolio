import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_style.dart';
import 'package:portfolio/widgets/section_block.dart';

class LetsTalk extends StatelessWidget {
  const LetsTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionBlock(
      color: AppColors.ink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Let's Talk",
                style: AppTextStyle.heading.copyWith(color: AppColors.cream),
              ),
              Container(
                height: 10,
                width: 10,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.lime,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          _talks(() {}, 'Resume(PDF)'),
          SizedBox(height: 10),
          _talks(() {}, 'Email'),
          SizedBox(height: 10),
          _talks(() {}, 'LinkedIn'),
          SizedBox(height: 10),
          _talks(() {}, 'GitHub'),
        ],
      ),
    );
  }
}

Widget _talks(VoidCallback onPressed, String text) {
  return SizedBox(
    width: double.infinity,
    child: OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.cream,
        side: const BorderSide(color: AppColors.cream, width: 1.5),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      ),
      child: Row(
        children: [
          Text(text, style: AppTextStyle.body.copyWith(color: AppColors.cream)),
          Spacer(),
          Icon(Icons.arrow_outward, color: AppColors.cream),
        ],
      ),
    ),
  );
}
