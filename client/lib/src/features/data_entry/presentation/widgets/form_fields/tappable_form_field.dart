import 'dart:async';

import 'package:flutter/material.dart';

class TappableFormField<T> extends StatefulWidget {
  const TappableFormField({
    required this.onTap,
    required this.initialValue,
    required this.builder,
    super.key,
    this.labelText,
    this.decoration,
    this.onSaved,
    this.validator,
    this.autovalidateMode,
    this.focusNode,
  }) : assert(labelText != null || decoration != null);

  final T initialValue;
  final Future<void>? Function(FormFieldState<T>)? onTap;
  final String? labelText;
  final Widget? Function(BuildContext, FormFieldState<T>) builder;
  final String? Function(T?)? validator;
  final void Function(T?)? onSaved;
  final InputDecoration Function(BuildContext, FormFieldState<T>)? decoration;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;

  @override
  State<TappableFormField<T>> createState() => _TappableFormFieldState<T>();
}

class _TappableFormFieldState<T> extends State<TappableFormField<T>> {
  late final FocusNode _effectiveFocusNode =
      widget.focusNode ??
      FocusNode(debugLabel: 'TappableFormField<$T>:${widget.labelText}');

  @override
  Widget build(BuildContext context) {
    final enabled = widget.onTap != null;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FormField<T>(
        autovalidateMode: widget.autovalidateMode,
        initialValue: widget.initialValue,
        enabled: enabled,
        builder: (state) => InkWell(
          focusNode: _effectiveFocusNode,
          onTap: enabled
              ? () async {
                  _effectiveFocusNode.requestFocus();

                  final previousValue = state.value;

                  await widget.onTap!(state);

                  if (state.value != previousValue &&
                      (_effectiveFocusNode.context?.mounted ?? false)) {
                    _effectiveFocusNode.nextFocus();
                  }
                }
              : null,
          child: AnimatedBuilder(
            animation: _effectiveFocusNode,
            child: widget.builder(context, state),

            builder: (context, child) => InputDecorator(
              isFocused: _effectiveFocusNode.hasFocus,
              decoration: widget.decoration != null
                  ? widget.decoration!(context, state)
                  : InputDecoration(
                      errorText: state.errorText,
                      labelText: widget.labelText,
                      enabled: enabled,
                    ),
              isEmpty: state.value == null,
              child: child != null
                  ? Opacity(
                      opacity: enabled ? 1 : 0.38,
                      child: child,
                    )
                  : null,
            ),
          ),
        ),
        onSaved: widget.onSaved,
        validator:
            widget.validator ??
            (value) => value == null ? 'هذا الحقل مطلوب' : null,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.focusNode == null) _effectiveFocusNode.dispose();
  }
}
