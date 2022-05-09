import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliverapp/presentation/color_manager.dart';

import '../../presentation/constant.dart';

class SubTitle extends StatelessWidget {
  final String title;

  SubTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: queryHeight(context, 0.06),
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: ColorManager.blackColor.withOpacity(0.5),
      ),
    );
  }
}
