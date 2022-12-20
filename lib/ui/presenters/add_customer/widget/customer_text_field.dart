import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../theme/colors.dart';
import '../../../theme/theme.dart';

class CustomerTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final String? labelText;
  final bool? readonly;
  final Function? onClick;
  final Function? onValidator;

  const CustomerTextField({
    Key? key,
    this.controller,
    this.focusNode,
    this.textInputType,
    this.labelText,
    this.readonly = false,
    this.onClick,
    this.onValidator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      readOnly: readonly!,
      onTap: () {
        if (onClick != null) {
          onClick!();
        }
      },
      validator: (value) => onValidator!(value),
      autovalidateMode: AutovalidateMode.always,
      controller: controller,
      autocorrect: false,
      showCursor: false,
      keyboardType: textInputType,
      style: Theme.of(context).textTheme.subtitle2,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelText: labelText,
        labelStyle: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: paleNavyBlue),
        floatingLabelStyle:
            Theme.of(context).textTheme.overline!.copyWith(color: paleNavyBlue),
        enabledBorder: outLineInputBorder(),
        border: outLineInputBorder(),
        focusedBorder: outLineInputBorder(focused: true),
      ),
    );
  }
}
