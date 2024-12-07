import 'package:flutter/material.dart';
import 'package:information_card/utils/utils.dart';
import 'package:information_card/utils/image_widget.dart';

class ProfileAndBackgroundWidget extends StatelessWidget {
  const ProfileAndBackgroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: const [
        _BackgroundWidget(),
        _ProfileImageWidget()
      ],
    );
  }
}

class _ProfileImageWidget extends StatelessWidget {
  const _ProfileImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: ProjectDimensions().profile_widget_height,
      bottom: 0,
      width: ProjectDimensions().profile_widget_height,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.all(
                Radius.circular(ProjectDimensions().profile_widget_height / 8))),
        child: ImageWidget(
          name: ImageItemsName().profile_image,
          type: ImageType().jpg,
        ),
      ),
    );
  }
}

class _BackgroundWidget extends StatelessWidget {
  const _BackgroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: ProjectDimensions().profile_widget_height / 2,
        child: ImageWidget(name: ImageItemsName().background_image, type: ImageType().jpg));
  }
}