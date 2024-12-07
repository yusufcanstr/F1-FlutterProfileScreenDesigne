import 'package:flutter/material.dart';
import '../widgets/ProfileAndBackgroundWidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text(
          "About",
          //style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 4,
            child: ProfileAndBackgroundWidget(),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "Yusufcan Şentürk",
                      style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black),
                    ),
                    Text(
                      "@yusufcanstr",
                      style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              )),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}
