import 'dart:math';

class FRC {
  static num frc({required num i, required num n}) {
    num parteI = (pow((1 + i), n)) * i;
    num parteII = (pow((1 + i), n)) - 1;
    return (parteI / parteII);
  }
}
