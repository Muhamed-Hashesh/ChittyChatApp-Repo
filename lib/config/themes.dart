import 'package:chit_chat_app/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var lightTheme = ThemeData();

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    primary: kPrimaryColor,
    onPrimary: kOnBackgroundColor,
    secondary: kYellowColor,
    error: Colors.red,
    onError: Colors.white,
    surface: kBackgroundColor,
    onSurface: kOnContainerColor,
    primaryContainer: kContainerColor,
    onPrimaryContainer: kOnContainerColor,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(
    ThemeData.dark().textTheme,
  ).copyWith(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.w800,
      color: kPrimaryColor,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: kOnBackgroundColor,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: kOnBackgroundColor,
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: kOnBackgroundColor,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: kOnContainerColor,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: kPrimaryColor,
    ),
  ),
);
