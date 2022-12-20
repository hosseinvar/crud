import 'dart:async';

import 'package:crud/domain/local/entities/customer.dart';
import 'package:crud/domain/repositories/CustomerRepository.dart';

import '../../base/domain/usecase.dart';

class AddCustomerUseCase extends UseCase<int, Customer?> {
  final repository = CustomerRepository();

  @override
  Future<Stream<int>> buildUseCaseStream(Customer? customer) async {
    final StreamController<int> controller = StreamController();

    repository
        .addCustomer(customer!)
        .then((value) => controller.add(value))
        .catchError((e) => controller.addError(e));

    return controller.stream;
  }
}
