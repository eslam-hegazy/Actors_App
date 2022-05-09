// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sliverapp/model/AppModel.dart';
import 'package:sliverapp/view/widget/ImageCiecler.dart';

import 'ImageNetWork.dart';
import 'SubTitle.dart';

class GridField extends StatelessWidget {
  final Character character;
  const GridField({required this.character});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Hero(
        tag: character.char_id,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ImageCircler(),
            ImageNetWork(
              character.img,
            ),
            SubTitle(character.name),
          ],
        ),
      ),
    );
  }
}
