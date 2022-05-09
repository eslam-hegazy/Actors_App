import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:sliverapp/cubit/AppCubit.dart';
import 'package:sliverapp/cubit/AppState.dart';
import 'package:sliverapp/presentation/color_management.dart';
import 'package:sliverapp/presentation/color_manager.dart';
import 'package:sliverapp/presentation/constant.dart';
import 'package:sliverapp/presentation/navigator_management.dart';
import 'package:sliverapp/view/screens/DetailsScreen.dart';
import 'package:sliverapp/view/screens/SearchScreen.dart';
import 'package:sliverapp/view/widget/ImageCiecler.dart';
import 'package:sliverapp/view/widget/ImageNetWork.dart';
import 'package:sliverapp/view/widget/SubTitle.dart';
import 'package:sliverapp/view/widget/gridField.dart';

class MyHome extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text(
              "Characters",
              style: TextStyle(
                color: ColorManager.blackColor,
                fontStyle: FontStyle.italic,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  navigateTo(context, SearchScreen());
                },
                icon: const Icon(
                  Icons.search,
                  color: ColorManager.blackColor,
                ),
              ),
            ],
          ),
          body: OfflineBuilder(
            child: const Center(
              child: CircularProgressIndicator(),
            ),
            connectivityBuilder:
                (context, ConnectivityResult connectivity, Widget child) {
              final bool connected = connectivity != ConnectivityResult.none;
              if (connected) {
                return Container(
                  child: state is LoadingGetDate
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
                              return InkWell(
                                onTap: () {
                                  navigatorPush(
                                      DetailsScreen(
                                          character:
                                              cubit.charactersList[index]),
                                      context);
                                },
                                child: GridField(
                                    character: cubit.charactersList[index]),
                              );
                            },
                            itemCount: cubit.charactersList.length,
                          ),
                        ),
                );
              } else {
                return const Center(
                  child: Text("No Internet"),
                );
              }
            },
          ),
        );
      },
    );
  }
}
