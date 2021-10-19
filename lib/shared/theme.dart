import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 15.0;

Color kPrimaryColor = const Color(0xFF5c40cc);
Color kBlackColor = const Color(0xFF1F1449);
Color kWhiteColor = const Color(0xFFFFFFFF);
Color kGreyColor = const Color(0xFF9698a9);
Color kGreenColor = const Color(0xFF0EC3AE);
Color kRedColor = const Color(0xFFEB70A5);
Color kBackgroundColor = const Color(0xFFFAFAFA);
Color kInActiveColor = const Color(0xFFDBD7EC);
Color kTransparentColor = Colors.transparent;
Color kUnavailableColor = const Color(0xFFEBECF1);
Color kAvailableColor = const Color(0xFFE0D9FF);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenColor,
);
TextStyle redTextStyle = GoogleFonts.poppins(
  color: kRedColor,
);
TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
