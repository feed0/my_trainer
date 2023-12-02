import 'package:flutter/material.dart';

import '/models/brand.dart';

class CustomFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved; // Updated type
  final TextEditingController? controller;

  const CustomFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.onFieldSubmitted,
    this.onSaved,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          filled: true,
          fillColor: Brand.containerBG,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          labelStyle: const TextStyle(
            color: Brand.primary,
          ),
        ),
        style: const TextStyle(color: Colors.black),
        textInputAction: onFieldSubmitted != null
            ? TextInputAction.done
            : TextInputAction.next,
        keyboardType: keyboardType,
        obscureText: obscureText,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved, // Updated parameter
      ),
    );
  }
}
