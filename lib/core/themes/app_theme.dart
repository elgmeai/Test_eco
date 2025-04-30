import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTheme {
  static ThemeData lightTheme= ThemeData.light().copyWith(
    textTheme: TextTheme(
      bodyMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,fontWeight: FontWeight.w600,
      color: Colors.black
    ),
    bodySmall: TextStyle(
      height:2 ,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,fontWeight: FontWeight.w500,
      color: Colors.black
    ),
    displaySmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 14,fontWeight: FontWeight.w500,
      color: const Color.fromARGB(221, 39, 32, 32)
    ),
    labelMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,fontWeight: FontWeight.w500,
      color: const Color(0xFF666666)
    ),
    labelSmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,fontWeight: FontWeight.w400,
      color: const Color(0xFF707B81)
    ),
    titleSmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 14,fontWeight: FontWeight.w600,
      color: const Color(0xFF1A2530)
    ),
    titleMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 14,fontWeight: FontWeight.w400,
      color: const Color(0x78777C99)
    ),
     displayMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 12,fontWeight: FontWeight.w400,
      color: const Color(0xFF636363)
    ),
    headlineMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 14,fontWeight: FontWeight.w500,
      color: const Color(0xFF636363)
    ),
    ),
    iconTheme: IconThemeData(
      size: 19,color: const Color(0xFF666666)
    )
  );
}