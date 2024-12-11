import 'package:flutter/material.dart';
import 'package:information_card/utils/image_widget.dart';
import 'package:information_card/utils/utils.dart';
import 'package:information_card/widgets/CustomTextWidget.dart';

class FollowerWidget extends StatelessWidget {
  const FollowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, bottom: 10),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  ImageWidget(name: ImageItemsName().follower_image_1, type: ImageType().png),
                  const SizedBox(width: 1),
                  ImageWidget(name: ImageItemsName().follower_image_2, type: ImageType().png),
                ],
              )),
          Expanded(
              flex: 6,
              child: SizedBox(
                child: CustomText(
                    text: ProjectStrings().txt_following_msg,
                    fontSize: ProjectFontSize().small,
                    fontWeight: ProjectFontWeight().fontBold,
                    color: ProjectColors().font_color_grey),
              )),
          Expanded(
              flex: 1,
              child: SizedBox(
                  child: Icon(
                Icons.chevron_right_sharp,
                color: ProjectColors().font_color_grey,
                size: 32,
              ))),
        ],
      ),
    );
  }
}
