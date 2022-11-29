import 'dart:math';

import 'package:formulas/functions/frc.dart';
import 'package:formulas/functions/fva.dart';

class Price {
  static num aPrice({required num p0, required num i, required num n}) {
    return p0 * FRC.frc(i: i, n: n);
  }

  static num bPrice({
    required num p0,
    required num i,
    required num n,
    required num t,
  }) {
    num R = aPrice(p0: p0, i: i, n: n);
    return R * FVA.fva(i: i, n: (n - t));
  }

  static num cPrice({
    required num p0,
    required num i,
    required num n,
    required num t,
  }) {
    num R = aPrice(p0: p0, i: i, n: n);
    return R * FVA.fva(i: i, n: ((n - t) + 1));
  }

  static num dPrice({
    required num p0,
    required num i,
    required num n,
    required num t,
  }) {
    return (i * cPrice(p0: p0, i: i, n: n, t: t));
  }

  static num ePrice({
    required num p0,
    required num i,
    required num n,
  }) {
    num R = aPrice(p0: p0, i: i, n: n);
    return (R - (i * p0));
  }

  static num fPrice({
    required num p0,
    required num i,
    required num n,
    required num t,
  }) {
    num a1 = ePrice(p0: p0, i: i, n: n);
    return (a1 * (pow((1 + i), (t - 1))));
  }
}
