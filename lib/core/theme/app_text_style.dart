import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static final display = GoogleFonts.unbounded(
    fontSize: 64,
    fontWeight: FontWeight.w800,
    height: 0.95,
  );
  static final heading = GoogleFonts.unbounded(
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );
  static final body = GoogleFonts.dmSans(fontSize: 16);
  static final label = GoogleFonts.dmSans(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}
