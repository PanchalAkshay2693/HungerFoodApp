import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_styles.dart';


class ButtonView extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onPressed;
  final EdgeInsets? padding;
  final double radius;
  final AlignmentGeometry alignment;
  final Widget? postfix;
  final double height;
  final double minWidth;
  final TextStyle? textStyle;
  final double? borderWidth;
  final Color? borderColor;

  const ButtonView(this.text,
      {Key? key,
      this.color,
      this.onPressed,
      this.textColor,
      this.height = 56,
      this.minWidth = double.infinity,
      this.radius = 30,
      this.textStyle,
      this.borderColor,
      this.borderWidth,
      this.alignment = Alignment.center,
      this.postfix,
      this.padding = const EdgeInsets.all(16)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0,
        padding: padding,
        minWidth: minWidth,
        height: height,
        color: color ?? buttonColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            side: BorderSide(color: borderColor ?? Colors.transparent, width: borderWidth ?? 0.0)),
        child: Container(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Row(
            children: [
              Expanded(
                child: Align(
                    alignment: alignment,
                    child: Text(text,
                        maxLines: 1,
                        style: textStyle ?? TextStyle(
                                color: textColor ?? WHITE,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                fontFamily: fontFamily))),
              ),
              postfix == null
                  ? const SizedBox()
                  : Container(margin: const EdgeInsets.only(left: 12), child: postfix)
            ],
          ),
        ),
        onPressed: onPressed);
  }
}
