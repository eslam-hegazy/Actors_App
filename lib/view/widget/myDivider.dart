import 'package:flutter/material.dart';
import 'package:sliverapp/presentation/color_manager.dart';

class MyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Divider(
        color: Colors.white,
        height: 2,
      ),
    );
  }
}
