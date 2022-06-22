import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rxdart/rxdart.dart';

import '../base/constants/app_colors.dart';
import '../base/constants/app_images.dart';
import '../base/constants/app_styles.dart';

class CustomTextField extends StatefulWidget {

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool autofocus;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final bool enableSuggestions;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final bool readOnly;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final GestureTapCallback? onTap;
  final Function(String)? validator;
  final AutovalidateMode? autovalidateMode;
  final bool autovalidate;

  const CustomTextField(
      {Key? key,
      this.controller,
      this.focusNode,
      this.decoration = const InputDecoration(),
      this.keyboardType = TextInputType.text,
      this.textInputAction,
      this.textCapitalization = TextCapitalization.none,
      this.style,
      this.textAlign = TextAlign.start,
      this.textAlignVertical,
      this.textDirection,
      this.readOnly = false,
      this.autofocus = false,
      this.obscuringCharacter = '•',
      this.obscureText = false,
      this.autocorrect = true,
      this.enableSuggestions = true,
      this.maxLines = 1,
      this.minLines,
      this.expands = false,
      this.maxLength,
      this.onChanged,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.inputFormatters,
      this.enabled,
      this.onTap,
      this.validator,
      this.autovalidateMode,
      this.autovalidate = false}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late BehaviorSubject<int> isValid;
  Stream<int> get isValidStream => isValid.stream;

  String error = "";

  @override
  void initState() {
    isValid = BehaviorSubject<int>.seeded(0);
    super.initState();
  }

  @override
  void dispose() {
    isValid.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSimpleTextField(),
        StreamBuilder<int>(
            stream: isValidStream,
            builder: (context, snapshot) {
              if (snapshot.hasData &&
                  snapshot.data != null &&
                  snapshot.data == 2) {
                return Text(
                  error,
                  style:
                  styleMedium1.copyWith(
                    color: PINK,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                );
              } else {
                return const SizedBox();
              }
            })
      ],
    );
  }

  Widget buildSimpleTextField() {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      decoration: widget.decoration?.copyWith(
          suffixIconConstraints: const BoxConstraints(
              minHeight: 18,
              minWidth: 18
          ),
        suffixIcon: StreamBuilder<int>(
            stream: isValidStream,
            builder: (context, snapshot) {
              if (snapshot.hasData &&
                  snapshot.data != null &&
                  snapshot.data == 2) {
                return SvgPicture.asset(
                  AppImages.icError,
                  allowDrawingOutsideViewBox: true,
                );
              } else {
                return const SizedBox();
              }
            })
      ),
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      validator: (val) {
        if (widget.validator != null) {
          if (widget.validator!(val!) == null) {
            if (!isValid.isClosed) {
              isValid.add(1);
            }
          } else {
            error = widget.validator!(val);
            if (!isValid.isClosed) {
              isValid.add(2);
            }
          }
          return widget.validator!(val);
        } else {
          return null;
        }
      },
      autovalidateMode: widget.autovalidate
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      style: widget.style,
      textAlign: widget.textAlign,
      textAlignVertical: widget.textAlignVertical,
      textDirection: widget.textDirection,
      textCapitalization: widget.textCapitalization,
      autofocus: widget.autofocus,
      readOnly: widget.readOnly,
      obscuringCharacter: widget.obscuringCharacter,
      obscureText: widget.obscureText,
      autocorrect: widget.autocorrect,
      enableSuggestions: widget.enableSuggestions,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      expands: widget.expands,
      maxLength: widget.maxLength,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      inputFormatters: widget.inputFormatters,
      enabled: widget.enabled ?? true,
    );
  }
}
