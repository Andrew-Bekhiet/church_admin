import 'package:flutter/material.dart';

class TappableInputField<T> extends StatefulWidget {
  final T value;
  final bool isEmpty;
  final InputDecoration decoration;
  final Widget? child;
  final Future<void> Function()? onTap;
  final FocusNode? focusNode;

  const TappableInputField({
    required this.value,
    required this.isEmpty,
    required this.decoration,
    required this.onTap,
    this.child,
    this.focusNode,
    super.key,
  });

  @override
  State<TappableInputField<T>> createState() => _TappableInputFieldState<T>();
}

class _TappableInputFieldState<T> extends State<TappableInputField<T>> {
  late FocusNode _effectiveFocusNode;
  FocusNode? _ownedFocusNode;

  @override
  void initState() {
    super.initState();
    _useFocusNodeOfWidget();
  }

  @override
  void didUpdateWidget(TappableInputField<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.focusNode != oldWidget.focusNode) _useFocusNodeOfWidget();
  }

  @override
  Widget build(BuildContext context) {
    final onTap = widget.onTap;
    final enabled = onTap != null;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        focusNode: _effectiveFocusNode,
        onTap: onTap == null
            ? null
            : () async {
                _effectiveFocusNode.requestFocus();

                final valueBeforeTap = widget.value;

                await onTap();

                if (mounted && widget.value != valueBeforeTap) {
                  _effectiveFocusNode.nextFocus();
                }
              },
        child: AnimatedBuilder(
          animation: _effectiveFocusNode,
          child: widget.child,
          builder: (context, child) => InputDecorator(
            isFocused: _effectiveFocusNode.hasFocus,
            decoration: widget.decoration.copyWith(enabled: enabled),
            isEmpty: widget.isEmpty,
            child: child == null
                ? null
                : Opacity(opacity: enabled ? 1 : 0.38, child: child),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _ownedFocusNode?.dispose();
    super.dispose();
  }

  void _useFocusNodeOfWidget() {
    _ownedFocusNode?.dispose();

    switch (widget.focusNode) {
      case final givenNode?:
        _ownedFocusNode = null;
        _effectiveFocusNode = givenNode;
      case null:
        final ownedNode = FocusNode(debugLabel: 'TappableInputField<$T>');
        _ownedFocusNode = ownedNode;
        _effectiveFocusNode = ownedNode;
    }
  }
}
