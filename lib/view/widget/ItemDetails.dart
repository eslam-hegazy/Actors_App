// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sliverapp/presentation/color_management.dart';
import 'package:sliverapp/presentation/color_manager.dart';
import 'package:sliverapp/presentation/constant.dart';

class ItemDetails extends StatelessWidget {
  final String title;
  final String value;
  ItemDetails({required this.title, required this.value});
  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: value,
            style: TextStyle(
              color: ColorManager.blackColor.withOpacity(0.5),
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
