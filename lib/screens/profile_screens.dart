import 'package:flutter/material.dart';
import 'package:information_card/utils/utils.dart';
import 'package:information_card/widgets/ButtonsWidget.dart';
import 'package:information_card/widgets/InformationAboutTheProfile.dart';
import 'package:information_card/widgets/NameAndUserNameWidget.dart';
import '../widgets/FallowerWidget.dart';
import '../widgets/ProfileAndBackgroundWidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors().font_color_white,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text(
          "About",
          //style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        children: const [
          Expanded(
            flex: 4,
            child: ProfileAndBackgroundWidget(),
          ),
          Expanded(flex: 1, child: NameAndUserWidget()),
          Expanded(flex: 1, child: FollowerWidget()),
          Expanded(flex: 1, child: ButtonsWidget()),
          Expanded(flex: 5, child: InformationAboutTheProfile())
        ],
      ),
    );
  }
}
