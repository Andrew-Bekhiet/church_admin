import 'dart:ui';

Color? colorFromInt(int? data) => data is int ? Color(data) : null;
int? colorToInt(Color? data) => data?.value;
