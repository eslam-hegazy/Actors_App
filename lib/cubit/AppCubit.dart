import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliverapp/cubit/AppState.dart';
import 'package:sliverapp/helper/DioHelper.dart';
import 'package:sliverapp/model/AppModel.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  List<Character> charactersList = [];
  List<Character> searchCharacter = [];
  bool isSearching = false;
  late Character character;
  void getHttp() {
    emit(LoadingGetDate());
    DioHelper.getDate(
      url: "characters",
      query: {
        'Access-Control-Allow-Origin': '*',
      },
    ).then(
      (value) {
        value.data.forEach((element) {
          character = Character.fromJson(element);
          charactersList.add(character);
        });
        print(charactersList[0].img);
        emit(SuccessfulGetDate());
      },
    ).catchError(
      (error) {
        print(error.toString());
        emit(ErrorGetDate());
      },
    );
  }
}
