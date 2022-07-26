import 'package:flutter/material.dart';
import 'package:sport_club/res/style.p.dart';

import '../res/color.p.dart';

class TTButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? borderColor;
  final Color? colorText;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final Widget? child;
  final String text;

  const TTButton({
    Key? key,
    this.height = 60,
    this.borderColor,
    this.colorText,
    this.onPressed,
    this.child,
    required this.text,
    this.backgroundColor,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(52),
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(52),
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          color: backgroundColor,
        ),
        child: child ??
            Center(
              child: Text(
                text,
                style: St.body16600.copyWith(color: colorText ?? Cl.white),
              ),
            ),
      ),
    );
  }
}
