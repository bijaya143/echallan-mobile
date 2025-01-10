import 'package:flutter/material.dart';

extension PopExtension on BuildContext {
  void popTimes(int times) {
    for (var i = 0; i < times; i++) {
      if (Navigator.canPop(this)) {
        Navigator.pop(this);
      }
    }
  }
}
