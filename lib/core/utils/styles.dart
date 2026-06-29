import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static TextStyle textStyle32Bold = GoogleFonts.raleway(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle12Grey = GoogleFonts.poppins(
    color: Colors.grey,
    fontSize: 12.sp,
  );
}
