import 'package:crud/domain/local/database_helper.dart';
import 'package:isar/isar.dart';

import '../entities/customer.dart';

class CustomerDao {
  late Future<Isar> db;

  CustomerDao() {
    db = DatabaseHelper().open(CustomerSchema);
  }

  Future<int> addCustomer(Customer customer) async {
    final isar = await db;
    return isar.writeTxnSync<int>(() => isar.customers.putSync(customer));
  }

  Future<List<Customer>> getAllCustomer() async {
    final isar = await db;

    return isar.customers.where().findAll();
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }
}
