import 'package:crud/domain/local/dao/customer_dao.dart';
import 'package:crud/domain/local/entities/customer.dart';

class CustomerRepository {
  final customerDao = CustomerDao();

  Future<int> addCustomer(Customer customer) {
    return customerDao.addCustomer(customer);
  }

}
