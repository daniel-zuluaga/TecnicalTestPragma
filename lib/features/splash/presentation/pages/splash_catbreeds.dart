import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tecnical_test_pragma/cats_icons.dart';
import 'package:tecnical_test_pragma/core/common_widgets/my_app_scaffold.dart';
import 'package:tecnical_test_pragma/core/config/theme/app_cats_colors.dart';

class SplashCatBreeds extends StatefulWidget {
  const SplashCatBreeds({super.key});

  @override
  State<SplashCatBreeds> createState() => _SplashCatBreedsState();
}

class _SplashCatBreedsState extends State<SplashCatBreeds> {
  @override
  Widget build(BuildContext context) {
    final wColors = AppCatsColor();
    return MyAppScaffold(
      backgroundColor: wColors.mapColors["W"],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      paddingColumn: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      bottomSheet: SizedBox(
        child: Image.asset(CatsIcons.imageCatSplash, width: 200.w, height: 300),
      ),
      children: [
        Text(
          "Catbreeds",
          style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: wColors.mapColors["B"]),
        ),
        SizedBox(
          height: 170.h,
        )
      ],
    );
  }
}
