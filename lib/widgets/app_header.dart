import 'dart:ui';

import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

/// 统一的顶部标题栏组件
/// 支持居中标题、左侧内容、右侧内容等多种布局
class AppHeader extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final Widget? trailing;
  final double height;
  final bool useBlur; // 是否使用模糊背景

  const AppHeader({
    Key? key,
    this.title,
    this.leading,
    this.trailing,
    this.height = AppTheme.headerHeight,
    this.useBlur = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final child = Container(
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: AppTheme.horizontalPadding,
        vertical: AppTheme.verticalPadding,
      ),
      decoration: BoxDecoration(
        color: useBlur ? Colors.white.withOpacity(0.8) : Colors.transparent,
        border: useBlur ? Border.all(color: AppTheme.divider) : null,
      ),
      child: Row(
        children: [
          // 左侧内容
          if (leading != null) leading!,
          // 中间标题（如果没有leading或trailing，则居中）
          if (title != null)
            Expanded(
              child: Center(
                child: Text(
                  title!,
                  style: AppTheme.headlineStyle,
                ),
              ),
            ),
          // 右侧内容
          if (trailing != null) trailing!,
        ],
      ),
    );

    if (useBlur) {
      return ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: AppTheme.blurSigma,
            sigmaY: AppTheme.blurSigma,
          ),
          child: child,
        ),
      );
    } else {
      return child;
    }
  }
}