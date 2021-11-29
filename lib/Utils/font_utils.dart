import 'package:flutter/cupertino.dart';
import 'package:ijas_portfolio_flutter/utils/color_utils.dart';

class FontUtils {
  static TextStyle getMenuLabelStyle({Color color = ColorUtils.white}) {
    return TextStyle(color: color, fontSize: 15);
  }

  static TextStyle getProfileName({Color color = ColorUtils.white}) {
    return TextStyle(color: color, fontSize: 36, fontWeight: FontWeight.w600);
  }

  static TextStyle getProfileJobStyle({Color color = ColorUtils.fontGrey}) {
    return TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w300);
  }
}
