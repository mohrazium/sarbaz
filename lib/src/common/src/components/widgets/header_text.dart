
import 'package:flutter/material.dart';

import '../themes/colorize.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(this.data, {Key? key, this.darkMode}) : super(key: key);
  final bool? darkMode;
  final String data;
  @override
  Widget build(BuildContext context) {
    Color _getTextColor() {
      return darkMode != null
          ? darkMode!
              ? Colorize.backgroundColorShade500
              : Colorize.foregroundColorShade500
          : Colorize.foregroundColorShade500;
    }

    return Text(
      data,
      style: TextStyle(
        color: _getTextColor(),
        fontSize: 16,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
