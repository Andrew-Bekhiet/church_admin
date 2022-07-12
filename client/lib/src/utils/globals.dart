import 'package:flutter/material.dart';

GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

ScaffoldMessengerState get scaffoldMessenger =>
    scaffoldMessengerKey.currentState!;
