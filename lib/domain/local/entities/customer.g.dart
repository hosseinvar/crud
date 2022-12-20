// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetCustomerCollection on Isar {
  IsarCollection<Customer> get customers => this.collection();
}

const CustomerSchema = CollectionSchema(
  name: r'Customer',
  id: -7623823084711604343,
  properties: {
    r'bankAccountNumber': PropertySchema(
      id: 0,
      name: r'bankAccountNumber',
      type: IsarType.string,
    ),
    r'dateOfBirth': PropertySchema(
      id: 1,
      name: r'dateOfBirth',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 2,
      name: r'email',
      type: IsarType.string,
    ),
    r'firstname': PropertySchema(
      id: 3,
      name: r'firstname',
      type: IsarType.string,
    ),
    r'lastname': PropertySchema(
      id: 4,
      name: r'lastname',
      type: IsarType.string,
    ),
    r'phoneNumber': PropertySchema(
      id: 5,
      name: r'phoneNumber',
      type: IsarType.string,
    )
  },
  estimateSize: _customerEstimateSize,
  serialize: _customerSerialize,
  deserialize: _customerDeserialize,
  deserializeProp: _customerDeserializeProp,
  idName: r'id',
  indexes: {
    r'firstname': IndexSchema(
      id: 684742378115427321,
      name: r'firstname',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'firstname',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'lastname': IndexSchema(
      id: 4249900801536387533,
      name: r'lastname',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'lastname',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'dateOfBirth': IndexSchema(
      id: -2000401166598973465,
      name: r'dateOfBirth',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'dateOfBirth',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'phoneNumber': IndexSchema(
      id: 5414128966131364535,
      name: r'phoneNumber',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'phoneNumber',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'email': IndexSchema(
      id: -26095440403582047,
      name: r'email',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'email',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'bankAccountNumber': IndexSchema(
      id: -6940500080233754229,
      name: r'bankAccountNumber',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'bankAccountNumber',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _customerGetId,
  getLinks: _customerGetLinks,
  attach: _customerAttach,
  version: '3.0.5',
);

int _customerEstimateSize(
  Customer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bankAccountNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dateOfBirth;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.firstname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phoneNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _customerSerialize(
  Customer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bankAccountNumber);
  writer.writeString(offsets[1], object.dateOfBirth);
  writer.writeString(offsets[2], object.email);
  writer.writeString(offsets[3], object.firstname);
  writer.writeString(offsets[4], object.lastname);
  writer.writeString(offsets[5], object.phoneNumber);
}

Customer _customerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Customer();
  object.bankAccountNumber = reader.readStringOrNull(offsets[0]);
  object.dateOfBirth = reader.readStringOrNull(offsets[1]);
  object.email = reader.readStringOrNull(offsets[2]);
  object.firstname = reader.readStringOrNull(offsets[3]);
  object.id = id;
  object.lastname = reader.readStringOrNull(offsets[4]);
  object.phoneNumber = reader.readStringOrNull(offsets[5]);
  return object;
}

P _customerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _customerGetId(Customer object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _customerGetLinks(Customer object) {
  return [];
}

void _customerAttach(IsarCollection<dynamic> col, Id id, Customer object) {
  object.id = id;
}

extension CustomerByIndex on IsarCollection<Customer> {
  Future<Customer?> getByFirstname(String? firstname) {
    return getByIndex(r'firstname', [firstname]);
  }

  Customer? getByFirstnameSync(String? firstname) {
    return getByIndexSync(r'firstname', [firstname]);
  }

  Future<bool> deleteByFirstname(String? firstname) {
    return deleteByIndex(r'firstname', [firstname]);
  }

  bool deleteByFirstnameSync(String? firstname) {
    return deleteByIndexSync(r'firstname', [firstname]);
  }

  Future<List<Customer?>> getAllByFirstname(List<String?> firstnameValues) {
    final values = firstnameValues.map((e) => [e]).toList();
    return getAllByIndex(r'firstname', values);
  }

  List<Customer?> getAllByFirstnameSync(List<String?> firstnameValues) {
    final values = firstnameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'firstname', values);
  }

  Future<int> deleteAllByFirstname(List<String?> firstnameValues) {
    final values = firstnameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'firstname', values);
  }

  int deleteAllByFirstnameSync(List<String?> firstnameValues) {
    final values = firstnameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'firstname', values);
  }

  Future<Id> putByFirstname(Customer object) {
    return putByIndex(r'firstname', object);
  }

  Id putByFirstnameSync(Customer object, {bool saveLinks = true}) {
    return putByIndexSync(r'firstname', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByFirstname(List<Customer> objects) {
    return putAllByIndex(r'firstname', objects);
  }

  List<Id> putAllByFirstnameSync(List<Customer> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'firstname', objects, saveLinks: saveLinks);
  }

  Future<Customer?> getByLastname(String? lastname) {
    return getByIndex(r'lastname', [lastname]);
  }

  Customer? getByLastnameSync(String? lastname) {
    return getByIndexSync(r'lastname', [lastname]);
  }

  Future<bool> deleteByLastname(String? lastname) {
    return deleteByIndex(r'lastname', [lastname]);
  }

  bool deleteByLastnameSync(String? lastname) {
    return deleteByIndexSync(r'lastname', [lastname]);
  }

  Future<List<Customer?>> getAllByLastname(List<String?> lastnameValues) {
    final values = lastnameValues.map((e) => [e]).toList();
    return getAllByIndex(r'lastname', values);
  }

  List<Customer?> getAllByLastnameSync(List<String?> lastnameValues) {
    final values = lastnameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'lastname', values);
  }

  Future<int> deleteAllByLastname(List<String?> lastnameValues) {
    final values = lastnameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'lastname', values);
  }

  int deleteAllByLastnameSync(List<String?> lastnameValues) {
    final values = lastnameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'lastname', values);
  }

  Future<Id> putByLastname(Customer object) {
    return putByIndex(r'lastname', object);
  }

  Id putByLastnameSync(Customer object, {bool saveLinks = true}) {
    return putByIndexSync(r'lastname', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByLastname(List<Customer> objects) {
    return putAllByIndex(r'lastname', objects);
  }

  List<Id> putAllByLastnameSync(List<Customer> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'lastname', objects, saveLinks: saveLinks);
  }

  Future<Customer?> getByDateOfBirth(String? dateOfBirth) {
    return getByIndex(r'dateOfBirth', [dateOfBirth]);
  }

  Customer? getByDateOfBirthSync(String? dateOfBirth) {
    return getByIndexSync(r'dateOfBirth', [dateOfBirth]);
  }

  Future<bool> deleteByDateOfBirth(String? dateOfBirth) {
    return deleteByIndex(r'dateOfBirth', [dateOfBirth]);
  }

  bool deleteByDateOfBirthSync(String? dateOfBirth) {
    return deleteByIndexSync(r'dateOfBirth', [dateOfBirth]);
  }

  Future<List<Customer?>> getAllByDateOfBirth(List<String?> dateOfBirthValues) {
    final values = dateOfBirthValues.map((e) => [e]).toList();
    return getAllByIndex(r'dateOfBirth', values);
  }

  List<Customer?> getAllByDateOfBirthSync(List<String?> dateOfBirthValues) {
    final values = dateOfBirthValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'dateOfBirth', values);
  }

  Future<int> deleteAllByDateOfBirth(List<String?> dateOfBirthValues) {
    final values = dateOfBirthValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'dateOfBirth', values);
  }

  int deleteAllByDateOfBirthSync(List<String?> dateOfBirthValues) {
    final values = dateOfBirthValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'dateOfBirth', values);
  }

  Future<Id> putByDateOfBirth(Customer object) {
    return putByIndex(r'dateOfBirth', object);
  }

  Id putByDateOfBirthSync(Customer object, {bool saveLinks = true}) {
    return putByIndexSync(r'dateOfBirth', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByDateOfBirth(List<Customer> objects) {
    return putAllByIndex(r'dateOfBirth', objects);
  }

  List<Id> putAllByDateOfBirthSync(List<Customer> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'dateOfBirth', objects, saveLinks: saveLinks);
  }

  Future<Customer?> getByPhoneNumber(String? phoneNumber) {
    return getByIndex(r'phoneNumber', [phoneNumber]);
  }

  Customer? getByPhoneNumberSync(String? phoneNumber) {
    return getByIndexSync(r'phoneNumber', [phoneNumber]);
  }

  Future<bool> deleteByPhoneNumber(String? phoneNumber) {
    return deleteByIndex(r'phoneNumber', [phoneNumber]);
  }

  bool deleteByPhoneNumberSync(String? phoneNumber) {
    return deleteByIndexSync(r'phoneNumber', [phoneNumber]);
  }

  Future<List<Customer?>> getAllByPhoneNumber(List<String?> phoneNumberValues) {
    final values = phoneNumberValues.map((e) => [e]).toList();
    return getAllByIndex(r'phoneNumber', values);
  }

  List<Customer?> getAllByPhoneNumberSync(List<String?> phoneNumberValues) {
    final values = phoneNumberValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'phoneNumber', values);
  }

  Future<int> deleteAllByPhoneNumber(List<String?> phoneNumberValues) {
    final values = phoneNumberValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'phoneNumber', values);
  }

  int deleteAllByPhoneNumberSync(List<String?> phoneNumberValues) {
    final values = phoneNumberValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'phoneNumber', values);
  }

  Future<Id> putByPhoneNumber(Customer object) {
    return putByIndex(r'phoneNumber', object);
  }

  Id putByPhoneNumberSync(Customer object, {bool saveLinks = true}) {
    return putByIndexSync(r'phoneNumber', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByPhoneNumber(List<Customer> objects) {
    return putAllByIndex(r'phoneNumber', objects);
  }

  List<Id> putAllByPhoneNumberSync(List<Customer> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'phoneNumber', objects, saveLinks: saveLinks);
  }

  Future<Customer?> getByEmail(String? email) {
    return getByIndex(r'email', [email]);
  }

  Customer? getByEmailSync(String? email) {
    return getByIndexSync(r'email', [email]);
  }

  Future<bool> deleteByEmail(String? email) {
    return deleteByIndex(r'email', [email]);
  }

  bool deleteByEmailSync(String? email) {
    return deleteByIndexSync(r'email', [email]);
  }

  Future<List<Customer?>> getAllByEmail(List<String?> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return getAllByIndex(r'email', values);
  }

  List<Customer?> getAllByEmailSync(List<String?> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'email', values);
  }

  Future<int> deleteAllByEmail(List<String?> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'email', values);
  }

  int deleteAllByEmailSync(List<String?> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'email', values);
  }

  Future<Id> putByEmail(Customer object) {
    return putByIndex(r'email', object);
  }

  Id putByEmailSync(Customer object, {bool saveLinks = true}) {
    return putByIndexSync(r'email', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByEmail(List<Customer> objects) {
    return putAllByIndex(r'email', objects);
  }

  List<Id> putAllByEmailSync(List<Customer> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'email', objects, saveLinks: saveLinks);
  }

  Future<Customer?> getByBankAccountNumber(String? bankAccountNumber) {
    return getByIndex(r'bankAccountNumber', [bankAccountNumber]);
  }

  Customer? getByBankAccountNumberSync(String? bankAccountNumber) {
    return getByIndexSync(r'bankAccountNumber', [bankAccountNumber]);
  }

  Future<bool> deleteByBankAccountNumber(String? bankAccountNumber) {
    return deleteByIndex(r'bankAccountNumber', [bankAccountNumber]);
  }

  bool deleteByBankAccountNumberSync(String? bankAccountNumber) {
    return deleteByIndexSync(r'bankAccountNumber', [bankAccountNumber]);
  }

  Future<List<Customer?>> getAllByBankAccountNumber(
      List<String?> bankAccountNumberValues) {
    final values = bankAccountNumberValues.map((e) => [e]).toList();
    return getAllByIndex(r'bankAccountNumber', values);
  }

  List<Customer?> getAllByBankAccountNumberSync(
      List<String?> bankAccountNumberValues) {
    final values = bankAccountNumberValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'bankAccountNumber', values);
  }

  Future<int> deleteAllByBankAccountNumber(
      List<String?> bankAccountNumberValues) {
    final values = bankAccountNumberValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'bankAccountNumber', values);
  }

  int deleteAllByBankAccountNumberSync(List<String?> bankAccountNumberValues) {
    final values = bankAccountNumberValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'bankAccountNumber', values);
  }

  Future<Id> putByBankAccountNumber(Customer object) {
    return putByIndex(r'bankAccountNumber', object);
  }

  Id putByBankAccountNumberSync(Customer object, {bool saveLinks = true}) {
    return putByIndexSync(r'bankAccountNumber', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByBankAccountNumber(List<Customer> objects) {
    return putAllByIndex(r'bankAccountNumber', objects);
  }

  List<Id> putAllByBankAccountNumberSync(List<Customer> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'bankAccountNumber', objects,
        saveLinks: saveLinks);
  }
}

extension CustomerQueryWhereSort on QueryBuilder<Customer, Customer, QWhere> {
  QueryBuilder<Customer, Customer, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CustomerQueryWhere on QueryBuilder<Customer, Customer, QWhereClause> {
  QueryBuilder<Customer, Customer, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> firstnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstname',
        value: [null],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> firstnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstname',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> firstnameEqualTo(
      String? firstname) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstname',
        value: [firstname],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> firstnameNotEqualTo(
      String? firstname) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstname',
              lower: [],
              upper: [firstname],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstname',
              lower: [firstname],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstname',
              lower: [firstname],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstname',
              lower: [],
              upper: [firstname],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> lastnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastname',
        value: [null],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> lastnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastname',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> lastnameEqualTo(
      String? lastname) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastname',
        value: [lastname],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> lastnameNotEqualTo(
      String? lastname) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastname',
              lower: [],
              upper: [lastname],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastname',
              lower: [lastname],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastname',
              lower: [lastname],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastname',
              lower: [],
              upper: [lastname],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> dateOfBirthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dateOfBirth',
        value: [null],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> dateOfBirthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateOfBirth',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> dateOfBirthEqualTo(
      String? dateOfBirth) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dateOfBirth',
        value: [dateOfBirth],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> dateOfBirthNotEqualTo(
      String? dateOfBirth) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateOfBirth',
              lower: [],
              upper: [dateOfBirth],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateOfBirth',
              lower: [dateOfBirth],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateOfBirth',
              lower: [dateOfBirth],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateOfBirth',
              lower: [],
              upper: [dateOfBirth],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'phoneNumber',
        value: [null],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'phoneNumber',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> phoneNumberEqualTo(
      String? phoneNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'phoneNumber',
        value: [phoneNumber],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> phoneNumberNotEqualTo(
      String? phoneNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phoneNumber',
              lower: [],
              upper: [phoneNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phoneNumber',
              lower: [phoneNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phoneNumber',
              lower: [phoneNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phoneNumber',
              lower: [],
              upper: [phoneNumber],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'email',
        value: [null],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'email',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> emailEqualTo(
      String? email) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'email',
        value: [email],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> emailNotEqualTo(
      String? email) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [],
              upper: [email],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [email],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [email],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [],
              upper: [email],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause>
      bankAccountNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'bankAccountNumber',
        value: [null],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause>
      bankAccountNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bankAccountNumber',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> bankAccountNumberEqualTo(
      String? bankAccountNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'bankAccountNumber',
        value: [bankAccountNumber],
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause>
      bankAccountNumberNotEqualTo(String? bankAccountNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bankAccountNumber',
              lower: [],
              upper: [bankAccountNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bankAccountNumber',
              lower: [bankAccountNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bankAccountNumber',
              lower: [bankAccountNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bankAccountNumber',
              lower: [],
              upper: [bankAccountNumber],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CustomerQueryFilter
    on QueryBuilder<Customer, Customer, QFilterCondition> {
  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bankAccountNumber',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bankAccountNumber',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bankAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bankAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bankAccountNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bankAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bankAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bankAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bankAccountNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankAccountNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bankAccountNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateOfBirth',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      dateOfBirthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateOfBirth',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      dateOfBirthGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateOfBirth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateOfBirth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateOfBirth',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      dateOfBirthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateOfBirth',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstname',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstname',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstname',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      firstnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstname',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastname',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastname',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastname',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastname',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      phoneNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }
}

extension CustomerQueryObject
    on QueryBuilder<Customer, Customer, QFilterCondition> {}

extension CustomerQueryLinks
    on QueryBuilder<Customer, Customer, QFilterCondition> {}

extension CustomerQuerySortBy on QueryBuilder<Customer, Customer, QSortBy> {
  QueryBuilder<Customer, Customer, QAfterSortBy> sortByBankAccountNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccountNumber', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByBankAccountNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccountNumber', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByDateOfBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByFirstname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByFirstnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByLastname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastname', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByLastnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastname', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }
}

extension CustomerQuerySortThenBy
    on QueryBuilder<Customer, Customer, QSortThenBy> {
  QueryBuilder<Customer, Customer, QAfterSortBy> thenByBankAccountNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccountNumber', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByBankAccountNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccountNumber', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByDateOfBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByFirstname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByFirstnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByLastname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastname', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByLastnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastname', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }
}

extension CustomerQueryWhereDistinct
    on QueryBuilder<Customer, Customer, QDistinct> {
  QueryBuilder<Customer, Customer, QDistinct> distinctByBankAccountNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bankAccountNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByDateOfBirth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateOfBirth', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByFirstname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByLastname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }
}

extension CustomerQueryProperty
    on QueryBuilder<Customer, Customer, QQueryProperty> {
  QueryBuilder<Customer, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Customer, String?, QQueryOperations>
      bankAccountNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bankAccountNumber');
    });
  }

  QueryBuilder<Customer, String?, QQueryOperations> dateOfBirthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateOfBirth');
    });
  }

  QueryBuilder<Customer, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<Customer, String?, QQueryOperations> firstnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstname');
    });
  }

  QueryBuilder<Customer, String?, QQueryOperations> lastnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastname');
    });
  }

  QueryBuilder<Customer, String?, QQueryOperations> phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }
}
