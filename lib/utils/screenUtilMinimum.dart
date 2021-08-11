import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtilMinimum {
  final double float;

  const ScreenUtilMinimum(this.float);

  double get w => _max(ScreenUtil().setWidth(this.float.abs()), float.abs());
  double get h => _max(ScreenUtil().setHeight(this.float.abs()), float.abs());
  double get r => _max(ScreenUtil().radius(this.float.abs()), float.abs());
  double get sp => _max(ScreenUtil().setSp(this.float.abs()), float.abs());

  double _max(double a, double b) => a > b ? a : b;
}
