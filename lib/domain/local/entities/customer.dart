import 'package:isar/isar.dart';

part 'customer.g.dart';

@collection
class Customer {
  Id id = Isar.autoIncrement;
  @Index(unique: true)
  String? firstname;
  @Index(unique: true)
  String? lastname;
  @Index(unique: true)
  String? dateOfBirth;
  @Index(unique: true)
  String? phoneNumber;
  @Index(unique: true)
  String? email;
  @Index(unique: true)
  String? bankAccountNumber;

  Customer({this.firstname, this.lastname, this.dateOfBirth, this.phoneNumber,
      this.email, this.bankAccountNumber});
}
