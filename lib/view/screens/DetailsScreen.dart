// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:sliverapp/model/AppModel.dart';
import 'package:sliverapp/presentation/color_manager.dart';
import 'package:sliverapp/presentation/constant.dart';
import 'package:sliverapp/view/widget/ItemDetails.dart';
import 'package:sliverapp/view/widget/myDivider.dart';

class DetailsScreen extends StatelessWidget {
  final Character character;
  DetailsScreen({required this.character});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 600,
            pinned: true,
            stretch: true,
            centerTitle: false,
            backgroundColor: ColorManager.greyColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                character.nickname,
                style: const TextStyle(color: Colors.white),
              ),
              background: Hero(
                tag: character.char_id,
                child: Image.network(
                  character.img,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemDetails(
                        title: "Job : ",
                        value: character.occupation.join(" / "),
                      ),
                      MyDivider(),
                      ItemDetails(
                        title: "Appeared In : ",
                        value: character.portrayed,
                      ),
                      MyDivider(),
                      ItemDetails(
                        title: "Sessions : ",
                        value: character.appearance.join(" / "),
                      ),
                      MyDivider(),
                      ItemDetails(
                        title: "Status : ",
                        value: character.status,
                      ),
                      MyDivider(),
                      character.better_call_saul_appearance.isNotEmpty
                          ? ItemDetails(
                              title: "Better Call Saul Session : ",
                              value: character.better_call_saul_appearance
                                  .join(" / "),
                            )
                          : MyDivider(),
                      ItemDetails(
                        title: "Actor/Actress : ",
                        value: character.nickname,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        height: queryHeight(context, 0.15),
                        child: DefaultTextStyle(
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Bobbers',
                          ),
                          child: AnimatedTextKit(animatedTexts: [
                            TyperAnimatedText(character.category),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
