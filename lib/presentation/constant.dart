import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future navigateTo(context, screen) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) {
    return screen;
  }));
}

Future navigateReplaceMentTo(context, screen) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) {
    return screen();
  }));
}

double queryHeight(context, double size) {
  return MediaQuery.of(context).size.height * size;
}

double queryWidth(context, double size) {
  return MediaQuery.of(context).size.width * size;
}
