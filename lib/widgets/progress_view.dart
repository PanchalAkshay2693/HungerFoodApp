import 'package:flutter/material.dart';

import '../base/constants/app_colors.dart';
import '../base/utils/shared_pref_utils.dart';

class ProgressView extends StatelessWidget {
  final Color? color;

  const ProgressView({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color ?? (getIsDarkMode() ? WHITE : ACCENT_COLOR),
    );
  }
}
