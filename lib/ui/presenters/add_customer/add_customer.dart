import 'package:crud/config/constance.dart';
import 'package:crud/domain/local/entities/customer.dart';
import 'package:crud/ui/presenters/add_customer/bloc/add_customer_cubit.dart';
import 'package:crud/ui/presenters/add_customer/bloc/add_customer_state.dart';
import 'package:crud/ui/presenters/add_customer/widget/add_button.dart';
import 'package:crud/ui/presenters/add_customer/widget/customer_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../base/enums/request_status.dart';

class AddCustomer extends StatelessWidget {
  const AddCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.crud,
          style: Theme
              .of(context)
              .textTheme
              .headline2,
        ),
        elevation: 5,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final TextEditingController controllerFirstName = TextEditingController();
  final FocusNode? focusFirstName = FocusNode();

  final TextEditingController controllerLastName = TextEditingController();
  final FocusNode? focusLastName = FocusNode();

  final TextEditingController controllerPhoneNumber = TextEditingController();
  final FocusNode? focusPhoneNumber = FocusNode();

  final TextEditingController controllerEmail = TextEditingController();
  final FocusNode? focusEmail = FocusNode();

  final TextEditingController controllerBankAccount = TextEditingController();
  final FocusNode? focusBankAccount = FocusNode();

  final TextEditingController controllerDateOfBirth = TextEditingController();
  final FocusNode? focusDateOfBirth = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddCustomerCubit>(
      create: (_) => AddCustomerCubit(AddCustomerState.initial()),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CustomerTextField(
                    controller: controllerFirstName,
                    focusNode: focusFirstName,
                    labelText: AppLocalizations.of(context)!.firstName,
                    textInputType: TextInputType.text,
                    onValidator: (value) {
                      if (focusFirstName!.hasFocus &&
                          value
                              .toString()
                              .isEmpty) {
                        return AppLocalizations.of(context)!.validFirstName;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomerTextField(
                    controller: controllerLastName,
                    focusNode: focusLastName,
                    labelText: AppLocalizations.of(context)!.lastName,
                    textInputType: TextInputType.text,
                    onValidator: (value) {
                      if (focusLastName!.hasFocus && value
                          .toString()
                          .isEmpty) {
                        return AppLocalizations.of(context)!.validLastName;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomerTextField(
                    controller: controllerPhoneNumber,
                    focusNode: focusPhoneNumber,
                    labelText: AppLocalizations.of(context)!.phoneNumber,
                    textInputType: TextInputType.number,
                    onValidator: (value) {
                      if (focusPhoneNumber!.hasFocus &&
                          value
                              .toString()
                              .isEmpty) {
                        return AppLocalizations.of(context)!.validLastName;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomerTextField(
                    controller: controllerDateOfBirth,
                    focusNode: focusDateOfBirth,
                    labelText: AppLocalizations.of(context)!.dateOFBirth,
                    textInputType: TextInputType.text,
                    readonly: true,
                    onValidator: (value) {
                      if (focusDateOfBirth!.hasFocus &&
                          value
                              .toString()
                              .isEmpty) {
                        return AppLocalizations.of(context)!.validBirthDay;
                      }
                    },
                    onClick: () {
                      datePicker(context).then((value) =>
                      {controllerDateOfBirth.text = value ?? ""});
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomerTextField(
                    controller: controllerEmail,
                    focusNode: focusEmail,
                    labelText: AppLocalizations.of(context)!.email,
                    textInputType: TextInputType.emailAddress,
                    onValidator: (value) {
                      if (focusEmail!.hasFocus &&
                          !checkValidEmail(value.toString()) &&
                          value
                              .toString()
                              .length > 1) {
                        return AppLocalizations.of(context)!.validEmail;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomerTextField(
                    controller: controllerBankAccount,
                    focusNode: focusBankAccount,
                    labelText: AppLocalizations.of(context)!.bankAccountNumber,
                    textInputType: TextInputType.number,
                    onValidator: (value) {
                      if (focusBankAccount!.hasFocus &&
                          value
                              .toString()
                              .isEmpty) {
                        return AppLocalizations.of(context)!
                            .validBankAccountNumber;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  BlocConsumer<AddCustomerCubit, AddCustomerState>(
                      listenWhen: (s1, s2) {
                        return s1.insertStatus != s2.insertStatus;
                      },
                      listener: (context, state) {
                        if (state.insertStatus == AsyncRequestStatus.Success) {
                          showSnackBar(context, false, AppLocalizations.of(
                              context)!.customerAdded);
                        }

                        if (state.insertStatus == AsyncRequestStatus.Error) {
                          showSnackBar(context, true, AppLocalizations.of(
                              context)!.problem);
                        }
                      },
                      builder: (context, state) {
                        if (state.insertStatus ==
                            AsyncRequestStatus.Submitting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          return AddButton(
                            isEnable: true,
                            title: AppLocalizations.of(context)!.addCustomer,
                            onPressed: () {
                              if (controllerFirstName.text.isNotEmpty &&
                                  controllerLastName.text.isNotEmpty &&
                                  controllerBankAccount.text.isNotEmpty &&
                                  controllerPhoneNumber.text.isNotEmpty &&
                                  controllerDateOfBirth.text.isNotEmpty &&
                                  checkValidEmail(controllerEmail.text)) {
                                context.read<AddCustomerCubit>().addCustomer(
                                  Customer(
                                      bankAccountNumber:
                                      controllerBankAccount.text,
                                      phoneNumber: controllerPhoneNumber.text,
                                      dateOfBirth: controllerDateOfBirth.text,
                                      lastname: controllerLastName.text,
                                      firstname: controllerFirstName.text,
                                      email: controllerEmail.text),
                                );
                              }
                            },
                          );
                        }
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
