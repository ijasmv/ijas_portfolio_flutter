import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijas_portfolio_flutter/utils/responsive_layout.dart';

class ScreenUtils {
  static Size getDesignScreenSizes(BuildContext context) {
    if (ResponsiveLayout.isDesktop(context)) {
      return Size(1366, 695);
    } else if (ResponsiveLayout.isTablet(context)) {
      return Size(1024, 768);
    } else {
      return Size(812, 375);
    }
  }

  static double getWidth(double width) => ScreenUtil().setWidth(width);

  static double getHeight(double height) => ScreenUtil().setHeight(height);
}
