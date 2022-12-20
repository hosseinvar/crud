import 'package:crud/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final Function? onPressed;
  final String? title;
  final bool? isEnable;

  const AddButton({Key? key, this.title, this.onPressed, this.isEnable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (isEnable ?? false) {
          onPressed!();
        }
      },
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: isEnable! ? mainColor : darkGray,
          fixedSize: const Size(double.infinity, 50)),
      child: Text(
        title ?? "",
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
