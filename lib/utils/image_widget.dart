import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.name, required this.type});
  final String name;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _newNamePath,
      //fit: BoxFit.cover,
    );
  }

  String get _newNamePath => "assets/$type/$name.$type";
}