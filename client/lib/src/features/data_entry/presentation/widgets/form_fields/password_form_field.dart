import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_symbols_icons/symbols.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    super.key,
    this.padding,
    this.labelText,
    this.initialValue,
    this.onChanged,
    this.controller,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.textInputAction,
    this.autoFillHints = const [AutofillHints.password],
    this.focusNode,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.decoration,
  });

  final EdgeInsetsGeometry? padding;
  final String? labelText;
  final String? initialValue;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final Iterable<String>? autoFillHints;
  final FocusNode? focusNode;
  final AutovalidateMode autoValidateMode;
  final InputDecoration? decoration;

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding ?? const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        autovalidateMode: widget.autoValidateMode,
        decoration: (widget.decoration ??
                InputDecoration(
                  labelText: widget.labelText ?? 'كلمة السر',
                  errorMaxLines: 5,
                ))
            .copyWith(
          suffixIcon: IconButton(
            icon: Icon(visible ? Symbols.visibility_off : Symbols.visibility),
            onPressed: () => setState(() => visible = !visible),
          ),
        ),
        focusNode: widget.focusNode,
        autofillHints: widget.autoFillHints,
        obscureText: !visible,
        controller: widget.controller,
        textInputAction: widget.textInputAction ?? TextInputAction.done,
        initialValue: widget.initialValue,
        onChanged: widget.onChanged,
        onFieldSubmitted: (_) {
          FocusScope.of(context).nextFocus();
          widget.onFieldSubmitted?.call(_);
        },
        onSaved: widget.onSaved,
        validator: widget.validator ??
            (value) {
              if (value?.isEmpty ?? true) {
                return 'برجاء ادخال كلمة السر';
              }
              return null;
            },
      ),
    );
  }
}
