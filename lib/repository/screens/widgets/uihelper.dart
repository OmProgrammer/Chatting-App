import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:messengere/domain/constants/appcolors.dart';

class UiHelper {
  static CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }


  static CustomText({
    required BuildContext context,
    required String text,
    required double fontsize,
    String? fontfamily, 
    FontWeight? fontweight,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textdarkmode
                : AppColors.textlightmode),
        fontWeight: fontweight ?? FontWeight.normal,
      ),
    );
  }

  static CustomButton({
    required buttonname,
    required VoidCallback callback,
    Color? buttoncolor,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonlightmode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonname,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "bold"
          ),
        ),
      ),
    );
  }

  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required TextInputType textinputtype,
    required BuildContext context,
  }) {
    return Container(
      height: 45,
      width: 327,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.containerdarkmode
            : AppColors.containerlightmode,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextField(
          controller: controller,
          keyboardType: textinputtype,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.hintdarkmode
                  : AppColors.hintlightmode,
              fontSize: 14
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
