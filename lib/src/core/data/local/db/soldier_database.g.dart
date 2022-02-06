// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soldier_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class PersonalInfoTableData extends DataClass
    implements Insertable<PersonalInfoTableData> {
  final int? id;
  final String nationalIdentity;
  final String firstName;
  final String lastName;
  final String? suffixOfLastName;
  final String fatherName;
  final String dateOfBirth;
  final String maritalStatus;
  final int? numberOfChildren;
  final String levelOfEducation;
  final String? filedOfStudy;
  final String? mobileNumber;
  final String? telephoneNumber;
  final String address;
  final int? distance;
  PersonalInfoTableData(
      {this.id,
      required this.nationalIdentity,
      required this.firstName,
      required this.lastName,
      this.suffixOfLastName,
      required this.fatherName,
      required this.dateOfBirth,
      required this.maritalStatus,
      this.numberOfChildren,
      required this.levelOfEducation,
      this.filedOfStudy,
      this.mobileNumber,
      this.telephoneNumber,
      required this.address,
      this.distance});
  factory PersonalInfoTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PersonalInfoTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nationalIdentity: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}national_identity'])!,
      firstName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}first_name'])!,
      lastName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name'])!,
      suffixOfLastName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}suffix_of_last_name']),
      fatherName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}father_name'])!,
      dateOfBirth: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_of_birth'])!,
      maritalStatus: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}marital_status'])!,
      numberOfChildren: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}number_of_children']),
      levelOfEducation: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}level_of_education'])!,
      filedOfStudy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}filed_of_study']),
      mobileNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile_number']),
      telephoneNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}telephone_number']),
      address: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address'])!,
      distance: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}distance']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['national_identity'] = Variable<String>(nationalIdentity);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    if (!nullToAbsent || suffixOfLastName != null) {
      map['suffix_of_last_name'] = Variable<String?>(suffixOfLastName);
    }
    map['father_name'] = Variable<String>(fatherName);
    map['date_of_birth'] = Variable<String>(dateOfBirth);
    map['marital_status'] = Variable<String>(maritalStatus);
    if (!nullToAbsent || numberOfChildren != null) {
      map['number_of_children'] = Variable<int?>(numberOfChildren);
    }
    map['level_of_education'] = Variable<String>(levelOfEducation);
    if (!nullToAbsent || filedOfStudy != null) {
      map['filed_of_study'] = Variable<String?>(filedOfStudy);
    }
    if (!nullToAbsent || mobileNumber != null) {
      map['mobile_number'] = Variable<String?>(mobileNumber);
    }
    if (!nullToAbsent || telephoneNumber != null) {
      map['telephone_number'] = Variable<String?>(telephoneNumber);
    }
    map['address'] = Variable<String>(address);
    if (!nullToAbsent || distance != null) {
      map['distance'] = Variable<int?>(distance);
    }
    return map;
  }

  PersonalInfoTableCompanion toCompanion(bool nullToAbsent) {
    return PersonalInfoTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nationalIdentity: Value(nationalIdentity),
      firstName: Value(firstName),
      lastName: Value(lastName),
      suffixOfLastName: suffixOfLastName == null && nullToAbsent
          ? const Value.absent()
          : Value(suffixOfLastName),
      fatherName: Value(fatherName),
      dateOfBirth: Value(dateOfBirth),
      maritalStatus: Value(maritalStatus),
      numberOfChildren: numberOfChildren == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfChildren),
      levelOfEducation: Value(levelOfEducation),
      filedOfStudy: filedOfStudy == null && nullToAbsent
          ? const Value.absent()
          : Value(filedOfStudy),
      mobileNumber: mobileNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNumber),
      telephoneNumber: telephoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(telephoneNumber),
      address: Value(address),
      distance: distance == null && nullToAbsent
          ? const Value.absent()
          : Value(distance),
    );
  }

  factory PersonalInfoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PersonalInfoTableData(
      id: serializer.fromJson<int?>(json['id']),
      nationalIdentity: serializer.fromJson<String>(json['nationalIdentity']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      suffixOfLastName: serializer.fromJson<String?>(json['suffixOfLastName']),
      fatherName: serializer.fromJson<String>(json['fatherName']),
      dateOfBirth: serializer.fromJson<String>(json['dateOfBirth']),
      maritalStatus: serializer.fromJson<String>(json['maritalStatus']),
      numberOfChildren: serializer.fromJson<int?>(json['numberOfChildren']),
      levelOfEducation: serializer.fromJson<String>(json['levelOfEducation']),
      filedOfStudy: serializer.fromJson<String?>(json['filedOfStudy']),
      mobileNumber: serializer.fromJson<String?>(json['mobileNumber']),
      telephoneNumber: serializer.fromJson<String?>(json['telephoneNumber']),
      address: serializer.fromJson<String>(json['address']),
      distance: serializer.fromJson<int?>(json['distance']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'nationalIdentity': serializer.toJson<String>(nationalIdentity),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'suffixOfLastName': serializer.toJson<String?>(suffixOfLastName),
      'fatherName': serializer.toJson<String>(fatherName),
      'dateOfBirth': serializer.toJson<String>(dateOfBirth),
      'maritalStatus': serializer.toJson<String>(maritalStatus),
      'numberOfChildren': serializer.toJson<int?>(numberOfChildren),
      'levelOfEducation': serializer.toJson<String>(levelOfEducation),
      'filedOfStudy': serializer.toJson<String?>(filedOfStudy),
      'mobileNumber': serializer.toJson<String?>(mobileNumber),
      'telephoneNumber': serializer.toJson<String?>(telephoneNumber),
      'address': serializer.toJson<String>(address),
      'distance': serializer.toJson<int?>(distance),
    };
  }

  PersonalInfoTableData copyWith(
          {int? id,
          String? nationalIdentity,
          String? firstName,
          String? lastName,
          String? suffixOfLastName,
          String? fatherName,
          String? dateOfBirth,
          String? maritalStatus,
          int? numberOfChildren,
          String? levelOfEducation,
          String? filedOfStudy,
          String? mobileNumber,
          String? telephoneNumber,
          String? address,
          int? distance}) =>
      PersonalInfoTableData(
        id: id ?? this.id,
        nationalIdentity: nationalIdentity ?? this.nationalIdentity,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        suffixOfLastName: suffixOfLastName ?? this.suffixOfLastName,
        fatherName: fatherName ?? this.fatherName,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        numberOfChildren: numberOfChildren ?? this.numberOfChildren,
        levelOfEducation: levelOfEducation ?? this.levelOfEducation,
        filedOfStudy: filedOfStudy ?? this.filedOfStudy,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        telephoneNumber: telephoneNumber ?? this.telephoneNumber,
        address: address ?? this.address,
        distance: distance ?? this.distance,
      );
  @override
  String toString() {
    return (StringBuffer('PersonalInfoTableData(')
          ..write('id: $id, ')
          ..write('nationalIdentity: $nationalIdentity, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('suffixOfLastName: $suffixOfLastName, ')
          ..write('fatherName: $fatherName, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('maritalStatus: $maritalStatus, ')
          ..write('numberOfChildren: $numberOfChildren, ')
          ..write('levelOfEducation: $levelOfEducation, ')
          ..write('filedOfStudy: $filedOfStudy, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('telephoneNumber: $telephoneNumber, ')
          ..write('address: $address, ')
          ..write('distance: $distance')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      nationalIdentity,
      firstName,
      lastName,
      suffixOfLastName,
      fatherName,
      dateOfBirth,
      maritalStatus,
      numberOfChildren,
      levelOfEducation,
      filedOfStudy,
      mobileNumber,
      telephoneNumber,
      address,
      distance);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PersonalInfoTableData &&
          other.id == this.id &&
          other.nationalIdentity == this.nationalIdentity &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.suffixOfLastName == this.suffixOfLastName &&
          other.fatherName == this.fatherName &&
          other.dateOfBirth == this.dateOfBirth &&
          other.maritalStatus == this.maritalStatus &&
          other.numberOfChildren == this.numberOfChildren &&
          other.levelOfEducation == this.levelOfEducation &&
          other.filedOfStudy == this.filedOfStudy &&
          other.mobileNumber == this.mobileNumber &&
          other.telephoneNumber == this.telephoneNumber &&
          other.address == this.address &&
          other.distance == this.distance);
}

class PersonalInfoTableCompanion
    extends UpdateCompanion<PersonalInfoTableData> {
  final Value<int?> id;
  final Value<String> nationalIdentity;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String?> suffixOfLastName;
  final Value<String> fatherName;
  final Value<String> dateOfBirth;
  final Value<String> maritalStatus;
  final Value<int?> numberOfChildren;
  final Value<String> levelOfEducation;
  final Value<String?> filedOfStudy;
  final Value<String?> mobileNumber;
  final Value<String?> telephoneNumber;
  final Value<String> address;
  final Value<int?> distance;
  const PersonalInfoTableCompanion({
    this.id = const Value.absent(),
    this.nationalIdentity = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.suffixOfLastName = const Value.absent(),
    this.fatherName = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.maritalStatus = const Value.absent(),
    this.numberOfChildren = const Value.absent(),
    this.levelOfEducation = const Value.absent(),
    this.filedOfStudy = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.telephoneNumber = const Value.absent(),
    this.address = const Value.absent(),
    this.distance = const Value.absent(),
  });
  PersonalInfoTableCompanion.insert({
    this.id = const Value.absent(),
    required String nationalIdentity,
    required String firstName,
    required String lastName,
    this.suffixOfLastName = const Value.absent(),
    required String fatherName,
    required String dateOfBirth,
    required String maritalStatus,
    this.numberOfChildren = const Value.absent(),
    required String levelOfEducation,
    this.filedOfStudy = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.telephoneNumber = const Value.absent(),
    required String address,
    this.distance = const Value.absent(),
  })  : nationalIdentity = Value(nationalIdentity),
        firstName = Value(firstName),
        lastName = Value(lastName),
        fatherName = Value(fatherName),
        dateOfBirth = Value(dateOfBirth),
        maritalStatus = Value(maritalStatus),
        levelOfEducation = Value(levelOfEducation),
        address = Value(address);
  static Insertable<PersonalInfoTableData> custom({
    Expression<int?>? id,
    Expression<String>? nationalIdentity,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String?>? suffixOfLastName,
    Expression<String>? fatherName,
    Expression<String>? dateOfBirth,
    Expression<String>? maritalStatus,
    Expression<int?>? numberOfChildren,
    Expression<String>? levelOfEducation,
    Expression<String?>? filedOfStudy,
    Expression<String?>? mobileNumber,
    Expression<String?>? telephoneNumber,
    Expression<String>? address,
    Expression<int?>? distance,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nationalIdentity != null) 'national_identity': nationalIdentity,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (suffixOfLastName != null) 'suffix_of_last_name': suffixOfLastName,
      if (fatherName != null) 'father_name': fatherName,
      if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
      if (maritalStatus != null) 'marital_status': maritalStatus,
      if (numberOfChildren != null) 'number_of_children': numberOfChildren,
      if (levelOfEducation != null) 'level_of_education': levelOfEducation,
      if (filedOfStudy != null) 'filed_of_study': filedOfStudy,
      if (mobileNumber != null) 'mobile_number': mobileNumber,
      if (telephoneNumber != null) 'telephone_number': telephoneNumber,
      if (address != null) 'address': address,
      if (distance != null) 'distance': distance,
    });
  }

  PersonalInfoTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? nationalIdentity,
      Value<String>? firstName,
      Value<String>? lastName,
      Value<String?>? suffixOfLastName,
      Value<String>? fatherName,
      Value<String>? dateOfBirth,
      Value<String>? maritalStatus,
      Value<int?>? numberOfChildren,
      Value<String>? levelOfEducation,
      Value<String?>? filedOfStudy,
      Value<String?>? mobileNumber,
      Value<String?>? telephoneNumber,
      Value<String>? address,
      Value<int?>? distance}) {
    return PersonalInfoTableCompanion(
      id: id ?? this.id,
      nationalIdentity: nationalIdentity ?? this.nationalIdentity,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      suffixOfLastName: suffixOfLastName ?? this.suffixOfLastName,
      fatherName: fatherName ?? this.fatherName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      numberOfChildren: numberOfChildren ?? this.numberOfChildren,
      levelOfEducation: levelOfEducation ?? this.levelOfEducation,
      filedOfStudy: filedOfStudy ?? this.filedOfStudy,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      telephoneNumber: telephoneNumber ?? this.telephoneNumber,
      address: address ?? this.address,
      distance: distance ?? this.distance,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (nationalIdentity.present) {
      map['national_identity'] = Variable<String>(nationalIdentity.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (suffixOfLastName.present) {
      map['suffix_of_last_name'] = Variable<String?>(suffixOfLastName.value);
    }
    if (fatherName.present) {
      map['father_name'] = Variable<String>(fatherName.value);
    }
    if (dateOfBirth.present) {
      map['date_of_birth'] = Variable<String>(dateOfBirth.value);
    }
    if (maritalStatus.present) {
      map['marital_status'] = Variable<String>(maritalStatus.value);
    }
    if (numberOfChildren.present) {
      map['number_of_children'] = Variable<int?>(numberOfChildren.value);
    }
    if (levelOfEducation.present) {
      map['level_of_education'] = Variable<String>(levelOfEducation.value);
    }
    if (filedOfStudy.present) {
      map['filed_of_study'] = Variable<String?>(filedOfStudy.value);
    }
    if (mobileNumber.present) {
      map['mobile_number'] = Variable<String?>(mobileNumber.value);
    }
    if (telephoneNumber.present) {
      map['telephone_number'] = Variable<String?>(telephoneNumber.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (distance.present) {
      map['distance'] = Variable<int?>(distance.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersonalInfoTableCompanion(')
          ..write('id: $id, ')
          ..write('nationalIdentity: $nationalIdentity, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('suffixOfLastName: $suffixOfLastName, ')
          ..write('fatherName: $fatherName, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('maritalStatus: $maritalStatus, ')
          ..write('numberOfChildren: $numberOfChildren, ')
          ..write('levelOfEducation: $levelOfEducation, ')
          ..write('filedOfStudy: $filedOfStudy, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('telephoneNumber: $telephoneNumber, ')
          ..write('address: $address, ')
          ..write('distance: $distance')
          ..write(')'))
        .toString();
  }
}

class $PersonalInfoTableTable extends PersonalInfoTable
    with TableInfo<$PersonalInfoTableTable, PersonalInfoTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $PersonalInfoTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nationalIdentityMeta =
      const VerificationMeta('nationalIdentity');
  @override
  late final GeneratedColumn<String?> nationalIdentity =
      GeneratedColumn<String?>('national_identity', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _firstNameMeta = const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String?> firstName = GeneratedColumn<String?>(
      'first_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String?> lastName = GeneratedColumn<String?>(
      'last_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _suffixOfLastNameMeta =
      const VerificationMeta('suffixOfLastName');
  @override
  late final GeneratedColumn<String?> suffixOfLastName =
      GeneratedColumn<String?>('suffix_of_last_name', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fatherNameMeta = const VerificationMeta('fatherName');
  @override
  late final GeneratedColumn<String?> fatherName = GeneratedColumn<String?>(
      'father_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dateOfBirthMeta =
      const VerificationMeta('dateOfBirth');
  @override
  late final GeneratedColumn<String?> dateOfBirth = GeneratedColumn<String?>(
      'date_of_birth', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _maritalStatusMeta =
      const VerificationMeta('maritalStatus');
  @override
  late final GeneratedColumn<String?> maritalStatus = GeneratedColumn<String?>(
      'marital_status', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _numberOfChildrenMeta =
      const VerificationMeta('numberOfChildren');
  @override
  late final GeneratedColumn<int?> numberOfChildren = GeneratedColumn<int?>(
      'number_of_children', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _levelOfEducationMeta =
      const VerificationMeta('levelOfEducation');
  @override
  late final GeneratedColumn<String?> levelOfEducation =
      GeneratedColumn<String?>('level_of_education', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _filedOfStudyMeta =
      const VerificationMeta('filedOfStudy');
  @override
  late final GeneratedColumn<String?> filedOfStudy = GeneratedColumn<String?>(
      'filed_of_study', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _mobileNumberMeta =
      const VerificationMeta('mobileNumber');
  @override
  late final GeneratedColumn<String?> mobileNumber = GeneratedColumn<String?>(
      'mobile_number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _telephoneNumberMeta =
      const VerificationMeta('telephoneNumber');
  @override
  late final GeneratedColumn<String?> telephoneNumber =
      GeneratedColumn<String?>('telephone_number', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  @override
  late final GeneratedColumn<String?> address = GeneratedColumn<String?>(
      'address', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _distanceMeta = const VerificationMeta('distance');
  @override
  late final GeneratedColumn<int?> distance = GeneratedColumn<int?>(
      'distance', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        nationalIdentity,
        firstName,
        lastName,
        suffixOfLastName,
        fatherName,
        dateOfBirth,
        maritalStatus,
        numberOfChildren,
        levelOfEducation,
        filedOfStudy,
        mobileNumber,
        telephoneNumber,
        address,
        distance
      ];
  @override
  String get aliasedName => _alias ?? 'personal_info_table';
  @override
  String get actualTableName => 'personal_info_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PersonalInfoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('national_identity')) {
      context.handle(
          _nationalIdentityMeta,
          nationalIdentity.isAcceptableOrUnknown(
              data['national_identity']!, _nationalIdentityMeta));
    } else if (isInserting) {
      context.missing(_nationalIdentityMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('suffix_of_last_name')) {
      context.handle(
          _suffixOfLastNameMeta,
          suffixOfLastName.isAcceptableOrUnknown(
              data['suffix_of_last_name']!, _suffixOfLastNameMeta));
    }
    if (data.containsKey('father_name')) {
      context.handle(
          _fatherNameMeta,
          fatherName.isAcceptableOrUnknown(
              data['father_name']!, _fatherNameMeta));
    } else if (isInserting) {
      context.missing(_fatherNameMeta);
    }
    if (data.containsKey('date_of_birth')) {
      context.handle(
          _dateOfBirthMeta,
          dateOfBirth.isAcceptableOrUnknown(
              data['date_of_birth']!, _dateOfBirthMeta));
    } else if (isInserting) {
      context.missing(_dateOfBirthMeta);
    }
    if (data.containsKey('marital_status')) {
      context.handle(
          _maritalStatusMeta,
          maritalStatus.isAcceptableOrUnknown(
              data['marital_status']!, _maritalStatusMeta));
    } else if (isInserting) {
      context.missing(_maritalStatusMeta);
    }
    if (data.containsKey('number_of_children')) {
      context.handle(
          _numberOfChildrenMeta,
          numberOfChildren.isAcceptableOrUnknown(
              data['number_of_children']!, _numberOfChildrenMeta));
    }
    if (data.containsKey('level_of_education')) {
      context.handle(
          _levelOfEducationMeta,
          levelOfEducation.isAcceptableOrUnknown(
              data['level_of_education']!, _levelOfEducationMeta));
    } else if (isInserting) {
      context.missing(_levelOfEducationMeta);
    }
    if (data.containsKey('filed_of_study')) {
      context.handle(
          _filedOfStudyMeta,
          filedOfStudy.isAcceptableOrUnknown(
              data['filed_of_study']!, _filedOfStudyMeta));
    }
    if (data.containsKey('mobile_number')) {
      context.handle(
          _mobileNumberMeta,
          mobileNumber.isAcceptableOrUnknown(
              data['mobile_number']!, _mobileNumberMeta));
    }
    if (data.containsKey('telephone_number')) {
      context.handle(
          _telephoneNumberMeta,
          telephoneNumber.isAcceptableOrUnknown(
              data['telephone_number']!, _telephoneNumberMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('distance')) {
      context.handle(_distanceMeta,
          distance.isAcceptableOrUnknown(data['distance']!, _distanceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PersonalInfoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PersonalInfoTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PersonalInfoTableTable createAlias(String alias) {
    return $PersonalInfoTableTable(_db, alias);
  }
}

class RanksTableData extends DataClass implements Insertable<RanksTableData> {
  final int? id;
  final int rankNumber;
  final String rankName;
  RanksTableData({this.id, required this.rankNumber, required this.rankName});
  factory RanksTableData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return RanksTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      rankNumber: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rank_number'])!,
      rankName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rank_name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['rank_number'] = Variable<int>(rankNumber);
    map['rank_name'] = Variable<String>(rankName);
    return map;
  }

  RanksTableCompanion toCompanion(bool nullToAbsent) {
    return RanksTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      rankNumber: Value(rankNumber),
      rankName: Value(rankName),
    );
  }

  factory RanksTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RanksTableData(
      id: serializer.fromJson<int?>(json['id']),
      rankNumber: serializer.fromJson<int>(json['rankNumber']),
      rankName: serializer.fromJson<String>(json['rankName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'rankNumber': serializer.toJson<int>(rankNumber),
      'rankName': serializer.toJson<String>(rankName),
    };
  }

  RanksTableData copyWith({int? id, int? rankNumber, String? rankName}) =>
      RanksTableData(
        id: id ?? this.id,
        rankNumber: rankNumber ?? this.rankNumber,
        rankName: rankName ?? this.rankName,
      );
  @override
  String toString() {
    return (StringBuffer('RanksTableData(')
          ..write('id: $id, ')
          ..write('rankNumber: $rankNumber, ')
          ..write('rankName: $rankName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, rankNumber, rankName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RanksTableData &&
          other.id == this.id &&
          other.rankNumber == this.rankNumber &&
          other.rankName == this.rankName);
}

class RanksTableCompanion extends UpdateCompanion<RanksTableData> {
  final Value<int?> id;
  final Value<int> rankNumber;
  final Value<String> rankName;
  const RanksTableCompanion({
    this.id = const Value.absent(),
    this.rankNumber = const Value.absent(),
    this.rankName = const Value.absent(),
  });
  RanksTableCompanion.insert({
    this.id = const Value.absent(),
    required int rankNumber,
    required String rankName,
  })  : rankNumber = Value(rankNumber),
        rankName = Value(rankName);
  static Insertable<RanksTableData> custom({
    Expression<int?>? id,
    Expression<int>? rankNumber,
    Expression<String>? rankName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (rankNumber != null) 'rank_number': rankNumber,
      if (rankName != null) 'rank_name': rankName,
    });
  }

  RanksTableCompanion copyWith(
      {Value<int?>? id, Value<int>? rankNumber, Value<String>? rankName}) {
    return RanksTableCompanion(
      id: id ?? this.id,
      rankNumber: rankNumber ?? this.rankNumber,
      rankName: rankName ?? this.rankName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (rankNumber.present) {
      map['rank_number'] = Variable<int>(rankNumber.value);
    }
    if (rankName.present) {
      map['rank_name'] = Variable<String>(rankName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RanksTableCompanion(')
          ..write('id: $id, ')
          ..write('rankNumber: $rankNumber, ')
          ..write('rankName: $rankName')
          ..write(')'))
        .toString();
  }
}

class $RanksTableTable extends RanksTable
    with TableInfo<$RanksTableTable, RanksTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $RanksTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _rankNumberMeta = const VerificationMeta('rankNumber');
  @override
  late final GeneratedColumn<int?> rankNumber = GeneratedColumn<int?>(
      'rank_number', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _rankNameMeta = const VerificationMeta('rankName');
  @override
  late final GeneratedColumn<String?> rankName = GeneratedColumn<String?>(
      'rank_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, rankNumber, rankName];
  @override
  String get aliasedName => _alias ?? 'ranks_table';
  @override
  String get actualTableName => 'ranks_table';
  @override
  VerificationContext validateIntegrity(Insertable<RanksTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('rank_number')) {
      context.handle(
          _rankNumberMeta,
          rankNumber.isAcceptableOrUnknown(
              data['rank_number']!, _rankNumberMeta));
    } else if (isInserting) {
      context.missing(_rankNumberMeta);
    }
    if (data.containsKey('rank_name')) {
      context.handle(_rankNameMeta,
          rankName.isAcceptableOrUnknown(data['rank_name']!, _rankNameMeta));
    } else if (isInserting) {
      context.missing(_rankNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RanksTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return RanksTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RanksTableTable createAlias(String alias) {
    return $RanksTableTable(_db, alias);
  }
}

class SectionsTableData extends DataClass
    implements Insertable<SectionsTableData> {
  final int? id;
  final String locationName;
  final String? sectionName;
  final String? sectionNameAbbr;
  SectionsTableData(
      {this.id,
      required this.locationName,
      this.sectionName,
      this.sectionNameAbbr});
  factory SectionsTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SectionsTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      locationName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}location_name'])!,
      sectionName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section_name']),
      sectionNameAbbr: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section_name_abbr']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['location_name'] = Variable<String>(locationName);
    if (!nullToAbsent || sectionName != null) {
      map['section_name'] = Variable<String?>(sectionName);
    }
    if (!nullToAbsent || sectionNameAbbr != null) {
      map['section_name_abbr'] = Variable<String?>(sectionNameAbbr);
    }
    return map;
  }

  SectionsTableCompanion toCompanion(bool nullToAbsent) {
    return SectionsTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      locationName: Value(locationName),
      sectionName: sectionName == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionName),
      sectionNameAbbr: sectionNameAbbr == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionNameAbbr),
    );
  }

  factory SectionsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectionsTableData(
      id: serializer.fromJson<int?>(json['id']),
      locationName: serializer.fromJson<String>(json['locationName']),
      sectionName: serializer.fromJson<String?>(json['sectionName']),
      sectionNameAbbr: serializer.fromJson<String?>(json['sectionNameAbbr']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'locationName': serializer.toJson<String>(locationName),
      'sectionName': serializer.toJson<String?>(sectionName),
      'sectionNameAbbr': serializer.toJson<String?>(sectionNameAbbr),
    };
  }

  SectionsTableData copyWith(
          {int? id,
          String? locationName,
          String? sectionName,
          String? sectionNameAbbr}) =>
      SectionsTableData(
        id: id ?? this.id,
        locationName: locationName ?? this.locationName,
        sectionName: sectionName ?? this.sectionName,
        sectionNameAbbr: sectionNameAbbr ?? this.sectionNameAbbr,
      );
  @override
  String toString() {
    return (StringBuffer('SectionsTableData(')
          ..write('id: $id, ')
          ..write('locationName: $locationName, ')
          ..write('sectionName: $sectionName, ')
          ..write('sectionNameAbbr: $sectionNameAbbr')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, locationName, sectionName, sectionNameAbbr);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionsTableData &&
          other.id == this.id &&
          other.locationName == this.locationName &&
          other.sectionName == this.sectionName &&
          other.sectionNameAbbr == this.sectionNameAbbr);
}

class SectionsTableCompanion extends UpdateCompanion<SectionsTableData> {
  final Value<int?> id;
  final Value<String> locationName;
  final Value<String?> sectionName;
  final Value<String?> sectionNameAbbr;
  const SectionsTableCompanion({
    this.id = const Value.absent(),
    this.locationName = const Value.absent(),
    this.sectionName = const Value.absent(),
    this.sectionNameAbbr = const Value.absent(),
  });
  SectionsTableCompanion.insert({
    this.id = const Value.absent(),
    required String locationName,
    this.sectionName = const Value.absent(),
    this.sectionNameAbbr = const Value.absent(),
  }) : locationName = Value(locationName);
  static Insertable<SectionsTableData> custom({
    Expression<int?>? id,
    Expression<String>? locationName,
    Expression<String?>? sectionName,
    Expression<String?>? sectionNameAbbr,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (locationName != null) 'location_name': locationName,
      if (sectionName != null) 'section_name': sectionName,
      if (sectionNameAbbr != null) 'section_name_abbr': sectionNameAbbr,
    });
  }

  SectionsTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? locationName,
      Value<String?>? sectionName,
      Value<String?>? sectionNameAbbr}) {
    return SectionsTableCompanion(
      id: id ?? this.id,
      locationName: locationName ?? this.locationName,
      sectionName: sectionName ?? this.sectionName,
      sectionNameAbbr: sectionNameAbbr ?? this.sectionNameAbbr,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (locationName.present) {
      map['location_name'] = Variable<String>(locationName.value);
    }
    if (sectionName.present) {
      map['section_name'] = Variable<String?>(sectionName.value);
    }
    if (sectionNameAbbr.present) {
      map['section_name_abbr'] = Variable<String?>(sectionNameAbbr.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionsTableCompanion(')
          ..write('id: $id, ')
          ..write('locationName: $locationName, ')
          ..write('sectionName: $sectionName, ')
          ..write('sectionNameAbbr: $sectionNameAbbr')
          ..write(')'))
        .toString();
  }
}

class $SectionsTableTable extends SectionsTable
    with TableInfo<$SectionsTableTable, SectionsTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $SectionsTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _locationNameMeta =
      const VerificationMeta('locationName');
  @override
  late final GeneratedColumn<String?> locationName = GeneratedColumn<String?>(
      'location_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _sectionNameMeta =
      const VerificationMeta('sectionName');
  @override
  late final GeneratedColumn<String?> sectionName = GeneratedColumn<String?>(
      'section_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _sectionNameAbbrMeta =
      const VerificationMeta('sectionNameAbbr');
  @override
  late final GeneratedColumn<String?> sectionNameAbbr =
      GeneratedColumn<String?>('section_name_abbr', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, locationName, sectionName, sectionNameAbbr];
  @override
  String get aliasedName => _alias ?? 'sections_table';
  @override
  String get actualTableName => 'sections_table';
  @override
  VerificationContext validateIntegrity(Insertable<SectionsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('location_name')) {
      context.handle(
          _locationNameMeta,
          locationName.isAcceptableOrUnknown(
              data['location_name']!, _locationNameMeta));
    } else if (isInserting) {
      context.missing(_locationNameMeta);
    }
    if (data.containsKey('section_name')) {
      context.handle(
          _sectionNameMeta,
          sectionName.isAcceptableOrUnknown(
              data['section_name']!, _sectionNameMeta));
    }
    if (data.containsKey('section_name_abbr')) {
      context.handle(
          _sectionNameAbbrMeta,
          sectionNameAbbr.isAcceptableOrUnknown(
              data['section_name_abbr']!, _sectionNameAbbrMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SectionsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SectionsTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SectionsTableTable createAlias(String alias) {
    return $SectionsTableTable(_db, alias);
  }
}

class SoldierInfoTableData extends DataClass
    implements Insertable<SoldierInfoTableData> {
  final int? id;
  final String fileNo;
  final DateTime dateOfDispatch;
  final int? rankId;
  final bool healthState;
  final bool bGroup;
  final int legalPeriodOfService;
  final int overtime;
  final bool divisionStatus;
  final int? sectionId;
  final int personalInfoId;
  SoldierInfoTableData(
      {this.id,
      required this.fileNo,
      required this.dateOfDispatch,
      this.rankId,
      required this.healthState,
      required this.bGroup,
      required this.legalPeriodOfService,
      required this.overtime,
      required this.divisionStatus,
      this.sectionId,
      required this.personalInfoId});
  factory SoldierInfoTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SoldierInfoTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      fileNo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}file_no'])!,
      dateOfDispatch: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_of_dispatch'])!,
      rankId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rank_id']),
      healthState: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}health_state'])!,
      bGroup: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}b_group'])!,
      legalPeriodOfService: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}legal_period_of_service'])!,
      overtime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overtime'])!,
      divisionStatus: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}division_status'])!,
      sectionId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section_id']),
      personalInfoId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}personal_info_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['file_no'] = Variable<String>(fileNo);
    map['date_of_dispatch'] = Variable<DateTime>(dateOfDispatch);
    if (!nullToAbsent || rankId != null) {
      map['rank_id'] = Variable<int?>(rankId);
    }
    map['health_state'] = Variable<bool>(healthState);
    map['b_group'] = Variable<bool>(bGroup);
    map['legal_period_of_service'] = Variable<int>(legalPeriodOfService);
    map['overtime'] = Variable<int>(overtime);
    map['division_status'] = Variable<bool>(divisionStatus);
    if (!nullToAbsent || sectionId != null) {
      map['section_id'] = Variable<int?>(sectionId);
    }
    map['personal_info_id'] = Variable<int>(personalInfoId);
    return map;
  }

  SoldierInfoTableCompanion toCompanion(bool nullToAbsent) {
    return SoldierInfoTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      fileNo: Value(fileNo),
      dateOfDispatch: Value(dateOfDispatch),
      rankId:
          rankId == null && nullToAbsent ? const Value.absent() : Value(rankId),
      healthState: Value(healthState),
      bGroup: Value(bGroup),
      legalPeriodOfService: Value(legalPeriodOfService),
      overtime: Value(overtime),
      divisionStatus: Value(divisionStatus),
      sectionId: sectionId == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionId),
      personalInfoId: Value(personalInfoId),
    );
  }

  factory SoldierInfoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SoldierInfoTableData(
      id: serializer.fromJson<int?>(json['id']),
      fileNo: serializer.fromJson<String>(json['fileNo']),
      dateOfDispatch: serializer.fromJson<DateTime>(json['dateOfDispatch']),
      rankId: serializer.fromJson<int?>(json['rankId']),
      healthState: serializer.fromJson<bool>(json['healthState']),
      bGroup: serializer.fromJson<bool>(json['bGroup']),
      legalPeriodOfService:
          serializer.fromJson<int>(json['legalPeriodOfService']),
      overtime: serializer.fromJson<int>(json['overtime']),
      divisionStatus: serializer.fromJson<bool>(json['divisionStatus']),
      sectionId: serializer.fromJson<int?>(json['sectionId']),
      personalInfoId: serializer.fromJson<int>(json['personalInfoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'fileNo': serializer.toJson<String>(fileNo),
      'dateOfDispatch': serializer.toJson<DateTime>(dateOfDispatch),
      'rankId': serializer.toJson<int?>(rankId),
      'healthState': serializer.toJson<bool>(healthState),
      'bGroup': serializer.toJson<bool>(bGroup),
      'legalPeriodOfService': serializer.toJson<int>(legalPeriodOfService),
      'overtime': serializer.toJson<int>(overtime),
      'divisionStatus': serializer.toJson<bool>(divisionStatus),
      'sectionId': serializer.toJson<int?>(sectionId),
      'personalInfoId': serializer.toJson<int>(personalInfoId),
    };
  }

  SoldierInfoTableData copyWith(
          {int? id,
          String? fileNo,
          DateTime? dateOfDispatch,
          int? rankId,
          bool? healthState,
          bool? bGroup,
          int? legalPeriodOfService,
          int? overtime,
          bool? divisionStatus,
          int? sectionId,
          int? personalInfoId}) =>
      SoldierInfoTableData(
        id: id ?? this.id,
        fileNo: fileNo ?? this.fileNo,
        dateOfDispatch: dateOfDispatch ?? this.dateOfDispatch,
        rankId: rankId ?? this.rankId,
        healthState: healthState ?? this.healthState,
        bGroup: bGroup ?? this.bGroup,
        legalPeriodOfService: legalPeriodOfService ?? this.legalPeriodOfService,
        overtime: overtime ?? this.overtime,
        divisionStatus: divisionStatus ?? this.divisionStatus,
        sectionId: sectionId ?? this.sectionId,
        personalInfoId: personalInfoId ?? this.personalInfoId,
      );
  @override
  String toString() {
    return (StringBuffer('SoldierInfoTableData(')
          ..write('id: $id, ')
          ..write('fileNo: $fileNo, ')
          ..write('dateOfDispatch: $dateOfDispatch, ')
          ..write('rankId: $rankId, ')
          ..write('healthState: $healthState, ')
          ..write('bGroup: $bGroup, ')
          ..write('legalPeriodOfService: $legalPeriodOfService, ')
          ..write('overtime: $overtime, ')
          ..write('divisionStatus: $divisionStatus, ')
          ..write('sectionId: $sectionId, ')
          ..write('personalInfoId: $personalInfoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      fileNo,
      dateOfDispatch,
      rankId,
      healthState,
      bGroup,
      legalPeriodOfService,
      overtime,
      divisionStatus,
      sectionId,
      personalInfoId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SoldierInfoTableData &&
          other.id == this.id &&
          other.fileNo == this.fileNo &&
          other.dateOfDispatch == this.dateOfDispatch &&
          other.rankId == this.rankId &&
          other.healthState == this.healthState &&
          other.bGroup == this.bGroup &&
          other.legalPeriodOfService == this.legalPeriodOfService &&
          other.overtime == this.overtime &&
          other.divisionStatus == this.divisionStatus &&
          other.sectionId == this.sectionId &&
          other.personalInfoId == this.personalInfoId);
}

class SoldierInfoTableCompanion extends UpdateCompanion<SoldierInfoTableData> {
  final Value<int?> id;
  final Value<String> fileNo;
  final Value<DateTime> dateOfDispatch;
  final Value<int?> rankId;
  final Value<bool> healthState;
  final Value<bool> bGroup;
  final Value<int> legalPeriodOfService;
  final Value<int> overtime;
  final Value<bool> divisionStatus;
  final Value<int?> sectionId;
  final Value<int> personalInfoId;
  const SoldierInfoTableCompanion({
    this.id = const Value.absent(),
    this.fileNo = const Value.absent(),
    this.dateOfDispatch = const Value.absent(),
    this.rankId = const Value.absent(),
    this.healthState = const Value.absent(),
    this.bGroup = const Value.absent(),
    this.legalPeriodOfService = const Value.absent(),
    this.overtime = const Value.absent(),
    this.divisionStatus = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.personalInfoId = const Value.absent(),
  });
  SoldierInfoTableCompanion.insert({
    this.id = const Value.absent(),
    required String fileNo,
    required DateTime dateOfDispatch,
    this.rankId = const Value.absent(),
    required bool healthState,
    required bool bGroup,
    required int legalPeriodOfService,
    this.overtime = const Value.absent(),
    this.divisionStatus = const Value.absent(),
    this.sectionId = const Value.absent(),
    required int personalInfoId,
  })  : fileNo = Value(fileNo),
        dateOfDispatch = Value(dateOfDispatch),
        healthState = Value(healthState),
        bGroup = Value(bGroup),
        legalPeriodOfService = Value(legalPeriodOfService),
        personalInfoId = Value(personalInfoId);
  static Insertable<SoldierInfoTableData> custom({
    Expression<int?>? id,
    Expression<String>? fileNo,
    Expression<DateTime>? dateOfDispatch,
    Expression<int?>? rankId,
    Expression<bool>? healthState,
    Expression<bool>? bGroup,
    Expression<int>? legalPeriodOfService,
    Expression<int>? overtime,
    Expression<bool>? divisionStatus,
    Expression<int?>? sectionId,
    Expression<int>? personalInfoId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fileNo != null) 'file_no': fileNo,
      if (dateOfDispatch != null) 'date_of_dispatch': dateOfDispatch,
      if (rankId != null) 'rank_id': rankId,
      if (healthState != null) 'health_state': healthState,
      if (bGroup != null) 'b_group': bGroup,
      if (legalPeriodOfService != null)
        'legal_period_of_service': legalPeriodOfService,
      if (overtime != null) 'overtime': overtime,
      if (divisionStatus != null) 'division_status': divisionStatus,
      if (sectionId != null) 'section_id': sectionId,
      if (personalInfoId != null) 'personal_info_id': personalInfoId,
    });
  }

  SoldierInfoTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? fileNo,
      Value<DateTime>? dateOfDispatch,
      Value<int?>? rankId,
      Value<bool>? healthState,
      Value<bool>? bGroup,
      Value<int>? legalPeriodOfService,
      Value<int>? overtime,
      Value<bool>? divisionStatus,
      Value<int?>? sectionId,
      Value<int>? personalInfoId}) {
    return SoldierInfoTableCompanion(
      id: id ?? this.id,
      fileNo: fileNo ?? this.fileNo,
      dateOfDispatch: dateOfDispatch ?? this.dateOfDispatch,
      rankId: rankId ?? this.rankId,
      healthState: healthState ?? this.healthState,
      bGroup: bGroup ?? this.bGroup,
      legalPeriodOfService: legalPeriodOfService ?? this.legalPeriodOfService,
      overtime: overtime ?? this.overtime,
      divisionStatus: divisionStatus ?? this.divisionStatus,
      sectionId: sectionId ?? this.sectionId,
      personalInfoId: personalInfoId ?? this.personalInfoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (fileNo.present) {
      map['file_no'] = Variable<String>(fileNo.value);
    }
    if (dateOfDispatch.present) {
      map['date_of_dispatch'] = Variable<DateTime>(dateOfDispatch.value);
    }
    if (rankId.present) {
      map['rank_id'] = Variable<int?>(rankId.value);
    }
    if (healthState.present) {
      map['health_state'] = Variable<bool>(healthState.value);
    }
    if (bGroup.present) {
      map['b_group'] = Variable<bool>(bGroup.value);
    }
    if (legalPeriodOfService.present) {
      map['legal_period_of_service'] =
          Variable<int>(legalPeriodOfService.value);
    }
    if (overtime.present) {
      map['overtime'] = Variable<int>(overtime.value);
    }
    if (divisionStatus.present) {
      map['division_status'] = Variable<bool>(divisionStatus.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<int?>(sectionId.value);
    }
    if (personalInfoId.present) {
      map['personal_info_id'] = Variable<int>(personalInfoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SoldierInfoTableCompanion(')
          ..write('id: $id, ')
          ..write('fileNo: $fileNo, ')
          ..write('dateOfDispatch: $dateOfDispatch, ')
          ..write('rankId: $rankId, ')
          ..write('healthState: $healthState, ')
          ..write('bGroup: $bGroup, ')
          ..write('legalPeriodOfService: $legalPeriodOfService, ')
          ..write('overtime: $overtime, ')
          ..write('divisionStatus: $divisionStatus, ')
          ..write('sectionId: $sectionId, ')
          ..write('personalInfoId: $personalInfoId')
          ..write(')'))
        .toString();
  }
}

class $SoldierInfoTableTable extends SoldierInfoTable
    with TableInfo<$SoldierInfoTableTable, SoldierInfoTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $SoldierInfoTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _fileNoMeta = const VerificationMeta('fileNo');
  @override
  late final GeneratedColumn<String?> fileNo = GeneratedColumn<String?>(
      'file_no', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dateOfDispatchMeta =
      const VerificationMeta('dateOfDispatch');
  @override
  late final GeneratedColumn<DateTime?> dateOfDispatch =
      GeneratedColumn<DateTime?>('date_of_dispatch', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _rankIdMeta = const VerificationMeta('rankId');
  @override
  late final GeneratedColumn<int?> rankId = GeneratedColumn<int?>(
      'rank_id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES ranks_table (id)');
  final VerificationMeta _healthStateMeta =
      const VerificationMeta('healthState');
  @override
  late final GeneratedColumn<bool?> healthState = GeneratedColumn<bool?>(
      'health_state', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (health_state IN (0, 1))');
  final VerificationMeta _bGroupMeta = const VerificationMeta('bGroup');
  @override
  late final GeneratedColumn<bool?> bGroup = GeneratedColumn<bool?>(
      'b_group', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (b_group IN (0, 1))');
  final VerificationMeta _legalPeriodOfServiceMeta =
      const VerificationMeta('legalPeriodOfService');
  @override
  late final GeneratedColumn<int?> legalPeriodOfService = GeneratedColumn<int?>(
      'legal_period_of_service', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _overtimeMeta = const VerificationMeta('overtime');
  @override
  late final GeneratedColumn<int?> overtime = GeneratedColumn<int?>(
      'overtime', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _divisionStatusMeta =
      const VerificationMeta('divisionStatus');
  @override
  late final GeneratedColumn<bool?> divisionStatus = GeneratedColumn<bool?>(
      'division_status', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (division_status IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _sectionIdMeta = const VerificationMeta('sectionId');
  @override
  late final GeneratedColumn<int?> sectionId = GeneratedColumn<int?>(
      'section_id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES sections_table (id)');
  final VerificationMeta _personalInfoIdMeta =
      const VerificationMeta('personalInfoId');
  @override
  late final GeneratedColumn<int?> personalInfoId = GeneratedColumn<int?>(
      'personal_info_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES personal_info_table (id)');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fileNo,
        dateOfDispatch,
        rankId,
        healthState,
        bGroup,
        legalPeriodOfService,
        overtime,
        divisionStatus,
        sectionId,
        personalInfoId
      ];
  @override
  String get aliasedName => _alias ?? 'soldier_info_table';
  @override
  String get actualTableName => 'soldier_info_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<SoldierInfoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('file_no')) {
      context.handle(_fileNoMeta,
          fileNo.isAcceptableOrUnknown(data['file_no']!, _fileNoMeta));
    } else if (isInserting) {
      context.missing(_fileNoMeta);
    }
    if (data.containsKey('date_of_dispatch')) {
      context.handle(
          _dateOfDispatchMeta,
          dateOfDispatch.isAcceptableOrUnknown(
              data['date_of_dispatch']!, _dateOfDispatchMeta));
    } else if (isInserting) {
      context.missing(_dateOfDispatchMeta);
    }
    if (data.containsKey('rank_id')) {
      context.handle(_rankIdMeta,
          rankId.isAcceptableOrUnknown(data['rank_id']!, _rankIdMeta));
    }
    if (data.containsKey('health_state')) {
      context.handle(
          _healthStateMeta,
          healthState.isAcceptableOrUnknown(
              data['health_state']!, _healthStateMeta));
    } else if (isInserting) {
      context.missing(_healthStateMeta);
    }
    if (data.containsKey('b_group')) {
      context.handle(_bGroupMeta,
          bGroup.isAcceptableOrUnknown(data['b_group']!, _bGroupMeta));
    } else if (isInserting) {
      context.missing(_bGroupMeta);
    }
    if (data.containsKey('legal_period_of_service')) {
      context.handle(
          _legalPeriodOfServiceMeta,
          legalPeriodOfService.isAcceptableOrUnknown(
              data['legal_period_of_service']!, _legalPeriodOfServiceMeta));
    } else if (isInserting) {
      context.missing(_legalPeriodOfServiceMeta);
    }
    if (data.containsKey('overtime')) {
      context.handle(_overtimeMeta,
          overtime.isAcceptableOrUnknown(data['overtime']!, _overtimeMeta));
    }
    if (data.containsKey('division_status')) {
      context.handle(
          _divisionStatusMeta,
          divisionStatus.isAcceptableOrUnknown(
              data['division_status']!, _divisionStatusMeta));
    }
    if (data.containsKey('section_id')) {
      context.handle(_sectionIdMeta,
          sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta));
    }
    if (data.containsKey('personal_info_id')) {
      context.handle(
          _personalInfoIdMeta,
          personalInfoId.isAcceptableOrUnknown(
              data['personal_info_id']!, _personalInfoIdMeta));
    } else if (isInserting) {
      context.missing(_personalInfoIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SoldierInfoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SoldierInfoTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SoldierInfoTableTable createAlias(String alias) {
    return $SoldierInfoTableTable(_db, alias);
  }
}

class DailyVaccationsTableData extends DataClass
    implements Insertable<DailyVaccationsTableData> {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int totalDays;
  final String vacctionType;
  final int soldierInfoId;
  DailyVaccationsTableData(
      {this.id,
      required this.startDate,
      required this.endDate,
      required this.totalDays,
      required this.vacctionType,
      required this.soldierInfoId});
  factory DailyVaccationsTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DailyVaccationsTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      startDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date'])!,
      endDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date'])!,
      totalDays: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}total_days'])!,
      vacctionType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vacction_type'])!,
      soldierInfoId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}soldier_info_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['start_date'] = Variable<DateTime>(startDate);
    map['end_date'] = Variable<DateTime>(endDate);
    map['total_days'] = Variable<int>(totalDays);
    map['vacction_type'] = Variable<String>(vacctionType);
    map['soldier_info_id'] = Variable<int>(soldierInfoId);
    return map;
  }

  DailyVaccationsTableCompanion toCompanion(bool nullToAbsent) {
    return DailyVaccationsTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      startDate: Value(startDate),
      endDate: Value(endDate),
      totalDays: Value(totalDays),
      vacctionType: Value(vacctionType),
      soldierInfoId: Value(soldierInfoId),
    );
  }

  factory DailyVaccationsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailyVaccationsTableData(
      id: serializer.fromJson<int?>(json['id']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime>(json['endDate']),
      totalDays: serializer.fromJson<int>(json['totalDays']),
      vacctionType: serializer.fromJson<String>(json['vacctionType']),
      soldierInfoId: serializer.fromJson<int>(json['soldierInfoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime>(endDate),
      'totalDays': serializer.toJson<int>(totalDays),
      'vacctionType': serializer.toJson<String>(vacctionType),
      'soldierInfoId': serializer.toJson<int>(soldierInfoId),
    };
  }

  DailyVaccationsTableData copyWith(
          {int? id,
          DateTime? startDate,
          DateTime? endDate,
          int? totalDays,
          String? vacctionType,
          int? soldierInfoId}) =>
      DailyVaccationsTableData(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        totalDays: totalDays ?? this.totalDays,
        vacctionType: vacctionType ?? this.vacctionType,
        soldierInfoId: soldierInfoId ?? this.soldierInfoId,
      );
  @override
  String toString() {
    return (StringBuffer('DailyVaccationsTableData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('totalDays: $totalDays, ')
          ..write('vacctionType: $vacctionType, ')
          ..write('soldierInfoId: $soldierInfoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, startDate, endDate, totalDays, vacctionType, soldierInfoId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyVaccationsTableData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.totalDays == this.totalDays &&
          other.vacctionType == this.vacctionType &&
          other.soldierInfoId == this.soldierInfoId);
}

class DailyVaccationsTableCompanion
    extends UpdateCompanion<DailyVaccationsTableData> {
  final Value<int?> id;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<int> totalDays;
  final Value<String> vacctionType;
  final Value<int> soldierInfoId;
  const DailyVaccationsTableCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.totalDays = const Value.absent(),
    this.vacctionType = const Value.absent(),
    this.soldierInfoId = const Value.absent(),
  });
  DailyVaccationsTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startDate,
    required DateTime endDate,
    required int totalDays,
    required String vacctionType,
    required int soldierInfoId,
  })  : startDate = Value(startDate),
        endDate = Value(endDate),
        totalDays = Value(totalDays),
        vacctionType = Value(vacctionType),
        soldierInfoId = Value(soldierInfoId);
  static Insertable<DailyVaccationsTableData> custom({
    Expression<int?>? id,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<int>? totalDays,
    Expression<String>? vacctionType,
    Expression<int>? soldierInfoId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (totalDays != null) 'total_days': totalDays,
      if (vacctionType != null) 'vacction_type': vacctionType,
      if (soldierInfoId != null) 'soldier_info_id': soldierInfoId,
    });
  }

  DailyVaccationsTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime>? startDate,
      Value<DateTime>? endDate,
      Value<int>? totalDays,
      Value<String>? vacctionType,
      Value<int>? soldierInfoId}) {
    return DailyVaccationsTableCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      totalDays: totalDays ?? this.totalDays,
      vacctionType: vacctionType ?? this.vacctionType,
      soldierInfoId: soldierInfoId ?? this.soldierInfoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (totalDays.present) {
      map['total_days'] = Variable<int>(totalDays.value);
    }
    if (vacctionType.present) {
      map['vacction_type'] = Variable<String>(vacctionType.value);
    }
    if (soldierInfoId.present) {
      map['soldier_info_id'] = Variable<int>(soldierInfoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailyVaccationsTableCompanion(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('totalDays: $totalDays, ')
          ..write('vacctionType: $vacctionType, ')
          ..write('soldierInfoId: $soldierInfoId')
          ..write(')'))
        .toString();
  }
}

class $DailyVaccationsTableTable extends DailyVaccationsTable
    with TableInfo<$DailyVaccationsTableTable, DailyVaccationsTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $DailyVaccationsTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _startDateMeta = const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<DateTime?> startDate = GeneratedColumn<DateTime?>(
      'start_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _endDateMeta = const VerificationMeta('endDate');
  @override
  late final GeneratedColumn<DateTime?> endDate = GeneratedColumn<DateTime?>(
      'end_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _totalDaysMeta = const VerificationMeta('totalDays');
  @override
  late final GeneratedColumn<int?> totalDays = GeneratedColumn<int?>(
      'total_days', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _vacctionTypeMeta =
      const VerificationMeta('vacctionType');
  @override
  late final GeneratedColumn<String?> vacctionType = GeneratedColumn<String?>(
      'vacction_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _soldierInfoIdMeta =
      const VerificationMeta('soldierInfoId');
  @override
  late final GeneratedColumn<int?> soldierInfoId = GeneratedColumn<int?>(
      'soldier_info_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES soldier_info_table (id)');
  @override
  List<GeneratedColumn> get $columns =>
      [id, startDate, endDate, totalDays, vacctionType, soldierInfoId];
  @override
  String get aliasedName => _alias ?? 'daily_vaccations_table';
  @override
  String get actualTableName => 'daily_vaccations_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DailyVaccationsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    } else if (isInserting) {
      context.missing(_endDateMeta);
    }
    if (data.containsKey('total_days')) {
      context.handle(_totalDaysMeta,
          totalDays.isAcceptableOrUnknown(data['total_days']!, _totalDaysMeta));
    } else if (isInserting) {
      context.missing(_totalDaysMeta);
    }
    if (data.containsKey('vacction_type')) {
      context.handle(
          _vacctionTypeMeta,
          vacctionType.isAcceptableOrUnknown(
              data['vacction_type']!, _vacctionTypeMeta));
    } else if (isInserting) {
      context.missing(_vacctionTypeMeta);
    }
    if (data.containsKey('soldier_info_id')) {
      context.handle(
          _soldierInfoIdMeta,
          soldierInfoId.isAcceptableOrUnknown(
              data['soldier_info_id']!, _soldierInfoIdMeta));
    } else if (isInserting) {
      context.missing(_soldierInfoIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DailyVaccationsTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return DailyVaccationsTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DailyVaccationsTableTable createAlias(String alias) {
    return $DailyVaccationsTableTable(_db, alias);
  }
}

class HourlyVaccationsTableData extends DataClass
    implements Insertable<HourlyVaccationsTableData> {
  final int? id;
  final DateTime startTime;
  final DateTime endTime;
  final int totalTime;
  final String vacctionType;
  final int soldierInfoId;
  HourlyVaccationsTableData(
      {this.id,
      required this.startTime,
      required this.endTime,
      required this.totalTime,
      required this.vacctionType,
      required this.soldierInfoId});
  factory HourlyVaccationsTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return HourlyVaccationsTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      startTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_time'])!,
      endTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_time'])!,
      totalTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}total_time'])!,
      vacctionType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vacction_type'])!,
      soldierInfoId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}soldier_info_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['start_time'] = Variable<DateTime>(startTime);
    map['end_time'] = Variable<DateTime>(endTime);
    map['total_time'] = Variable<int>(totalTime);
    map['vacction_type'] = Variable<String>(vacctionType);
    map['soldier_info_id'] = Variable<int>(soldierInfoId);
    return map;
  }

  HourlyVaccationsTableCompanion toCompanion(bool nullToAbsent) {
    return HourlyVaccationsTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      startTime: Value(startTime),
      endTime: Value(endTime),
      totalTime: Value(totalTime),
      vacctionType: Value(vacctionType),
      soldierInfoId: Value(soldierInfoId),
    );
  }

  factory HourlyVaccationsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HourlyVaccationsTableData(
      id: serializer.fromJson<int?>(json['id']),
      startTime: serializer.fromJson<DateTime>(json['startTime']),
      endTime: serializer.fromJson<DateTime>(json['endTime']),
      totalTime: serializer.fromJson<int>(json['totalTime']),
      vacctionType: serializer.fromJson<String>(json['vacctionType']),
      soldierInfoId: serializer.fromJson<int>(json['soldierInfoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'startTime': serializer.toJson<DateTime>(startTime),
      'endTime': serializer.toJson<DateTime>(endTime),
      'totalTime': serializer.toJson<int>(totalTime),
      'vacctionType': serializer.toJson<String>(vacctionType),
      'soldierInfoId': serializer.toJson<int>(soldierInfoId),
    };
  }

  HourlyVaccationsTableData copyWith(
          {int? id,
          DateTime? startTime,
          DateTime? endTime,
          int? totalTime,
          String? vacctionType,
          int? soldierInfoId}) =>
      HourlyVaccationsTableData(
        id: id ?? this.id,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        totalTime: totalTime ?? this.totalTime,
        vacctionType: vacctionType ?? this.vacctionType,
        soldierInfoId: soldierInfoId ?? this.soldierInfoId,
      );
  @override
  String toString() {
    return (StringBuffer('HourlyVaccationsTableData(')
          ..write('id: $id, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('totalTime: $totalTime, ')
          ..write('vacctionType: $vacctionType, ')
          ..write('soldierInfoId: $soldierInfoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, startTime, endTime, totalTime, vacctionType, soldierInfoId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HourlyVaccationsTableData &&
          other.id == this.id &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.totalTime == this.totalTime &&
          other.vacctionType == this.vacctionType &&
          other.soldierInfoId == this.soldierInfoId);
}

class HourlyVaccationsTableCompanion
    extends UpdateCompanion<HourlyVaccationsTableData> {
  final Value<int?> id;
  final Value<DateTime> startTime;
  final Value<DateTime> endTime;
  final Value<int> totalTime;
  final Value<String> vacctionType;
  final Value<int> soldierInfoId;
  const HourlyVaccationsTableCompanion({
    this.id = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.totalTime = const Value.absent(),
    this.vacctionType = const Value.absent(),
    this.soldierInfoId = const Value.absent(),
  });
  HourlyVaccationsTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startTime,
    required DateTime endTime,
    required int totalTime,
    required String vacctionType,
    required int soldierInfoId,
  })  : startTime = Value(startTime),
        endTime = Value(endTime),
        totalTime = Value(totalTime),
        vacctionType = Value(vacctionType),
        soldierInfoId = Value(soldierInfoId);
  static Insertable<HourlyVaccationsTableData> custom({
    Expression<int?>? id,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
    Expression<int>? totalTime,
    Expression<String>? vacctionType,
    Expression<int>? soldierInfoId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (totalTime != null) 'total_time': totalTime,
      if (vacctionType != null) 'vacction_type': vacctionType,
      if (soldierInfoId != null) 'soldier_info_id': soldierInfoId,
    });
  }

  HourlyVaccationsTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime>? startTime,
      Value<DateTime>? endTime,
      Value<int>? totalTime,
      Value<String>? vacctionType,
      Value<int>? soldierInfoId}) {
    return HourlyVaccationsTableCompanion(
      id: id ?? this.id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      totalTime: totalTime ?? this.totalTime,
      vacctionType: vacctionType ?? this.vacctionType,
      soldierInfoId: soldierInfoId ?? this.soldierInfoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    if (totalTime.present) {
      map['total_time'] = Variable<int>(totalTime.value);
    }
    if (vacctionType.present) {
      map['vacction_type'] = Variable<String>(vacctionType.value);
    }
    if (soldierInfoId.present) {
      map['soldier_info_id'] = Variable<int>(soldierInfoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HourlyVaccationsTableCompanion(')
          ..write('id: $id, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('totalTime: $totalTime, ')
          ..write('vacctionType: $vacctionType, ')
          ..write('soldierInfoId: $soldierInfoId')
          ..write(')'))
        .toString();
  }
}

class $HourlyVaccationsTableTable extends HourlyVaccationsTable
    with TableInfo<$HourlyVaccationsTableTable, HourlyVaccationsTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $HourlyVaccationsTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _startTimeMeta = const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime?> startTime = GeneratedColumn<DateTime?>(
      'start_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _endTimeMeta = const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime?> endTime = GeneratedColumn<DateTime?>(
      'end_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _totalTimeMeta = const VerificationMeta('totalTime');
  @override
  late final GeneratedColumn<int?> totalTime = GeneratedColumn<int?>(
      'total_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _vacctionTypeMeta =
      const VerificationMeta('vacctionType');
  @override
  late final GeneratedColumn<String?> vacctionType = GeneratedColumn<String?>(
      'vacction_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _soldierInfoIdMeta =
      const VerificationMeta('soldierInfoId');
  @override
  late final GeneratedColumn<int?> soldierInfoId = GeneratedColumn<int?>(
      'soldier_info_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES soldier_info_table (id)');
  @override
  List<GeneratedColumn> get $columns =>
      [id, startTime, endTime, totalTime, vacctionType, soldierInfoId];
  @override
  String get aliasedName => _alias ?? 'hourly_vaccations_table';
  @override
  String get actualTableName => 'hourly_vaccations_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<HourlyVaccationsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    } else if (isInserting) {
      context.missing(_endTimeMeta);
    }
    if (data.containsKey('total_time')) {
      context.handle(_totalTimeMeta,
          totalTime.isAcceptableOrUnknown(data['total_time']!, _totalTimeMeta));
    } else if (isInserting) {
      context.missing(_totalTimeMeta);
    }
    if (data.containsKey('vacction_type')) {
      context.handle(
          _vacctionTypeMeta,
          vacctionType.isAcceptableOrUnknown(
              data['vacction_type']!, _vacctionTypeMeta));
    } else if (isInserting) {
      context.missing(_vacctionTypeMeta);
    }
    if (data.containsKey('soldier_info_id')) {
      context.handle(
          _soldierInfoIdMeta,
          soldierInfoId.isAcceptableOrUnknown(
              data['soldier_info_id']!, _soldierInfoIdMeta));
    } else if (isInserting) {
      context.missing(_soldierInfoIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HourlyVaccationsTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return HourlyVaccationsTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HourlyVaccationsTableTable createAlias(String alias) {
    return $HourlyVaccationsTableTable(_db, alias);
  }
}

abstract class _$SoldierDatabase extends GeneratedDatabase {
  _$SoldierDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $PersonalInfoTableTable personalInfoTable =
      $PersonalInfoTableTable(this);
  late final $RanksTableTable ranksTable = $RanksTableTable(this);
  late final $SectionsTableTable sectionsTable = $SectionsTableTable(this);
  late final $SoldierInfoTableTable soldierInfoTable =
      $SoldierInfoTableTable(this);
  late final $DailyVaccationsTableTable dailyVaccationsTable =
      $DailyVaccationsTableTable(this);
  late final $HourlyVaccationsTableTable hourlyVaccationsTable =
      $HourlyVaccationsTableTable(this);
  late final PersonalInfoDAO personalInfoDAO =
      PersonalInfoDAO(this as SoldierDatabase);
  late final SoldierInfoDAO soldierInfoDAO =
      SoldierInfoDAO(this as SoldierDatabase);
  late final DailyVaccationsDAO dailyVaccationsDAO =
      DailyVaccationsDAO(this as SoldierDatabase);
  late final HourlyVaccationsDAO hourlyVaccationsDAO =
      HourlyVaccationsDAO(this as SoldierDatabase);
  late final RanksDAO ranksDAO = RanksDAO(this as SoldierDatabase);
  late final SectionsDAO sectionsDAO = SectionsDAO(this as SoldierDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        personalInfoTable,
        ranksTable,
        sectionsTable,
        soldierInfoTable,
        dailyVaccationsTable,
        hourlyVaccationsTable
      ];
}
