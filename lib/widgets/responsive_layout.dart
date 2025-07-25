import 'package:flutter/material.dart';
import 'package:the_project/utils/helpers.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      AppHelper.screenWidth(context) < 650;

  static bool isDesktop(BuildContext context) =>
      AppHelper.screenWidth(context) >= 650;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth < 650) {
          return mobile;
        } else {
          return desktop;
        }
      },
    );
  }
}
