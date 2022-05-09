import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future navigatorPush(Widget view, context) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) {
    return view;
  }));
}

Future navigatorPushReplacement(Widget view, context) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) {
    return view;
  }));
}

void navigatorPop(context) {
  return Navigator.pop(context);
}
