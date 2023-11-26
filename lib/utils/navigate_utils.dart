import 'package:flutter/material.dart';

navigatePush(BuildContext context, Widget page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

navigatePop(BuildContext context) {
  Navigator.pop(context);
}
