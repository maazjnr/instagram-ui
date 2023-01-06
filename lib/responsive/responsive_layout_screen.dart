import 'package:flutter/material.dart';

import '../utils/global_variables.dart';


class ResponsiveLayout extends StatelessWidget {

  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayout({super.key, required this.webScreenLayout,
  required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if(Constraints.maxWidth > webScreenSize ) {
          return webScreenLayout;
        }

        return mobileScreenLayout;
      },
    );
  }
}