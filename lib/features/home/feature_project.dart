import 'package:flutter/material.dart';
import 'package:portfolio/core/constant/app_links.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_style.dart';
import 'package:portfolio/widgets/app_pill.dart';
import 'package:portfolio/widgets/section_block.dart';
import 'package:url_launcher/url_launcher.dart';

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
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      color: AppColors.orange,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppPill(
              text: 'FEATURE PROJECT',
              backgroundColor: AppColors.ink,
              textColor: AppColors.cream,
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.cream,
                  border: Border.all(color: AppColors.ink, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 300,
                      child: ListView.separated(
                        itemCount: screenShots.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(17),
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
                      style: AppTextStyle.heading.copyWith(
                        color: AppColors.ink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      'Offline cricket scoring for gully matches',
                      style: AppTextStyle.body,
                    ),
                    SizedBox(height: 10),
                    Row(
                      spacing: 8,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.5),
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.cream,
                          ),
                          child: Text(
                            'Flutter',
                            style: AppTextStyle.body.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.ink, width: 1.5),
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.cream,
                          ),
                          child: Text(
                            'Riverpod',
                            style: AppTextStyle.body.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.ink, width: 1.5),
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.cream,
                          ),
                          child: Text(
                            'Drift',
                            style: AppTextStyle.body.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(180, 50),
                          ),
                          onPressed: ()async {
                             final url = Uri.parse(AppLinks.apk);
                            await launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Text(
                            'Download APK',
                            style: AppTextStyle.body.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(color: AppColors.ink),
                            backgroundColor: AppColors.cream,
                            fixedSize: Size(180, 50),
                          ),
                          onPressed: () async {
                            final url = Uri.parse(AppLinks.repo);
                            await launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Text(
                            'View Code',
                            style: AppTextStyle.body.copyWith(
                              color: AppColors.ink,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
