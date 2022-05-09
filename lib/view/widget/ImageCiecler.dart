import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliverapp/presentation/color_manager.dart';

class ImageCircler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
