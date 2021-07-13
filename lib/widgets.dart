import 'package:flutter/material.dart';

class mWidgets {
  tf(usernameCont,usernameFocus,iconSecondaryColor,appPrimaryColor) {
    return TextFormField(
      controller: usernameCont,
      focusNode: usernameFocus,
      // style: primaryTextStyle(),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person, color: iconSecondaryColor),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: appPrimaryColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(width: 1, color: iconSecondaryColor)),
        labelText: 'Username*',
        // labelStyle: primaryTextStyle(),
      ),
      // cursorColor: appStore.isDarkModeOn ? white : blackColor,
      keyboardType: TextInputType.name,
      validator: (s) {
        if (s.trim().isEmpty) return 'Usermame is required';
        // if (!s.trim().isAlpha()) return 'Username is not valid';
        return null;
      },
    );
  }
}
