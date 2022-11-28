import 'package:formulas/functions/frc.dart';

class Price {
  static num aPrice({required num p0, required num i, required num n}) {
    return p0 * FRC.frc(i: i, n: n);
  }
}
