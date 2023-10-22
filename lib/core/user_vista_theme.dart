import 'package:flutter/material.dart';

class UserVistaTheme {
  static UserVistaTheme of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color tertiaryBackground;
}

class LightModeTheme extends UserVistaTheme {
  late Color primary = const Color(0xFFFB0101);
  late Color secondary = const Color(0xFFD1FAD8);
  late Color tertiary = const Color(0xFFFFE6E6);
  late Color primaryText = const Color(0xFF181A1B);
  late Color secondaryText = const Color(0xFF4B4D50);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFF2F2F3);
  late Color tertiaryBackground = const Color(0xFFFAFAFA);
}