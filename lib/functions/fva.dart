import 'dart:math';

class FVA {
  static num fva({required num i, required num n}) {
    num parteI = (pow((1 + i), n)) - 1;
    num parteII = (pow((1 + i), n)) * i;
    return parteI / parteII;
  }
}
