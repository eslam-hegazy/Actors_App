import 'package:flutter/material.dart';

import '../../presentation/color_management.dart';

class ImageNetWork extends StatelessWidget {
  final String image;

  ImageNetWork(this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
