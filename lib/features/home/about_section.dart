import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_style.dart';
import 'package:portfolio/widgets/app_pill.dart';
import 'package:portfolio/widgets/fact_tile.dart';
import 'package:portfolio/widgets/section_block.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionBlock(
      color: AppColors.cream,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppPill(text: 'About',backgroundColor: AppColors.ink,textColor: AppColors.cream,),
          SizedBox(height: 10,),
          Text(
            "I'm a BSc IT student who likes building apps people actually use. "
            "I made Scorekar after getting tired of scoring gully cricket on paper, "
            "and I built it to work fully offline.",
            style: AppTextStyle.body.copyWith(
              color: AppColors.ink,
              fontSize: 18,
              height: 1.5,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: FactTile(label: 'EDUCTION', value: 'BSc IT,final year'),
              ),
              SizedBox(width: 12),
              Expanded(
                child: FactTile(label: 'LOCATION', value: 'Bhiwandi,Thane'),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: FactTile(
                  label: 'BUILT',
                  value: 'Scorekar,Bahi,Newzly,\nNewzly,MovieFlex',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: FactTile(label: 'NOW BUILDING', value: 'DevCard FM'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
