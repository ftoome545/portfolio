import 'package:flutter/material.dart';
import 'package:practice_1/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xFFC7C7C7),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular18(context) {
    return TextStyle(
      color: const Color(0xFFC7C7C7),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular101(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 101),
      fontFamily: 'Bebas Neue',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular28(context) {
    return TextStyle(
      color: const Color(0xFFC7C7C7),
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontFamily: 'Bebas Neue',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular32(context) {
    return TextStyle(
      color: const Color(0xFFC7C7C7),
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontFamily: 'Bebas Neue',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular57(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 57),
      fontFamily: 'Bebas Neue',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular43(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 43),
      fontFamily: 'Bebas Neue',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular76(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 76),
      fontFamily: 'Bebas Neue',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFC7C7C7),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium32(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleInterMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFC7C7C7),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleBold14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF0A0A0A),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF0A0A0A),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemibold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemibold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xffD3E97A),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
