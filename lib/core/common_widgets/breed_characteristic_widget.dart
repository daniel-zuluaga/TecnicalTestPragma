import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tecnical_test_pragma/core/common_widgets/text/text_widget.dart';
import 'package:tecnical_test_pragma/core/config/theme/app_cats_colors.dart';

class BreedCharacteristicWidget extends StatelessWidget {
  const BreedCharacteristicWidget(
      {super.key,
      required this.nameCharacteristic,
      required this.value,
      this.width,
      this.height});
  final String nameCharacteristic;
  final int value;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final wColor = AppCatsColor();
    return SizedBox(
      width: width ?? 200.w,
      height: height ?? 60,
      child: Row(
        children: [
          TextWidget(
              text: nameCharacteristic, fontSize: 22, colorText: wColor.black),
          SizedBox(width: 10.w),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return CircleAvatar(
                  radius: 20,
                  backgroundColor: value > index
                      ? wColor.mapColors["LigthGreen"]
                      : wColor.mapColors["LigthGrey"],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 5.w);
              },
            ),
          )
        ],
      ),
    );
  }
}
