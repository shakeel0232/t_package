import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget icon;
  final String placeHolder;
  final String label;
  final int maxLength;
  final double height;
  final TextInputType textInputType;
  final int maxLines;
  final Function validate;
  final TextEditingController controller;

  CustomTextFormField(
      {this.icon,
        this.placeHolder,
        this.label,
        this.maxLength,
        this.height = 30.0,
        this.textInputType = TextInputType.text,
        this.maxLines = 1,
        this.validate ,
        this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        children: <Widget>[
          // Icon Placement
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Center(
              child: icon,
            ),
          ),
          // Vertical line
          Container(
            height: this.height,
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
            margin: const EdgeInsets.only(left: 00.0, right: 10.0),
          ),
          // TextField
          new Expanded(
            child: TextFormField(
              textCapitalization: TextCapitalization.sentences,
              controller: this.controller,
              style: primaryTextStyle(),
/*              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),*/
//              style: TextStyle(color: Colors.white),
              keyboardType: this.textInputType,
              maxLength: this.maxLength,
              validator: this.validate,
/*              validator: (String value) {
                if (value.isEmpty) {
                  validateMobile(value);
//                  return showToast(value);
//                  return 'Please enter a value';
                }
*//*                if (this.textInputType == TextInputType.text) {
                  if (value.length > this.maxLength) {
                    return 'Please enter less than ' +
                        this.maxLength.toString() +
                        ' characters';
                  }
                } else if (this.textInputType == TextInputType.number) {
                  if (int.parse(value) > this.maxLength ||
                      value.length > this.maxLength.toString().length ||
                      int.parse(value) <= 0) {
                    return 'Please enter less than ' +
                        this.maxLength.toString();
                  }
                }*//*
              },*/
              decoration: InputDecoration(
                border: InputBorder.none,
                counter: SizedBox.shrink(),
                hintText: placeHolder,
                labelText: label,
                labelStyle: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.grey),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}