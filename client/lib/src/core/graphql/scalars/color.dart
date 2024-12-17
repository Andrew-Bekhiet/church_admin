import 'dart:ui';

import 'package:church_admin/church_admin.dart';

Color? colorFromInt(int? data) => data is int ? Color(data) : null;
int? colorToInt(Color? data) => data?.argbValue;
