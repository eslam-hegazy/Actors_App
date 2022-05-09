import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliverapp/cubit/AppCubit.dart';
import 'package:sliverapp/helper/DioHelper.dart';
import 'package:sliverapp/presentation/theme_manager.dart';

import 'MyBlocObserver.dart';
import 'view/screens/MyHome.dart';

void main() {
  DioHelper.init();
  BlocOverrides.runZoned(
    () {
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getHttp(),
      child: MaterialApp(
        theme: whiteTheme(),
        debugShowCheckedModeBanner: false,
        home: MyHome(),
      ),
    );
  }
}
