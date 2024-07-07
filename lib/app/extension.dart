import 'package:flutter/material.dart';

extension NumberParsing on num {
  double w(BuildContext context) => this * MediaQuery.sizeOf(context).width;

  double h(BuildContext context) => this * MediaQuery.sizeOf(context).height;
}
