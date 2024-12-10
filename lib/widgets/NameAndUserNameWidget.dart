import 'package:flutter/material.dart';
import 'package:information_card/widgets/CustomTextWidget.dart';
import '../utils/utils.dart';

class NameAndUserWidget extends StatelessWidget {
  const NameAndUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CustomText(
              text: ProjectStrings().user_first_and_last_name,
              fontSize: ProjectFontSize().large,
              fontWeight: ProjectFontWeight().fontBold,
              color: ProjectColors().font_color_black),
          CustomText(
              text: ProjectStrings().user_name,
              fontSize: ProjectFontSize().small,
              fontWeight: ProjectFontWeight().fontMedium,
              color: ProjectColors().font_color_grey),
        ],
      ),
    );
  }
}
