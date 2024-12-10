import 'package:flutter/material.dart';
import 'package:information_card/utils/utils.dart';
import 'package:information_card/widgets/CustomTextWidget.dart';

class InformationAboutTheProfile extends StatelessWidget {
  const InformationAboutTheProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ProjectDimensions().app_padding2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: ProjectStrings().txt_about,
              fontSize: ProjectFontSize().large,
              fontWeight: ProjectFontWeight().fontBold,
              color: ProjectColors().font_color_black),
          CustomText(
              text: ProjectStrings().lorem_ipsum,
              fontSize: ProjectFontSize().small,
              fontWeight: ProjectFontWeight().fontMedium,
              color: ProjectColors().font_color_black),
          const SizedBox(
            height: 10,
          ),
          const IconAndTextWidget(
            title: "Merkez Mahallesi, Pursaklar ANKARA",
            icon: Icon(
              Icons.home_rounded,
              color: Colors.black,
            ),
          ),
          const IconAndTextWidget(
            title: "Pursaklar Sağlık Meslek Lisesi",
            icon: Icon(
              Icons.school_rounded,
              color: Colors.black,
            ),
          ),
          const IconAndTextWidget(
            title: "React Native ve Flutter öğreniyor",
            icon: Icon(
              Icons.info_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({super.key, required this.title, required this.icon});

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          CustomText(
              text: title,
              fontSize: ProjectFontSize().small,
              fontWeight: ProjectFontWeight().fontSmall,
              color: ProjectColors().font_color_black),
        ],
      ),
    );
  }
}
