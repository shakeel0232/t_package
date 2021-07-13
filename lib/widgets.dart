import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class mWidgets {
  tf(usernameCont,usernameFocus,iconSecondaryColor,appPrimaryColor,labelText,icon) {
    return TextFormField(
      controller: usernameCont,
      focusNode: usernameFocus,
      style: primaryTextStyle(),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: iconSecondaryColor),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: appPrimaryColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(width: 1, color: iconSecondaryColor)),
        labelText: labelText,
        labelStyle: primaryTextStyle(),
      ),
      // cursorColor: appStore.isDarkModeOn ? white : blackColor,
      keyboardType: TextInputType.name,
      validator: (s) {
        if (s.trim().isEmpty) return 'Username is required';

        if (!s.trim().isAlpha()) return 'Username is not valid';
        return null;
      },
    );
  }
}
