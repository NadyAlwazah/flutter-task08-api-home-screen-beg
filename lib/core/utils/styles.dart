import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static TextStyle textStyle32Bold = GoogleFonts.raleway(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle16W600 = GoogleFonts.raleway(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle14W600 = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle16W500 = GoogleFonts.raleway(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle12Grey = GoogleFonts.poppins(
    color: Colors.grey,
    fontSize: 12.sp,
  );
  static TextStyle textStyle12W400 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
  );
  static TextStyle textStyle12W500 = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
    color: Colors.green,
  );
  static TextStyle textStyle14W500 = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
  );
}
