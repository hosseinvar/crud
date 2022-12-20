import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/theme/colors.dart';

Future<String?> datePicker(BuildContext context) async {
  var selectedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2022),
    lastDate: DateTime(2030),
  );

  return getDate(selectedDate!);
}

String getDate(DateTime date) {
  return "${date.year}-${date.month}-${date.day}";
}

bool checkValidEmail(String email) {
  return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);;
}

void showSnackBar(BuildContext context, bool isError, String? message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message ?? "",
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: navyBlue),
      ),
      padding: const EdgeInsets.all(20),
      backgroundColor: isError ? lightPink : veryPaleGreen,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: isError ? darkPink : mainColor, width: 1),
      ),
      margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
    ),
  );
}
