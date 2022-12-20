import 'package:isar/isar.dart';

class DatabaseHelper {

  Future<Isar> open(dynamic schema) {
    return Isar.open(
      [schema],
    );
  }

}
