import 'package:flutter/material.dart';
import '../../constants/constants.dart';


class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPassword;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput({
    super.key,
    required this.textEditingController,
    this.isPassword = false,
    required this.hintText,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    const inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(35)),
      borderSide: BorderSide(
        color: Constants.scaffoldBackgroundColor,
      ),
    );
    return TextField(
      controller: textEditingController,
      style: const TextStyle(
        fontSize: 18,
      ),
      decoration: InputDecoration(
        fillColor: Constants.pureWhite,
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      ),
      keyboardType: textInputType,
      obscureText: isPassword,
    );
  }
}
