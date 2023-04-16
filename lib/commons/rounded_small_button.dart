import 'package:flutter/material.dart';

import 'package:flutter_twitter_clone/theme/theme.dart';

class RoundedSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String lable;
  final Color backgroundColor;
  final Color textColor;
  const RoundedSmallButton({
    Key? key,
    required this.onTap,
    required this.lable,
    this.backgroundColor = Pallete.whiteColor,
    this.textColor = Pallete.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: backgroundColor,
      labelPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      label: Text(
        'Done',
        style: TextStyle(color: textColor, fontSize: 16),
      ),
    );
  }
}
