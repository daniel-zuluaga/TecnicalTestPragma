import 'package:flutter/material.dart';

class MyAppScaffold extends StatelessWidget {
  const MyAppScaffold(
      {super.key,
      this.scrollDirection,
      required this.children,
      this.mainAxisAlignment,
      this.crossAxisAlignment,
      this.appBar,
      this.paddingColumn,
      this.backgroundColor,
      this.bottomSheet});
  final Axis? scrollDirection;
  final List<Widget> children;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final AppBar? appBar;
  final EdgeInsetsGeometry? paddingColumn;
  final Color? backgroundColor;
  final Widget? bottomSheet;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar,
        body: Padding(
          padding: paddingColumn ?? EdgeInsets.zero,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: scrollDirection ?? Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
                crossAxisAlignment:
                    crossAxisAlignment ?? CrossAxisAlignment.center,
                children: children,
              ),
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: paddingColumn ?? EdgeInsets.zero,
          child: bottomSheet,
        ),
      ),
    );
  }
}
