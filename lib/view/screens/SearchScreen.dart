// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:sliverapp/cubit/AppCubit.dart';
import 'package:sliverapp/presentation/color_manager.dart';
import 'package:sliverapp/presentation/navigator_management.dart';
import 'package:sliverapp/view/widget/gridField.dart';

import '../../cubit/AppState.dart';
import '../widget/ImageCiecler.dart';
import '../widget/ImageNetWork.dart';
import '../widget/SubTitle.dart';

class SearchScreen extends StatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: TextField(
              controller: searchController,
              cursorColor: ColorManager.blackColor,
              decoration: const InputDecoration(
                hintText: "Search A Character ...",
                border: InputBorder.none,
              ),
              onChanged: (value) {
                cubit.searchCharacter = cubit.charactersList
                    .where(
                      (element) => element.name.toLowerCase().startsWith(
                            searchController.toString(),
                          ),
                    )
                    .toList();
              },
            ),
            actions: [
              IconButton(
                onPressed: () {
                  searchController.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ],
          ),
          body: cubit.searchCharacter.isNotEmpty
              ? Container(
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.5 / 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) {
                      return GridField(character: cubit.searchCharacter[index]);
                    },
                    itemCount: cubit.searchCharacter.length,
                  ),
                ),
        );
      },
    );
  }
}
