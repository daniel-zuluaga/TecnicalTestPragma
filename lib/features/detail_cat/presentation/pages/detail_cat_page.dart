import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tecnical_test_pragma/core/common_widgets/breed_characteristic_widget.dart';
import 'package:tecnical_test_pragma/core/common_widgets/my_app_scaffold.dart';
import 'package:tecnical_test_pragma/core/common_widgets/network_image.dart';
import 'package:tecnical_test_pragma/core/common_widgets/text/text_widget.dart';
import 'package:tecnical_test_pragma/core/config/theme/app_cats_colors.dart';
import 'package:tecnical_test_pragma/features/landing_cats/domain/entities/catbreed_entity.dart';

class DetailCatPage extends StatefulWidget {
  const DetailCatPage({super.key, required this.catBreedEntity});
  final CatBreedEntity catBreedEntity;

  @override
  State<DetailCatPage> createState() => _DetailCatPageState();
}

class _DetailCatPageState extends State<DetailCatPage> {
  @override
  Widget build(BuildContext context) {
    final wColor = AppCatsColor();
    return MyAppScaffold(
      paddingColumn: EdgeInsets.symmetric(horizontal: 15.w),
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: TextWidget(
            text: widget.catBreedEntity.name,
            fontSize: 24,
            colorText: wColor.black),
      ),
      children: [
        SizedBox(height: 12.h),
        Center(
          child: NetworkImageWidget(
            imageUrl: widget.catBreedEntity.urlImage,
          ),
        ),
        SizedBox(height: 12.h),
        TextWidget(
            text: widget.catBreedEntity.description,
            fontSize: 22,
            colorText: wColor.black),
        SizedBox(height: 12.h),
        TextWidget(
            textAlign: TextAlign.start,
            text: "Country: ${widget.catBreedEntity.origin}",
            fontSize: 22,
            colorText: wColor.black),
        SizedBox(height: 12.h),
        BreedCharacteristicWidget(
            width: 500,
            nameCharacteristic: "Intelligence:",
            value: widget.catBreedEntity.intelligence)
      ],
    );
  }
}
