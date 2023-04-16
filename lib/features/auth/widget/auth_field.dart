import 'package:flutter/material.dart';

import 'package:flutter_twitter_clone/theme/theme.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  const AuthField({
    Key? key,
    required this.controller,
    required this.hinttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Pallete.blueColor, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Pallete.greyColor),
          ),
          contentPadding: const EdgeInsets.all(22),
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 18)),
    );
  }
}
