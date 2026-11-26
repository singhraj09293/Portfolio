import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_theme.dart';
import 'package:portfolio/features/home/hero_screen.dart';
import 'package:portfolio/widgets/app_pill.dart';
import 'package:portfolio/widgets/stiker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme, home: HeroScreen());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        AppPill(text: 'App pill',borderColor: AppColors.ink,),
        Stiker(text: 'OPEN TO WORK')
      ],
    ));
  }
}
