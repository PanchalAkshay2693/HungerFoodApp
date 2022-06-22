import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';

import '../constants/app_widgets.dart';

typedef OnItemTap<T> = void Function(BuildContext context, T? data, int? index);

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}

String string(String key, [dynamic args]) {
  return globalContext.getString(key, args);
}

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}