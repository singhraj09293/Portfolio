import 'package:flutter/material.dart';

class SectionBlock extends StatelessWidget {
  final Color color;
  final Widget child;
  final EdgeInsets padding;
  const SectionBlock({
    super.key,
    required this.color,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color,
      padding: padding,
      child: child,
    );
  }
}
