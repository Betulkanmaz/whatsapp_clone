import 'package:flutter/material.dart';

import '../../data/utilities/app_colors.dart';

class TextFormWidget extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  TextInputType? inputType;
  final FormFieldValidator<String>? validator;
  bool? obscureText = false;

  //validator tanimlamasini nullable tuttugum icin her değerde farklı
  // şekilde tanımlama sağlayabileceksiniz

  TextFormWidget({
    required this.controller,
    required this.hintText,
    this.inputType,
    this.validator,
    this.obscureText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.emeraldGreen,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        filled: true,
        fillColor: AppColors.grey,
        hintText: hintText,
        hintStyle: const TextStyle(
            fontWeight: FontWeight.normal, color: AppColors.lightGrey),
        contentPadding: const EdgeInsets.only(left: 16.0),
      ),
      keyboardType: inputType,
      validator: validator,
      obscureText: obscureText ?? true,
    );
  }
}

//TODO: su anlik boyle bir toplu textform widgeti tanimladim ancak uymazsa icerisi teker teker yazmamiz gerek
//kod kirliligi olmamasi acisindan bu sekilde yaptim
