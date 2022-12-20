import 'package:crud/domain/local/entities/customer.dart';
import 'package:crud/ui/presenters/add_customer/bloc/add_customer_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../base/enums/request_status.dart';
import '../../../../domain/usecases/add_customer_usecase.dart';

class AddCustomerCubit extends Cubit<AddCustomerState> {
  AddCustomerCubit(AddCustomerState initialState) : super(initialState);

  final addCustomerUseCase = AddCustomerUseCase();

  void addCustomer(Customer customer) async {
    emit(state.copyWith(insertStatus: AsyncRequestStatus.Submitting));

    addCustomerUseCase.execute((event) {
      emit(state.copyWith(insertStatus: AsyncRequestStatus.Success));
    }, (e) {
      debugPrint(e.toString());
      emit(state.copyWith(insertStatus: AsyncRequestStatus.Error));
    }, params: customer);
  }
}
