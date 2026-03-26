import 'package:flutter/material.dart';

/// 应用主题配置
/// 包含颜色、字体样式等统一配置
class AppTheme {
  // 颜色常量
  static const Color background = Color(0xFFFCFBF8);
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color headline = Color(0xFF0F172A);
  static const Color accent = Color(0xFFFAC638);
  static const Color secondaryAccent = Color(0xFFFDE047);
  static const Color accentDark = Color(0xFFF59E0B); // 深一点的强调色
  static const Color border = Color.fromRGBO(255, 255, 255, 0.2);
  static const Color mutedText = Color(0xFF64748B);
  static const Color inactiveIcon = Color(0xFF94A3B8);
  static const Color divider = Color(0xFFF1F5F9);
  static const Color error = Color(0xFFEF4444);
  static const Color lightBackground = Color(0xFFF3EEE0); // 浅背景色

  // 字体样式
  static const TextStyle headlineStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: headline,
    letterSpacing: -0.5,
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: headline,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: headline,
  );

  static const TextStyle captionStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: mutedText,
  );

  static const TextStyle buttonStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: Colors.black87,
  );

  static const TextStyle navLabelStyle = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: inactiveIcon,
  );

  static const TextStyle navLabelSelectedStyle = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w800,
    color: accent,
  );

  // 阴影
  static const BoxShadow cardShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.05),
    blurRadius: 2,
    offset: Offset(0, 1),
  );

  static const BoxShadow headerShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.25),
    blurRadius: 50,
    offset: Offset(0, 20),
  );

  // 边框半径
  static const double borderRadius = 24.0;
  static const double smallBorderRadius = 16.0;

  // 间距
  static const double headerHeight = 77.0;
  static const double bottomNavHeight = 94.0;
  static const double horizontalPadding = 24.0;
  static const double verticalPadding = 17.0;

  // 模糊效果
  static const double blurSigma = 6.0;
}