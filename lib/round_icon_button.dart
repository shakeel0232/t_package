import 'dart:io';
import 'package:TestPackages/AppColors.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final Color borderColor;
  final double size;
  final double borderWidth;
  final VoidCallback onPressed;
  final File imageFile;

  RoundIconButton.large(
      {this.icon,
      this.iconColor,
      this.onPressed,
      this.borderColor = Colors.transparent,
      this.borderWidth = 1.0,
      this.iconSize = 36.0,
      this.imageFile})
      : size = 60.0;

  RoundIconButton.medium(
      {this.icon,
      this.iconColor,
      this.onPressed,
      this.borderColor = Colors.transparent,
      this.borderWidth = 1.0,
      this.iconSize = 28.0,
      this.imageFile})
      : size = 45.0;

  RoundIconButton.small(
      {this.icon,
      this.iconColor,
      this.onPressed,
      this.borderColor = Colors.transparent,
      this.borderWidth = 1.0,
      this.iconSize = 18.0,
      this.imageFile})
      : size = 30.0;

  RoundIconButton(
      {this.icon,
      this.iconColor,
      this.onPressed,
      this.size,
      this.borderColor = Colors.transparent,
      this.borderWidth = 1.0,
      this.iconSize = 18.0,
      this.imageFile});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 3.5, right: 3.5),
      width: size,
      height: size,
      decoration: this.imageFile != null
          ? BoxDecoration(
              image: DecorationImage(
                image: FileImage(new File(this.imageFile.path)),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                  color: borderColor,
                  style: BorderStyle.solid,
                  width: borderWidth),
              shape: BoxShape.circle,
              color: iconColor,
              boxShadow: [
                  BoxShadow(color: boxShadowFadedGrey, blurRadius: 10.0)
                ])
          : BoxDecoration(
              border: Border.all(
                  color: borderColor,
                  style: BorderStyle.solid,
                  width: borderWidth),
              shape: BoxShape.circle,
              color: iconColor,
              boxShadow: [
                  BoxShadow(color: boxShadowFadedGrey, blurRadius: 10.0)
                ]),
      child: RawMaterialButton(
        shape: CircleBorder(),
        child: Icon(
          icon,
          size: iconSize,
          color: Colors.white,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
