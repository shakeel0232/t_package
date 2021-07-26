import 'package:flutter/material.dart';

navigateToScreen(BuildContext context, screen) {
  Navigator.of(context).push(
    new MaterialPageRoute(
      builder: (c) {
        return screen;
      },
    ),
  );
}

navigateToScreenPushReplace(BuildContext context, screen) {
  Navigator.of(context).pushReplacement(
    new MaterialPageRoute(
      builder: (c) {
        return screen;
      },
    ),
  );
}
