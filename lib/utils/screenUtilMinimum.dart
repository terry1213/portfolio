import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtilMinimum {
  final double float;

  const ScreenUtilMinimum(this.float);

  double get w => _max(ScreenUtil().setWidth(this.float), float);
  double get h => _max(ScreenUtil().setHeight(this.float), float);
  double get r => _max(ScreenUtil().radius(this.float), float);
  double get sp => _max(ScreenUtil().setSp(this.float), float);

  double _max(double a, double b) => a.abs() > b.abs() ? a : b;
}
