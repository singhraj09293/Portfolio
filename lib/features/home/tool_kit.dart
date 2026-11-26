import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/widgets/app_pill.dart';
import 'package:portfolio/widgets/section_block.dart';

class ToolKit extends StatelessWidget {
  const ToolKit({super.key});

  @override
  Widget build(BuildContext context) {
    const skills = [
      'Flutter',
      'Dart',
      'Riverpod',
      'Firebase',
      'Drift',
      'SqlLite',
      'Rest API',
      'Dio',
      'GitHub',
    ];
    return SectionBlock(
      color: AppColors.lime,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppPill(
            text: 'Toolkit',
            textColor: AppColors.cream,
            backgroundColor: AppColors.ink,
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 56,
            child: ListView.separated(
              scrollDirection:Axis.horizontal,
              itemBuilder: (context, i) {
                return Center(
                  child: AppPill(
                    text: skills[i],
                    textColor: AppColors.cream,
                    backgroundColor: AppColors.ink,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 10),
              itemCount: skills.length,
            ),
          ),
        ],
      ),
    );
  }
}

