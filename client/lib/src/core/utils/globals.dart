import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

ScaffoldMessengerState get scaffoldMessenger =>
    scaffoldMessengerKey.currentState!;
