import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_style.dart';
import 'package:portfolio/widgets/app_pill.dart';
import 'package:portfolio/widgets/section_block.dart';

class FeatureProject extends StatelessWidget {
  const FeatureProject({super.key});

  @override
  Widget build(BuildContext context) {
    const screenShots = [
      'assets/images/scorekar_Img/s1.jpg',
      'assets/images/scorekar_Img/s2.jpg',
      'assets/images/scorekar_Img/s3.jpg',
      'assets/images/scorekar_Img/s4.jpg',
      'assets/images/scorekar_Img/s5.jpg',
      'assets/images/scorekar_Img/s6.jpg',
    ];
    return SectionBlock(
      color: AppColors.orange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppPill(
            text: 'FEATURE PROJECT',
            backgroundColor: AppColors.ink,
            textColor: AppColors.cream,
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.cream,
                border: Border.all(color: AppColors.ink, width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.ink),
                    ),
                    child: ListView.separated(
                      itemCount: screenShots.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 300,
                          child: Image.asset(screenShots[index]),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: 12),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Scorekar',
                    style: AppTextStyle.label.copyWith(
                      color: AppColors.ink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Offline cricket scoring for gully matches',
                    style: AppTextStyle.body,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
