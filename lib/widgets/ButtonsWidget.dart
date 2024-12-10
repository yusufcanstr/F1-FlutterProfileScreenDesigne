import 'package:flutter/material.dart';
import 'package:information_card/utils/utils.dart';
import 'package:information_card/widgets/CustomTextWidget.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: ProjectColors().font_color_blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                fixedSize: const Size.fromHeight(60),
              ),
              child: CustomText(
                  text: ProjectStrings().txt_fallow,
                  fontSize: ProjectFontSize().medium,
                  fontWeight: ProjectFontWeight().fontBold,
                  color: ProjectColors().font_color_white),
              //icon: const Icon(Icons.send, color: Colors.white),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 5,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: ProjectColors().font_color_blue, width: 2),
                backgroundColor: ProjectColors().font_color_white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                fixedSize: const Size.fromHeight(60),
              ),
              onPressed: () {},
              child: CustomText(
                  text: ProjectStrings().txt_send_message,
                  fontSize: ProjectFontSize().medium,
                  fontWeight: ProjectFontWeight().fontBold,
                  color: ProjectColors().font_color_blue),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: ProjectColors().font_color_blue, width: 2),
                backgroundColor: ProjectColors().font_color_white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                fixedSize: const Size.fromHeight(60),
              ),
              onPressed: () {},
              child: Icon(
                Icons.phone,
                color: ProjectColors().font_color_blue,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
