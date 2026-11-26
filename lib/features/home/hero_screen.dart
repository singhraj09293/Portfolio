import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_style.dart';
import 'package:portfolio/features/home/about_section.dart';
import 'package:portfolio/features/home/feature_project.dart';
import 'package:portfolio/widgets/app_pill.dart';
import 'package:portfolio/widgets/section_block.dart';
import 'package:portfolio/widgets/stiker.dart';

class HeroScreen extends StatefulWidget {
  const HeroScreen({super.key});

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [HeroSection(),AboutSection(),FeatureProject()]),
        ),
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(color: AppColors.blue),
          Positioned(
            bottom: 140,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 340,
                width: 340,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.lime,
                ),
              ),
            ),
          ),
          Positioned(bottom: 0, child: Image.asset('assets/images/boy.png')),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppPill(text: 'DEVCARD FM', borderColor: AppColors.ink),

                Stiker(text: 'OPEN TO INTERN 2027', angle: 2),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'RAJ',
                  style: AppTextStyle.display.copyWith(color: AppColors.cream),
                ),
                Text(
                  'SINGH',
                  style: AppTextStyle.display.copyWith(color: AppColors.cream),
                ),
                Text(
                  'Flutter Developer · Bhiwandi,Thane',
                  style: AppTextStyle.body.copyWith(color: AppColors.cream),
                ),
              ],
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 100,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 55),
              ),
              onPressed: () {},
              icon: const Icon(Icons.play_arrow, color: AppColors.lime),
              label: const Text('Play my 60-second pitch'),
            ),
          ),
        ],
      ),
    );
  }
}
