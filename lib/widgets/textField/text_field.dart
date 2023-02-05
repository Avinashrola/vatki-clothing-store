// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../utils/constant/app_color.dart';
import '../../utils/constant/app_icon.dart';

class TextFieldLayout extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String valText;
  final bool obscureText;
  final bool type;
  final bool isIcon;
  final IconData icon;
  final int maxLine;
  final bool readOnly;

  const TextFieldLayout({
    Key? key,
    required this.maxLine,
    required this.controller,
    required this.hintText,
    required this.valText,
    required this.obscureText,
    required this.type,
    required this.icon,
    required this.isIcon,
    required this.readOnly,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TextFieldLayoutState createState() => _TextFieldLayoutState();
}

class _TextFieldLayoutState extends State<TextFieldLayout> {
  bool oText = false;

  @override
  void initState() {
    oText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readOnly,
      obscureText: oText,
      validator: (value) {
        if (value!.isEmpty) {
          return widget.valText;
        }
        return null;
      },
      style: Theme.of(context).textTheme.headline5!.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
      cursorColor: AppColors.black,
      controller: widget.controller,
      maxLines: widget.maxLine,
      maxLength: widget.type ? 10 : 100,
      keyboardType: widget.type ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: AppColors.redColors),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            )),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            )),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(
              color: AppColors.darkRedColors,
            )),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            )),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            )),
        counterText: "",
        contentPadding: const EdgeInsets.only(top: 14, left: 16),
        filled: true,
        fillColor: AppColors.grey300,
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.headline5!.copyWith(
            color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w400),
        suffixIcon: widget.isIcon == true
            ? Icon(widget.icon, color: AppColors.black)
            : null,
      ),
    );
  }
}

class CapTextFieldLayout extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String valText;
  final bool obscureText;
  final bool type;
  final bool isIcon;
  final IconData icon;
  final int maxLine;

  const CapTextFieldLayout({
    Key? key,
    required this.maxLine,
    required this.controller,
    required this.hintText,
    required this.valText,
    required this.obscureText,
    required this.type,
    required this.icon,
    required this.isIcon,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CapTextFieldLayoutState createState() => _CapTextFieldLayoutState();
}

class _CapTextFieldLayoutState extends State<CapTextFieldLayout> {
  bool oText = false;

  @override
  void initState() {
    oText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.characters,
      obscureText: oText,
      validator: (value) {
        if (value!.isEmpty) {
          return widget.valText;
        }
        return null;
      },
      style: Theme.of(context).textTheme.headline5!.copyWith(
        color: AppColors.black,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      cursorColor: AppColors.black,
      controller: widget.controller,
      maxLines: widget.maxLine,
      keyboardType: widget.type ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: AppColors.redColors),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            )),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            )),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(
              color: AppColors.darkRedColors,
            )),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            )),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            )),
        counterText: "",
        contentPadding: const EdgeInsets.only(top: 14, left: 16),
        filled: true,
        fillColor: AppColors.grey300,
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.headline5!.copyWith(
            color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w400),
        suffixIcon: widget.isIcon == true
            ? Icon(widget.icon, color: AppColors.black)
            : null,
      ),
    );
  }
}

class SearchTextField {
  static Widget searchTextField({required TextEditingController ctrl}) {
    return TextField(
      controller: ctrl,
      decoration: InputDecoration(
        prefixIcon: AppIcons.searchIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        hintText: 'Search',
      ),
    );
  }
}
