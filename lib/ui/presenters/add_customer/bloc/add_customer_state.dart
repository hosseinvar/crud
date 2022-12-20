import 'package:equatable/equatable.dart';

import '../../../../base/enums/request_status.dart';

class AddCustomerState extends Equatable {
  final AsyncRequestStatus? insertStatus;
  final bool? isValidate;

  const AddCustomerState({this.insertStatus, this.isValidate});

  factory AddCustomerState.initial() {
    return const AddCustomerState(
      insertStatus: AsyncRequestStatus.Initial,
      isValidate: false,
    );
  }

  AddCustomerState copyWith({
    AsyncRequestStatus? insertStatus,
    bool? isValidate,
  }) {
    return AddCustomerState(
      insertStatus: insertStatus ?? this.insertStatus,
      isValidate: isValidate ?? this.isValidate,
    );
  }

  @override
  List<Object?> get props => [insertStatus, isValidate];
}
