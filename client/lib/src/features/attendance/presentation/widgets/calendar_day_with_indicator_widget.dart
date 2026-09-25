import 'package:flutter/material.dart';

class CalendarDayWithIndicatorWidget extends StatelessWidget {
  final DateTime date;
  final bool isSelected;
  final Color indicatorColor;
  final TextStyle? textStyle;
  final Decoration? decoration;

  const CalendarDayWithIndicatorWidget({
    required this.date,
    required this.isSelected,
    required this.indicatorColor,
    this.textStyle,
    this.decoration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cellContent = Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Text(
            MaterialLocalizations.of(context).formatDecimal(date.day),
            style: textStyle,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 24),
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: indicatorColor,
              ),
              child: const SizedBox(
                height: 5,
                width: 5,
              ),
            ),
          ),
        ],
      ),
    );

    if (decoration case final decoration?) {
      return DecoratedBox(
        decoration: decoration,
        child: cellContent,
      );
    }

    return cellContent;
  }
}
