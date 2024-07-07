import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppFormFiled extends StatelessWidget {
  final String? hint;
  final Widget? suffixIcon;

  const AppFormFiled({this.hint, this.suffixIcon, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: context.textTheme.labelMedium,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: context.textTheme.headlineMedium,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
