// GENERATED CODE - DO NOT MODIFY BY HAND

part of data;

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class AnnualOvertimeTableData extends DataClass
    implements Insertable<AnnualOvertimeTableData> {
  final int? id;
  final int overtime;
  final int? forgivenessOvertime;
  final int overtimeBalance;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  AnnualOvertimeTableData(
      {this.id,
      required this.overtime,
      this.forgivenessOvertime,
      required this.overtimeBalance,
      this.createdAt,
      this.updatedAt});
  factory AnnualOvertimeTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AnnualOvertimeTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      overtime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overtime'])!,
      forgivenessOvertime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}forgiveness_overtime']),
      overtimeBalance: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overtime_balance'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['overtime'] = Variable<int>(overtime);
    if (!nullToAbsent || forgivenessOvertime != null) {
      map['forgiveness_overtime'] = Variable<int?>(forgivenessOvertime);
    }
    map['overtime_balance'] = Variable<int>(overtimeBalance);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  AnnualOvertimeTableCompanion toCompanion(bool nullToAbsent) {
    return AnnualOvertimeTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      overtime: Value(overtime),
      forgivenessOvertime: forgivenessOvertime == null && nullToAbsent
          ? const Value.absent()
          : Value(forgivenessOvertime),
      overtimeBalance: Value(overtimeBalance),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory AnnualOvertimeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnnualOvertimeTableData(
      id: serializer.fromJson<int?>(json['id']),
      overtime: serializer.fromJson<int>(json['overtime']),
      forgivenessOvertime:
          serializer.fromJson<int?>(json['forgivenessOvertime']),
      overtimeBalance: serializer.fromJson<int>(json['overtimeBalance']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'overtime': serializer.toJson<int>(overtime),
      'forgivenessOvertime': serializer.toJson<int?>(forgivenessOvertime),
      'overtimeBalance': serializer.toJson<int>(overtimeBalance),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  AnnualOvertimeTableData copyWith(
          {int? id,
          int? overtime,
          int? forgivenessOvertime,
          int? overtimeBalance,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      AnnualOvertimeTableData(
        id: id ?? this.id,
        overtime: overtime ?? this.overtime,
        forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
        overtimeBalance: overtimeBalance ?? this.overtimeBalance,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('AnnualOvertimeTableData(')
          ..write('id: $id, ')
          ..write('overtime: $overtime, ')
          ..write('forgivenessOvertime: $forgivenessOvertime, ')
          ..write('overtimeBalance: $overtimeBalance, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, overtime, forgivenessOvertime, overtimeBalance, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnnualOvertimeTableData &&
          other.id == this.id &&
          other.overtime == this.overtime &&
          other.forgivenessOvertime == this.forgivenessOvertime &&
          other.overtimeBalance == this.overtimeBalance &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AnnualOvertimeTableCompanion
    extends UpdateCompanion<AnnualOvertimeTableData> {
  final Value<int?> id;
  final Value<int> overtime;
  final Value<int?> forgivenessOvertime;
  final Value<int> overtimeBalance;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const AnnualOvertimeTableCompanion({
    this.id = const Value.absent(),
    this.overtime = const Value.absent(),
    this.forgivenessOvertime = const Value.absent(),
    this.overtimeBalance = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  AnnualOvertimeTableCompanion.insert({
    this.id = const Value.absent(),
    required int overtime,
    this.forgivenessOvertime = const Value.absent(),
    required int overtimeBalance,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : overtime = Value(overtime),
        overtimeBalance = Value(overtimeBalance);
  static Insertable<AnnualOvertimeTableData> custom({
    Expression<int?>? id,
    Expression<int>? overtime,
    Expression<int?>? forgivenessOvertime,
    Expression<int>? overtimeBalance,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (overtime != null) 'overtime': overtime,
      if (forgivenessOvertime != null)
        'forgiveness_overtime': forgivenessOvertime,
      if (overtimeBalance != null) 'overtime_balance': overtimeBalance,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  AnnualOvertimeTableCompanion copyWith(
      {Value<int?>? id,
      Value<int>? overtime,
      Value<int?>? forgivenessOvertime,
      Value<int>? overtimeBalance,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return AnnualOvertimeTableCompanion(
      id: id ?? this.id,
      overtime: overtime ?? this.overtime,
      forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
      overtimeBalance: overtimeBalance ?? this.overtimeBalance,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (overtime.present) {
      map['overtime'] = Variable<int>(overtime.value);
    }
    if (forgivenessOvertime.present) {
      map['forgiveness_overtime'] = Variable<int?>(forgivenessOvertime.value);
    }
    if (overtimeBalance.present) {
      map['overtime_balance'] = Variable<int>(overtimeBalance.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnnualOvertimeTableCompanion(')
          ..write('id: $id, ')
          ..write('overtime: $overtime, ')
          ..write('forgivenessOvertime: $forgivenessOvertime, ')
          ..write('overtimeBalance: $overtimeBalance, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $AnnualOvertimeTableTable extends AnnualOvertimeTable
    with TableInfo<$AnnualOvertimeTableTable, AnnualOvertimeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnnualOvertimeTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _overtimeMeta = const VerificationMeta('overtime');
  @override
  late final GeneratedColumn<int?> overtime = GeneratedColumn<int?>(
      'overtime', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _forgivenessOvertimeMeta =
      const VerificationMeta('forgivenessOvertime');
  @override
  late final GeneratedColumn<int?> forgivenessOvertime = GeneratedColumn<int?>(
      'forgiveness_overtime', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _overtimeBalanceMeta =
      const VerificationMeta('overtimeBalance');
  @override
  late final GeneratedColumn<int?> overtimeBalance = GeneratedColumn<int?>(
      'overtime_balance', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        overtime,
        forgivenessOvertime,
        overtimeBalance,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'annual_overtime_table';
  @override
  String get actualTableName => 'annual_overtime_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<AnnualOvertimeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('overtime')) {
      context.handle(_overtimeMeta,
          overtime.isAcceptableOrUnknown(data['overtime']!, _overtimeMeta));
    } else if (isInserting) {
      context.missing(_overtimeMeta);
    }
    if (data.containsKey('forgiveness_overtime')) {
      context.handle(
          _forgivenessOvertimeMeta,
          forgivenessOvertime.isAcceptableOrUnknown(
              data['forgiveness_overtime']!, _forgivenessOvertimeMeta));
    }
    if (data.containsKey('overtime_balance')) {
      context.handle(
          _overtimeBalanceMeta,
          overtimeBalance.isAcceptableOrUnknown(
              data['overtime_balance']!, _overtimeBalanceMeta));
    } else if (isInserting) {
      context.missing(_overtimeBalanceMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnnualOvertimeTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AnnualOvertimeTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AnnualOvertimeTableTable createAlias(String alias) {
    return $AnnualOvertimeTableTable(attachedDatabase, alias);
  }
}

class ContactInfoTableData extends DataClass
    implements Insertable<ContactInfoTableData> {
  final int? id;
  final String? phoneNumber;
  final String mobileNumber;
  final String? province;
  final String? city;
  final String address;
  final int distance;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  ContactInfoTableData(
      {this.id,
      this.phoneNumber,
      required this.mobileNumber,
      this.province,
      this.city,
      required this.address,
      required this.distance,
      this.createdAt,
      this.updatedAt});
  factory ContactInfoTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ContactInfoTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      phoneNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone_number']),
      mobileNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile_number'])!,
      province: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}province']),
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city']),
      address: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address'])!,
      distance: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}distance'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String?>(phoneNumber);
    }
    map['mobile_number'] = Variable<String>(mobileNumber);
    if (!nullToAbsent || province != null) {
      map['province'] = Variable<String?>(province);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String?>(city);
    }
    map['address'] = Variable<String>(address);
    map['distance'] = Variable<int>(distance);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  ContactInfoTableCompanion toCompanion(bool nullToAbsent) {
    return ContactInfoTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      mobileNumber: Value(mobileNumber),
      province: province == null && nullToAbsent
          ? const Value.absent()
          : Value(province),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      address: Value(address),
      distance: Value(distance),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory ContactInfoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContactInfoTableData(
      id: serializer.fromJson<int?>(json['id']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
      mobileNumber: serializer.fromJson<String>(json['mobileNumber']),
      province: serializer.fromJson<String?>(json['province']),
      city: serializer.fromJson<String?>(json['city']),
      address: serializer.fromJson<String>(json['address']),
      distance: serializer.fromJson<int>(json['distance']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
      'mobileNumber': serializer.toJson<String>(mobileNumber),
      'province': serializer.toJson<String?>(province),
      'city': serializer.toJson<String?>(city),
      'address': serializer.toJson<String>(address),
      'distance': serializer.toJson<int>(distance),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  ContactInfoTableData copyWith(
          {int? id,
          String? phoneNumber,
          String? mobileNumber,
          String? province,
          String? city,
          String? address,
          int? distance,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      ContactInfoTableData(
        id: id ?? this.id,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        province: province ?? this.province,
        city: city ?? this.city,
        address: address ?? this.address,
        distance: distance ?? this.distance,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ContactInfoTableData(')
          ..write('id: $id, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('province: $province, ')
          ..write('city: $city, ')
          ..write('address: $address, ')
          ..write('distance: $distance, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, phoneNumber, mobileNumber, province, city,
      address, distance, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContactInfoTableData &&
          other.id == this.id &&
          other.phoneNumber == this.phoneNumber &&
          other.mobileNumber == this.mobileNumber &&
          other.province == this.province &&
          other.city == this.city &&
          other.address == this.address &&
          other.distance == this.distance &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ContactInfoTableCompanion extends UpdateCompanion<ContactInfoTableData> {
  final Value<int?> id;
  final Value<String?> phoneNumber;
  final Value<String> mobileNumber;
  final Value<String?> province;
  final Value<String?> city;
  final Value<String> address;
  final Value<int> distance;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const ContactInfoTableCompanion({
    this.id = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.province = const Value.absent(),
    this.city = const Value.absent(),
    this.address = const Value.absent(),
    this.distance = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ContactInfoTableCompanion.insert({
    this.id = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    required String mobileNumber,
    this.province = const Value.absent(),
    this.city = const Value.absent(),
    required String address,
    required int distance,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : mobileNumber = Value(mobileNumber),
        address = Value(address),
        distance = Value(distance);
  static Insertable<ContactInfoTableData> custom({
    Expression<int?>? id,
    Expression<String?>? phoneNumber,
    Expression<String>? mobileNumber,
    Expression<String?>? province,
    Expression<String?>? city,
    Expression<String>? address,
    Expression<int>? distance,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (mobileNumber != null) 'mobile_number': mobileNumber,
      if (province != null) 'province': province,
      if (city != null) 'city': city,
      if (address != null) 'address': address,
      if (distance != null) 'distance': distance,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ContactInfoTableCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? phoneNumber,
      Value<String>? mobileNumber,
      Value<String?>? province,
      Value<String?>? city,
      Value<String>? address,
      Value<int>? distance,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return ContactInfoTableCompanion(
      id: id ?? this.id,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      province: province ?? this.province,
      city: city ?? this.city,
      address: address ?? this.address,
      distance: distance ?? this.distance,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String?>(phoneNumber.value);
    }
    if (mobileNumber.present) {
      map['mobile_number'] = Variable<String>(mobileNumber.value);
    }
    if (province.present) {
      map['province'] = Variable<String?>(province.value);
    }
    if (city.present) {
      map['city'] = Variable<String?>(city.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (distance.present) {
      map['distance'] = Variable<int>(distance.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContactInfoTableCompanion(')
          ..write('id: $id, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('province: $province, ')
          ..write('city: $city, ')
          ..write('address: $address, ')
          ..write('distance: $distance, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $ContactInfoTableTable extends ContactInfoTable
    with TableInfo<$ContactInfoTableTable, ContactInfoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContactInfoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String?> phoneNumber = GeneratedColumn<String?>(
      'phone_number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _mobileNumberMeta =
      const VerificationMeta('mobileNumber');
  @override
  late final GeneratedColumn<String?> mobileNumber = GeneratedColumn<String?>(
      'mobile_number', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _provinceMeta = const VerificationMeta('province');
  @override
  late final GeneratedColumn<String?> province = GeneratedColumn<String?>(
      'province', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  @override
  late final GeneratedColumn<String?> address = GeneratedColumn<String?>(
      'address', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _distanceMeta = const VerificationMeta('distance');
  @override
  late final GeneratedColumn<int?> distance = GeneratedColumn<int?>(
      'distance', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        phoneNumber,
        mobileNumber,
        province,
        city,
        address,
        distance,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'contact_info_table';
  @override
  String get actualTableName => 'contact_info_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ContactInfoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    }
    if (data.containsKey('mobile_number')) {
      context.handle(
          _mobileNumberMeta,
          mobileNumber.isAcceptableOrUnknown(
              data['mobile_number']!, _mobileNumberMeta));
    } else if (isInserting) {
      context.missing(_mobileNumberMeta);
    }
    if (data.containsKey('province')) {
      context.handle(_provinceMeta,
          province.isAcceptableOrUnknown(data['province']!, _provinceMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
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
    } else if (isInserting) {
      context.missing(_distanceMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ContactInfoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ContactInfoTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ContactInfoTableTable createAlias(String alias) {
    return $ContactInfoTableTable(attachedDatabase, alias);
  }
}

class DailyAbsenceOvertimeTableData extends DataClass
    implements Insertable<DailyAbsenceOvertimeTableData> {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int absenceDays;
  final int? overtime;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  DailyAbsenceOvertimeTableData(
      {this.id,
      required this.startDate,
      required this.endDate,
      required this.absenceDays,
      this.overtime,
      this.createdAt,
      this.updatedAt});
  factory DailyAbsenceOvertimeTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DailyAbsenceOvertimeTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      startDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date'])!,
      endDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date'])!,
      absenceDays: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}absence_days'])!,
      overtime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overtime']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
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
    map['absence_days'] = Variable<int>(absenceDays);
    if (!nullToAbsent || overtime != null) {
      map['overtime'] = Variable<int?>(overtime);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  DailyAbsenceOvertimeTableCompanion toCompanion(bool nullToAbsent) {
    return DailyAbsenceOvertimeTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      startDate: Value(startDate),
      endDate: Value(endDate),
      absenceDays: Value(absenceDays),
      overtime: overtime == null && nullToAbsent
          ? const Value.absent()
          : Value(overtime),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory DailyAbsenceOvertimeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailyAbsenceOvertimeTableData(
      id: serializer.fromJson<int?>(json['id']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime>(json['endDate']),
      absenceDays: serializer.fromJson<int>(json['absenceDays']),
      overtime: serializer.fromJson<int?>(json['overtime']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime>(endDate),
      'absenceDays': serializer.toJson<int>(absenceDays),
      'overtime': serializer.toJson<int?>(overtime),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  DailyAbsenceOvertimeTableData copyWith(
          {int? id,
          DateTime? startDate,
          DateTime? endDate,
          int? absenceDays,
          int? overtime,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      DailyAbsenceOvertimeTableData(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        absenceDays: absenceDays ?? this.absenceDays,
        overtime: overtime ?? this.overtime,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('DailyAbsenceOvertimeTableData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('absenceDays: $absenceDays, ')
          ..write('overtime: $overtime, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, startDate, endDate, absenceDays, overtime, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyAbsenceOvertimeTableData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.absenceDays == this.absenceDays &&
          other.overtime == this.overtime &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class DailyAbsenceOvertimeTableCompanion
    extends UpdateCompanion<DailyAbsenceOvertimeTableData> {
  final Value<int?> id;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<int> absenceDays;
  final Value<int?> overtime;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const DailyAbsenceOvertimeTableCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.absenceDays = const Value.absent(),
    this.overtime = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DailyAbsenceOvertimeTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startDate,
    required DateTime endDate,
    required int absenceDays,
    this.overtime = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : startDate = Value(startDate),
        endDate = Value(endDate),
        absenceDays = Value(absenceDays);
  static Insertable<DailyAbsenceOvertimeTableData> custom({
    Expression<int?>? id,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<int>? absenceDays,
    Expression<int?>? overtime,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (absenceDays != null) 'absence_days': absenceDays,
      if (overtime != null) 'overtime': overtime,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  DailyAbsenceOvertimeTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime>? startDate,
      Value<DateTime>? endDate,
      Value<int>? absenceDays,
      Value<int?>? overtime,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return DailyAbsenceOvertimeTableCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      absenceDays: absenceDays ?? this.absenceDays,
      overtime: overtime ?? this.overtime,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
    if (absenceDays.present) {
      map['absence_days'] = Variable<int>(absenceDays.value);
    }
    if (overtime.present) {
      map['overtime'] = Variable<int?>(overtime.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailyAbsenceOvertimeTableCompanion(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('absenceDays: $absenceDays, ')
          ..write('overtime: $overtime, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $DailyAbsenceOvertimeTableTable extends DailyAbsenceOvertimeTable
    with
        TableInfo<$DailyAbsenceOvertimeTableTable,
            DailyAbsenceOvertimeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DailyAbsenceOvertimeTableTable(this.attachedDatabase, [this._alias]);
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
  final VerificationMeta _absenceDaysMeta =
      const VerificationMeta('absenceDays');
  @override
  late final GeneratedColumn<int?> absenceDays = GeneratedColumn<int?>(
      'absence_days', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _overtimeMeta = const VerificationMeta('overtime');
  @override
  late final GeneratedColumn<int?> overtime = GeneratedColumn<int?>(
      'overtime', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, startDate, endDate, absenceDays, overtime, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? 'daily_absence_overtime_table';
  @override
  String get actualTableName => 'daily_absence_overtime_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DailyAbsenceOvertimeTableData> instance,
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
    if (data.containsKey('absence_days')) {
      context.handle(
          _absenceDaysMeta,
          absenceDays.isAcceptableOrUnknown(
              data['absence_days']!, _absenceDaysMeta));
    } else if (isInserting) {
      context.missing(_absenceDaysMeta);
    }
    if (data.containsKey('overtime')) {
      context.handle(_overtimeMeta,
          overtime.isAcceptableOrUnknown(data['overtime']!, _overtimeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DailyAbsenceOvertimeTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return DailyAbsenceOvertimeTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DailyAbsenceOvertimeTableTable createAlias(String alias) {
    return $DailyAbsenceOvertimeTableTable(attachedDatabase, alias);
  }
}

class DailyVaccationTableData extends DataClass
    implements Insertable<DailyVaccationTableData> {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int amount;
  final String vacctionType;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  DailyVaccationTableData(
      {this.id,
      required this.startDate,
      required this.endDate,
      required this.amount,
      required this.vacctionType,
      this.createdAt,
      this.updatedAt});
  factory DailyVaccationTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DailyVaccationTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      startDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date'])!,
      endDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date'])!,
      amount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      vacctionType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vacction_type'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
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
    map['amount'] = Variable<int>(amount);
    map['vacction_type'] = Variable<String>(vacctionType);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  DailyVaccationTableCompanion toCompanion(bool nullToAbsent) {
    return DailyVaccationTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      startDate: Value(startDate),
      endDate: Value(endDate),
      amount: Value(amount),
      vacctionType: Value(vacctionType),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory DailyVaccationTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailyVaccationTableData(
      id: serializer.fromJson<int?>(json['id']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime>(json['endDate']),
      amount: serializer.fromJson<int>(json['amount']),
      vacctionType: serializer.fromJson<String>(json['vacctionType']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime>(endDate),
      'amount': serializer.toJson<int>(amount),
      'vacctionType': serializer.toJson<String>(vacctionType),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  DailyVaccationTableData copyWith(
          {int? id,
          DateTime? startDate,
          DateTime? endDate,
          int? amount,
          String? vacctionType,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      DailyVaccationTableData(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        amount: amount ?? this.amount,
        vacctionType: vacctionType ?? this.vacctionType,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('DailyVaccationTableData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('amount: $amount, ')
          ..write('vacctionType: $vacctionType, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, startDate, endDate, amount, vacctionType, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyVaccationTableData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.amount == this.amount &&
          other.vacctionType == this.vacctionType &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class DailyVaccationTableCompanion
    extends UpdateCompanion<DailyVaccationTableData> {
  final Value<int?> id;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<int> amount;
  final Value<String> vacctionType;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const DailyVaccationTableCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.amount = const Value.absent(),
    this.vacctionType = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DailyVaccationTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startDate,
    required DateTime endDate,
    required int amount,
    required String vacctionType,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : startDate = Value(startDate),
        endDate = Value(endDate),
        amount = Value(amount),
        vacctionType = Value(vacctionType);
  static Insertable<DailyVaccationTableData> custom({
    Expression<int?>? id,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<int>? amount,
    Expression<String>? vacctionType,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (amount != null) 'amount': amount,
      if (vacctionType != null) 'vacction_type': vacctionType,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  DailyVaccationTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime>? startDate,
      Value<DateTime>? endDate,
      Value<int>? amount,
      Value<String>? vacctionType,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return DailyVaccationTableCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      amount: amount ?? this.amount,
      vacctionType: vacctionType ?? this.vacctionType,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (vacctionType.present) {
      map['vacction_type'] = Variable<String>(vacctionType.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailyVaccationTableCompanion(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('amount: $amount, ')
          ..write('vacctionType: $vacctionType, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $DailyVaccationTableTable extends DailyVaccationTable
    with TableInfo<$DailyVaccationTableTable, DailyVaccationTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DailyVaccationTableTable(this.attachedDatabase, [this._alias]);
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
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int?> amount = GeneratedColumn<int?>(
      'amount', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _vacctionTypeMeta =
      const VerificationMeta('vacctionType');
  @override
  late final GeneratedColumn<String?> vacctionType = GeneratedColumn<String?>(
      'vacction_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, startDate, endDate, amount, vacctionType, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? 'daily_vaccation_table';
  @override
  String get actualTableName => 'daily_vaccation_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DailyVaccationTableData> instance,
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
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('vacction_type')) {
      context.handle(
          _vacctionTypeMeta,
          vacctionType.isAcceptableOrUnknown(
              data['vacction_type']!, _vacctionTypeMeta));
    } else if (isInserting) {
      context.missing(_vacctionTypeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DailyVaccationTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return DailyVaccationTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DailyVaccationTableTable createAlias(String alias) {
    return $DailyVaccationTableTable(attachedDatabase, alias);
  }
}

class ViolationsOvertimeTableData extends DataClass
    implements Insertable<ViolationsOvertimeTableData> {
  final int? id;
  final String violationType;
  final int overtime;
  final int forgivenessOvertime;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  ViolationsOvertimeTableData(
      {this.id,
      required this.violationType,
      required this.overtime,
      required this.forgivenessOvertime,
      this.createdAt,
      this.updatedAt});
  factory ViolationsOvertimeTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ViolationsOvertimeTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      violationType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}violation_type'])!,
      overtime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overtime'])!,
      forgivenessOvertime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}forgiveness_overtime'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['violation_type'] = Variable<String>(violationType);
    map['overtime'] = Variable<int>(overtime);
    map['forgiveness_overtime'] = Variable<int>(forgivenessOvertime);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  ViolationsOvertimeTableCompanion toCompanion(bool nullToAbsent) {
    return ViolationsOvertimeTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      violationType: Value(violationType),
      overtime: Value(overtime),
      forgivenessOvertime: Value(forgivenessOvertime),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory ViolationsOvertimeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ViolationsOvertimeTableData(
      id: serializer.fromJson<int?>(json['id']),
      violationType: serializer.fromJson<String>(json['violationType']),
      overtime: serializer.fromJson<int>(json['overtime']),
      forgivenessOvertime:
          serializer.fromJson<int>(json['forgivenessOvertime']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'violationType': serializer.toJson<String>(violationType),
      'overtime': serializer.toJson<int>(overtime),
      'forgivenessOvertime': serializer.toJson<int>(forgivenessOvertime),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  ViolationsOvertimeTableData copyWith(
          {int? id,
          String? violationType,
          int? overtime,
          int? forgivenessOvertime,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      ViolationsOvertimeTableData(
        id: id ?? this.id,
        violationType: violationType ?? this.violationType,
        overtime: overtime ?? this.overtime,
        forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ViolationsOvertimeTableData(')
          ..write('id: $id, ')
          ..write('violationType: $violationType, ')
          ..write('overtime: $overtime, ')
          ..write('forgivenessOvertime: $forgivenessOvertime, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, violationType, overtime, forgivenessOvertime, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ViolationsOvertimeTableData &&
          other.id == this.id &&
          other.violationType == this.violationType &&
          other.overtime == this.overtime &&
          other.forgivenessOvertime == this.forgivenessOvertime &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ViolationsOvertimeTableCompanion
    extends UpdateCompanion<ViolationsOvertimeTableData> {
  final Value<int?> id;
  final Value<String> violationType;
  final Value<int> overtime;
  final Value<int> forgivenessOvertime;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const ViolationsOvertimeTableCompanion({
    this.id = const Value.absent(),
    this.violationType = const Value.absent(),
    this.overtime = const Value.absent(),
    this.forgivenessOvertime = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ViolationsOvertimeTableCompanion.insert({
    this.id = const Value.absent(),
    required String violationType,
    required int overtime,
    required int forgivenessOvertime,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : violationType = Value(violationType),
        overtime = Value(overtime),
        forgivenessOvertime = Value(forgivenessOvertime);
  static Insertable<ViolationsOvertimeTableData> custom({
    Expression<int?>? id,
    Expression<String>? violationType,
    Expression<int>? overtime,
    Expression<int>? forgivenessOvertime,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (violationType != null) 'violation_type': violationType,
      if (overtime != null) 'overtime': overtime,
      if (forgivenessOvertime != null)
        'forgiveness_overtime': forgivenessOvertime,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ViolationsOvertimeTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? violationType,
      Value<int>? overtime,
      Value<int>? forgivenessOvertime,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return ViolationsOvertimeTableCompanion(
      id: id ?? this.id,
      violationType: violationType ?? this.violationType,
      overtime: overtime ?? this.overtime,
      forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (violationType.present) {
      map['violation_type'] = Variable<String>(violationType.value);
    }
    if (overtime.present) {
      map['overtime'] = Variable<int>(overtime.value);
    }
    if (forgivenessOvertime.present) {
      map['forgiveness_overtime'] = Variable<int>(forgivenessOvertime.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ViolationsOvertimeTableCompanion(')
          ..write('id: $id, ')
          ..write('violationType: $violationType, ')
          ..write('overtime: $overtime, ')
          ..write('forgivenessOvertime: $forgivenessOvertime, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $ViolationsOvertimeTableTable extends ViolationsOvertimeTable
    with TableInfo<$ViolationsOvertimeTableTable, ViolationsOvertimeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ViolationsOvertimeTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _violationTypeMeta =
      const VerificationMeta('violationType');
  @override
  late final GeneratedColumn<String?> violationType = GeneratedColumn<String?>(
      'violation_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _overtimeMeta = const VerificationMeta('overtime');
  @override
  late final GeneratedColumn<int?> overtime = GeneratedColumn<int?>(
      'overtime', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _forgivenessOvertimeMeta =
      const VerificationMeta('forgivenessOvertime');
  @override
  late final GeneratedColumn<int?> forgivenessOvertime = GeneratedColumn<int?>(
      'forgiveness_overtime', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, violationType, overtime, forgivenessOvertime, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? 'violations_overtime_table';
  @override
  String get actualTableName => 'violations_overtime_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ViolationsOvertimeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('violation_type')) {
      context.handle(
          _violationTypeMeta,
          violationType.isAcceptableOrUnknown(
              data['violation_type']!, _violationTypeMeta));
    } else if (isInserting) {
      context.missing(_violationTypeMeta);
    }
    if (data.containsKey('overtime')) {
      context.handle(_overtimeMeta,
          overtime.isAcceptableOrUnknown(data['overtime']!, _overtimeMeta));
    } else if (isInserting) {
      context.missing(_overtimeMeta);
    }
    if (data.containsKey('forgiveness_overtime')) {
      context.handle(
          _forgivenessOvertimeMeta,
          forgivenessOvertime.isAcceptableOrUnknown(
              data['forgiveness_overtime']!, _forgivenessOvertimeMeta));
    } else if (isInserting) {
      context.missing(_forgivenessOvertimeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ViolationsOvertimeTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return ViolationsOvertimeTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ViolationsOvertimeTableTable createAlias(String alias) {
    return $ViolationsOvertimeTableTable(attachedDatabase, alias);
  }
}

class DisciplinalOvertimeTableData extends DataClass
    implements Insertable<DisciplinalOvertimeTableData> {
  final int? id;
  final int calculatedOvertime;
  final int? violationsOvertimes;
  final int? dailyAbsenceOvertimes;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  DisciplinalOvertimeTableData(
      {this.id,
      required this.calculatedOvertime,
      this.violationsOvertimes,
      this.dailyAbsenceOvertimes,
      this.createdAt,
      this.updatedAt});
  factory DisciplinalOvertimeTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DisciplinalOvertimeTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      calculatedOvertime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}calculated_overtime'])!,
      violationsOvertimes: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}violations_overtimes']),
      dailyAbsenceOvertimes: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}daily_absence_overtimes']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['calculated_overtime'] = Variable<int>(calculatedOvertime);
    if (!nullToAbsent || violationsOvertimes != null) {
      map['violations_overtimes'] = Variable<int?>(violationsOvertimes);
    }
    if (!nullToAbsent || dailyAbsenceOvertimes != null) {
      map['daily_absence_overtimes'] = Variable<int?>(dailyAbsenceOvertimes);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  DisciplinalOvertimeTableCompanion toCompanion(bool nullToAbsent) {
    return DisciplinalOvertimeTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      calculatedOvertime: Value(calculatedOvertime),
      violationsOvertimes: violationsOvertimes == null && nullToAbsent
          ? const Value.absent()
          : Value(violationsOvertimes),
      dailyAbsenceOvertimes: dailyAbsenceOvertimes == null && nullToAbsent
          ? const Value.absent()
          : Value(dailyAbsenceOvertimes),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory DisciplinalOvertimeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DisciplinalOvertimeTableData(
      id: serializer.fromJson<int?>(json['id']),
      calculatedOvertime: serializer.fromJson<int>(json['calculatedOvertime']),
      violationsOvertimes:
          serializer.fromJson<int?>(json['violationsOvertimes']),
      dailyAbsenceOvertimes:
          serializer.fromJson<int?>(json['dailyAbsenceOvertimes']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'calculatedOvertime': serializer.toJson<int>(calculatedOvertime),
      'violationsOvertimes': serializer.toJson<int?>(violationsOvertimes),
      'dailyAbsenceOvertimes': serializer.toJson<int?>(dailyAbsenceOvertimes),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  DisciplinalOvertimeTableData copyWith(
          {int? id,
          int? calculatedOvertime,
          int? violationsOvertimes,
          int? dailyAbsenceOvertimes,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      DisciplinalOvertimeTableData(
        id: id ?? this.id,
        calculatedOvertime: calculatedOvertime ?? this.calculatedOvertime,
        violationsOvertimes: violationsOvertimes ?? this.violationsOvertimes,
        dailyAbsenceOvertimes:
            dailyAbsenceOvertimes ?? this.dailyAbsenceOvertimes,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('DisciplinalOvertimeTableData(')
          ..write('id: $id, ')
          ..write('calculatedOvertime: $calculatedOvertime, ')
          ..write('violationsOvertimes: $violationsOvertimes, ')
          ..write('dailyAbsenceOvertimes: $dailyAbsenceOvertimes, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, calculatedOvertime, violationsOvertimes,
      dailyAbsenceOvertimes, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DisciplinalOvertimeTableData &&
          other.id == this.id &&
          other.calculatedOvertime == this.calculatedOvertime &&
          other.violationsOvertimes == this.violationsOvertimes &&
          other.dailyAbsenceOvertimes == this.dailyAbsenceOvertimes &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class DisciplinalOvertimeTableCompanion
    extends UpdateCompanion<DisciplinalOvertimeTableData> {
  final Value<int?> id;
  final Value<int> calculatedOvertime;
  final Value<int?> violationsOvertimes;
  final Value<int?> dailyAbsenceOvertimes;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const DisciplinalOvertimeTableCompanion({
    this.id = const Value.absent(),
    this.calculatedOvertime = const Value.absent(),
    this.violationsOvertimes = const Value.absent(),
    this.dailyAbsenceOvertimes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DisciplinalOvertimeTableCompanion.insert({
    this.id = const Value.absent(),
    required int calculatedOvertime,
    this.violationsOvertimes = const Value.absent(),
    this.dailyAbsenceOvertimes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : calculatedOvertime = Value(calculatedOvertime);
  static Insertable<DisciplinalOvertimeTableData> custom({
    Expression<int?>? id,
    Expression<int>? calculatedOvertime,
    Expression<int?>? violationsOvertimes,
    Expression<int?>? dailyAbsenceOvertimes,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (calculatedOvertime != null) 'calculated_overtime': calculatedOvertime,
      if (violationsOvertimes != null)
        'violations_overtimes': violationsOvertimes,
      if (dailyAbsenceOvertimes != null)
        'daily_absence_overtimes': dailyAbsenceOvertimes,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  DisciplinalOvertimeTableCompanion copyWith(
      {Value<int?>? id,
      Value<int>? calculatedOvertime,
      Value<int?>? violationsOvertimes,
      Value<int?>? dailyAbsenceOvertimes,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return DisciplinalOvertimeTableCompanion(
      id: id ?? this.id,
      calculatedOvertime: calculatedOvertime ?? this.calculatedOvertime,
      violationsOvertimes: violationsOvertimes ?? this.violationsOvertimes,
      dailyAbsenceOvertimes:
          dailyAbsenceOvertimes ?? this.dailyAbsenceOvertimes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (calculatedOvertime.present) {
      map['calculated_overtime'] = Variable<int>(calculatedOvertime.value);
    }
    if (violationsOvertimes.present) {
      map['violations_overtimes'] = Variable<int?>(violationsOvertimes.value);
    }
    if (dailyAbsenceOvertimes.present) {
      map['daily_absence_overtimes'] =
          Variable<int?>(dailyAbsenceOvertimes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DisciplinalOvertimeTableCompanion(')
          ..write('id: $id, ')
          ..write('calculatedOvertime: $calculatedOvertime, ')
          ..write('violationsOvertimes: $violationsOvertimes, ')
          ..write('dailyAbsenceOvertimes: $dailyAbsenceOvertimes, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $DisciplinalOvertimeTableTable extends DisciplinalOvertimeTable
    with
        TableInfo<$DisciplinalOvertimeTableTable,
            DisciplinalOvertimeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DisciplinalOvertimeTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _calculatedOvertimeMeta =
      const VerificationMeta('calculatedOvertime');
  @override
  late final GeneratedColumn<int?> calculatedOvertime = GeneratedColumn<int?>(
      'calculated_overtime', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _violationsOvertimesMeta =
      const VerificationMeta('violationsOvertimes');
  @override
  late final GeneratedColumn<int?> violationsOvertimes = GeneratedColumn<int?>(
      'violations_overtimes', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES violations_overtime_table (id)');
  final VerificationMeta _dailyAbsenceOvertimesMeta =
      const VerificationMeta('dailyAbsenceOvertimes');
  @override
  late final GeneratedColumn<int?> dailyAbsenceOvertimes =
      GeneratedColumn<int?>('daily_absence_overtimes', aliasedName, true,
          type: const IntType(),
          requiredDuringInsert: false,
          defaultConstraints: 'REFERENCES daily_vaccation_table (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        calculatedOvertime,
        violationsOvertimes,
        dailyAbsenceOvertimes,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'disciplinal_overtime_table';
  @override
  String get actualTableName => 'disciplinal_overtime_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DisciplinalOvertimeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('calculated_overtime')) {
      context.handle(
          _calculatedOvertimeMeta,
          calculatedOvertime.isAcceptableOrUnknown(
              data['calculated_overtime']!, _calculatedOvertimeMeta));
    } else if (isInserting) {
      context.missing(_calculatedOvertimeMeta);
    }
    if (data.containsKey('violations_overtimes')) {
      context.handle(
          _violationsOvertimesMeta,
          violationsOvertimes.isAcceptableOrUnknown(
              data['violations_overtimes']!, _violationsOvertimesMeta));
    }
    if (data.containsKey('daily_absence_overtimes')) {
      context.handle(
          _dailyAbsenceOvertimesMeta,
          dailyAbsenceOvertimes.isAcceptableOrUnknown(
              data['daily_absence_overtimes']!, _dailyAbsenceOvertimesMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DisciplinalOvertimeTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return DisciplinalOvertimeTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DisciplinalOvertimeTableTable createAlias(String alias) {
    return $DisciplinalOvertimeTableTable(attachedDatabase, alias);
  }
}

class EducationalInfoTableData extends DataClass
    implements Insertable<EducationalInfoTableData> {
  final int? id;
  final String levelOfEducation;
  final String? fieldOfStudy;
  final String? educationPlace;
  final double? grade;
  final String? skills;
  final bool? permissionToStudy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  EducationalInfoTableData(
      {this.id,
      required this.levelOfEducation,
      this.fieldOfStudy,
      this.educationPlace,
      this.grade,
      this.skills,
      this.permissionToStudy,
      this.createdAt,
      this.updatedAt});
  factory EducationalInfoTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return EducationalInfoTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      levelOfEducation: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}level_of_education'])!,
      fieldOfStudy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}field_of_study']),
      educationPlace: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}education_place']),
      grade: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}grade']),
      skills: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}skills']),
      permissionToStudy: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}permission_to_study']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['level_of_education'] = Variable<String>(levelOfEducation);
    if (!nullToAbsent || fieldOfStudy != null) {
      map['field_of_study'] = Variable<String?>(fieldOfStudy);
    }
    if (!nullToAbsent || educationPlace != null) {
      map['education_place'] = Variable<String?>(educationPlace);
    }
    if (!nullToAbsent || grade != null) {
      map['grade'] = Variable<double?>(grade);
    }
    if (!nullToAbsent || skills != null) {
      map['skills'] = Variable<String?>(skills);
    }
    if (!nullToAbsent || permissionToStudy != null) {
      map['permission_to_study'] = Variable<bool?>(permissionToStudy);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  EducationalInfoTableCompanion toCompanion(bool nullToAbsent) {
    return EducationalInfoTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      levelOfEducation: Value(levelOfEducation),
      fieldOfStudy: fieldOfStudy == null && nullToAbsent
          ? const Value.absent()
          : Value(fieldOfStudy),
      educationPlace: educationPlace == null && nullToAbsent
          ? const Value.absent()
          : Value(educationPlace),
      grade:
          grade == null && nullToAbsent ? const Value.absent() : Value(grade),
      skills:
          skills == null && nullToAbsent ? const Value.absent() : Value(skills),
      permissionToStudy: permissionToStudy == null && nullToAbsent
          ? const Value.absent()
          : Value(permissionToStudy),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory EducationalInfoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EducationalInfoTableData(
      id: serializer.fromJson<int?>(json['id']),
      levelOfEducation: serializer.fromJson<String>(json['levelOfEducation']),
      fieldOfStudy: serializer.fromJson<String?>(json['fieldOfStudy']),
      educationPlace: serializer.fromJson<String?>(json['educationPlace']),
      grade: serializer.fromJson<double?>(json['grade']),
      skills: serializer.fromJson<String?>(json['skills']),
      permissionToStudy: serializer.fromJson<bool?>(json['permissionToStudy']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'levelOfEducation': serializer.toJson<String>(levelOfEducation),
      'fieldOfStudy': serializer.toJson<String?>(fieldOfStudy),
      'educationPlace': serializer.toJson<String?>(educationPlace),
      'grade': serializer.toJson<double?>(grade),
      'skills': serializer.toJson<String?>(skills),
      'permissionToStudy': serializer.toJson<bool?>(permissionToStudy),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  EducationalInfoTableData copyWith(
          {int? id,
          String? levelOfEducation,
          String? fieldOfStudy,
          String? educationPlace,
          double? grade,
          String? skills,
          bool? permissionToStudy,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      EducationalInfoTableData(
        id: id ?? this.id,
        levelOfEducation: levelOfEducation ?? this.levelOfEducation,
        fieldOfStudy: fieldOfStudy ?? this.fieldOfStudy,
        educationPlace: educationPlace ?? this.educationPlace,
        grade: grade ?? this.grade,
        skills: skills ?? this.skills,
        permissionToStudy: permissionToStudy ?? this.permissionToStudy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('EducationalInfoTableData(')
          ..write('id: $id, ')
          ..write('levelOfEducation: $levelOfEducation, ')
          ..write('fieldOfStudy: $fieldOfStudy, ')
          ..write('educationPlace: $educationPlace, ')
          ..write('grade: $grade, ')
          ..write('skills: $skills, ')
          ..write('permissionToStudy: $permissionToStudy, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, levelOfEducation, fieldOfStudy,
      educationPlace, grade, skills, permissionToStudy, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EducationalInfoTableData &&
          other.id == this.id &&
          other.levelOfEducation == this.levelOfEducation &&
          other.fieldOfStudy == this.fieldOfStudy &&
          other.educationPlace == this.educationPlace &&
          other.grade == this.grade &&
          other.skills == this.skills &&
          other.permissionToStudy == this.permissionToStudy &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class EducationalInfoTableCompanion
    extends UpdateCompanion<EducationalInfoTableData> {
  final Value<int?> id;
  final Value<String> levelOfEducation;
  final Value<String?> fieldOfStudy;
  final Value<String?> educationPlace;
  final Value<double?> grade;
  final Value<String?> skills;
  final Value<bool?> permissionToStudy;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const EducationalInfoTableCompanion({
    this.id = const Value.absent(),
    this.levelOfEducation = const Value.absent(),
    this.fieldOfStudy = const Value.absent(),
    this.educationPlace = const Value.absent(),
    this.grade = const Value.absent(),
    this.skills = const Value.absent(),
    this.permissionToStudy = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  EducationalInfoTableCompanion.insert({
    this.id = const Value.absent(),
    required String levelOfEducation,
    this.fieldOfStudy = const Value.absent(),
    this.educationPlace = const Value.absent(),
    this.grade = const Value.absent(),
    this.skills = const Value.absent(),
    this.permissionToStudy = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : levelOfEducation = Value(levelOfEducation);
  static Insertable<EducationalInfoTableData> custom({
    Expression<int?>? id,
    Expression<String>? levelOfEducation,
    Expression<String?>? fieldOfStudy,
    Expression<String?>? educationPlace,
    Expression<double?>? grade,
    Expression<String?>? skills,
    Expression<bool?>? permissionToStudy,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (levelOfEducation != null) 'level_of_education': levelOfEducation,
      if (fieldOfStudy != null) 'field_of_study': fieldOfStudy,
      if (educationPlace != null) 'education_place': educationPlace,
      if (grade != null) 'grade': grade,
      if (skills != null) 'skills': skills,
      if (permissionToStudy != null) 'permission_to_study': permissionToStudy,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  EducationalInfoTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? levelOfEducation,
      Value<String?>? fieldOfStudy,
      Value<String?>? educationPlace,
      Value<double?>? grade,
      Value<String?>? skills,
      Value<bool?>? permissionToStudy,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return EducationalInfoTableCompanion(
      id: id ?? this.id,
      levelOfEducation: levelOfEducation ?? this.levelOfEducation,
      fieldOfStudy: fieldOfStudy ?? this.fieldOfStudy,
      educationPlace: educationPlace ?? this.educationPlace,
      grade: grade ?? this.grade,
      skills: skills ?? this.skills,
      permissionToStudy: permissionToStudy ?? this.permissionToStudy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (levelOfEducation.present) {
      map['level_of_education'] = Variable<String>(levelOfEducation.value);
    }
    if (fieldOfStudy.present) {
      map['field_of_study'] = Variable<String?>(fieldOfStudy.value);
    }
    if (educationPlace.present) {
      map['education_place'] = Variable<String?>(educationPlace.value);
    }
    if (grade.present) {
      map['grade'] = Variable<double?>(grade.value);
    }
    if (skills.present) {
      map['skills'] = Variable<String?>(skills.value);
    }
    if (permissionToStudy.present) {
      map['permission_to_study'] = Variable<bool?>(permissionToStudy.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EducationalInfoTableCompanion(')
          ..write('id: $id, ')
          ..write('levelOfEducation: $levelOfEducation, ')
          ..write('fieldOfStudy: $fieldOfStudy, ')
          ..write('educationPlace: $educationPlace, ')
          ..write('grade: $grade, ')
          ..write('skills: $skills, ')
          ..write('permissionToStudy: $permissionToStudy, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $EducationalInfoTableTable extends EducationalInfoTable
    with TableInfo<$EducationalInfoTableTable, EducationalInfoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EducationalInfoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _levelOfEducationMeta =
      const VerificationMeta('levelOfEducation');
  @override
  late final GeneratedColumn<String?> levelOfEducation =
      GeneratedColumn<String?>('level_of_education', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _fieldOfStudyMeta =
      const VerificationMeta('fieldOfStudy');
  @override
  late final GeneratedColumn<String?> fieldOfStudy = GeneratedColumn<String?>(
      'field_of_study', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _educationPlaceMeta =
      const VerificationMeta('educationPlace');
  @override
  late final GeneratedColumn<String?> educationPlace = GeneratedColumn<String?>(
      'education_place', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _gradeMeta = const VerificationMeta('grade');
  @override
  late final GeneratedColumn<double?> grade = GeneratedColumn<double?>(
      'grade', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _skillsMeta = const VerificationMeta('skills');
  @override
  late final GeneratedColumn<String?> skills = GeneratedColumn<String?>(
      'skills', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _permissionToStudyMeta =
      const VerificationMeta('permissionToStudy');
  @override
  late final GeneratedColumn<bool?> permissionToStudy = GeneratedColumn<bool?>(
      'permission_to_study', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (permission_to_study IN (0, 1))');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        levelOfEducation,
        fieldOfStudy,
        educationPlace,
        grade,
        skills,
        permissionToStudy,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'educational_info_table';
  @override
  String get actualTableName => 'educational_info_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<EducationalInfoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('level_of_education')) {
      context.handle(
          _levelOfEducationMeta,
          levelOfEducation.isAcceptableOrUnknown(
              data['level_of_education']!, _levelOfEducationMeta));
    } else if (isInserting) {
      context.missing(_levelOfEducationMeta);
    }
    if (data.containsKey('field_of_study')) {
      context.handle(
          _fieldOfStudyMeta,
          fieldOfStudy.isAcceptableOrUnknown(
              data['field_of_study']!, _fieldOfStudyMeta));
    }
    if (data.containsKey('education_place')) {
      context.handle(
          _educationPlaceMeta,
          educationPlace.isAcceptableOrUnknown(
              data['education_place']!, _educationPlaceMeta));
    }
    if (data.containsKey('grade')) {
      context.handle(
          _gradeMeta, grade.isAcceptableOrUnknown(data['grade']!, _gradeMeta));
    }
    if (data.containsKey('skills')) {
      context.handle(_skillsMeta,
          skills.isAcceptableOrUnknown(data['skills']!, _skillsMeta));
    }
    if (data.containsKey('permission_to_study')) {
      context.handle(
          _permissionToStudyMeta,
          permissionToStudy.isAcceptableOrUnknown(
              data['permission_to_study']!, _permissionToStudyMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EducationalInfoTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return EducationalInfoTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EducationalInfoTableTable createAlias(String alias) {
    return $EducationalInfoTableTable(attachedDatabase, alias);
  }
}

class FurtherInfoTableData extends DataClass
    implements Insertable<FurtherInfoTableData> {
  final int? id;
  final String maritalState;
  final DateTime? dateOfMarriage;
  final int? numberOfChilds;
  final int? height;
  final double? weight;
  final String? religion;
  final String? sect;
  final String? hairColor;
  final String? eyesColor;
  final String? bloodType;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  FurtherInfoTableData(
      {this.id,
      required this.maritalState,
      this.dateOfMarriage,
      this.numberOfChilds,
      this.height,
      this.weight,
      this.religion,
      this.sect,
      this.hairColor,
      this.eyesColor,
      this.bloodType,
      this.createdAt,
      this.updatedAt});
  factory FurtherInfoTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FurtherInfoTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      maritalState: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}marital_state'])!,
      dateOfMarriage: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_of_marriage']),
      numberOfChilds: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}number_of_childs']),
      height: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}height']),
      weight: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}weight']),
      religion: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}religion']),
      sect: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sect']),
      hairColor: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}hair_color']),
      eyesColor: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}eyes_color']),
      bloodType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}blood_type']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['marital_state'] = Variable<String>(maritalState);
    if (!nullToAbsent || dateOfMarriage != null) {
      map['date_of_marriage'] = Variable<DateTime?>(dateOfMarriage);
    }
    if (!nullToAbsent || numberOfChilds != null) {
      map['number_of_childs'] = Variable<int?>(numberOfChilds);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int?>(height);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<double?>(weight);
    }
    if (!nullToAbsent || religion != null) {
      map['religion'] = Variable<String?>(religion);
    }
    if (!nullToAbsent || sect != null) {
      map['sect'] = Variable<String?>(sect);
    }
    if (!nullToAbsent || hairColor != null) {
      map['hair_color'] = Variable<String?>(hairColor);
    }
    if (!nullToAbsent || eyesColor != null) {
      map['eyes_color'] = Variable<String?>(eyesColor);
    }
    if (!nullToAbsent || bloodType != null) {
      map['blood_type'] = Variable<String?>(bloodType);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  FurtherInfoTableCompanion toCompanion(bool nullToAbsent) {
    return FurtherInfoTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      maritalState: Value(maritalState),
      dateOfMarriage: dateOfMarriage == null && nullToAbsent
          ? const Value.absent()
          : Value(dateOfMarriage),
      numberOfChilds: numberOfChilds == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfChilds),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      religion: religion == null && nullToAbsent
          ? const Value.absent()
          : Value(religion),
      sect: sect == null && nullToAbsent ? const Value.absent() : Value(sect),
      hairColor: hairColor == null && nullToAbsent
          ? const Value.absent()
          : Value(hairColor),
      eyesColor: eyesColor == null && nullToAbsent
          ? const Value.absent()
          : Value(eyesColor),
      bloodType: bloodType == null && nullToAbsent
          ? const Value.absent()
          : Value(bloodType),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory FurtherInfoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FurtherInfoTableData(
      id: serializer.fromJson<int?>(json['id']),
      maritalState: serializer.fromJson<String>(json['maritalState']),
      dateOfMarriage: serializer.fromJson<DateTime?>(json['dateOfMarriage']),
      numberOfChilds: serializer.fromJson<int?>(json['numberOfChilds']),
      height: serializer.fromJson<int?>(json['height']),
      weight: serializer.fromJson<double?>(json['weight']),
      religion: serializer.fromJson<String?>(json['religion']),
      sect: serializer.fromJson<String?>(json['sect']),
      hairColor: serializer.fromJson<String?>(json['hairColor']),
      eyesColor: serializer.fromJson<String?>(json['eyesColor']),
      bloodType: serializer.fromJson<String?>(json['bloodType']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'maritalState': serializer.toJson<String>(maritalState),
      'dateOfMarriage': serializer.toJson<DateTime?>(dateOfMarriage),
      'numberOfChilds': serializer.toJson<int?>(numberOfChilds),
      'height': serializer.toJson<int?>(height),
      'weight': serializer.toJson<double?>(weight),
      'religion': serializer.toJson<String?>(religion),
      'sect': serializer.toJson<String?>(sect),
      'hairColor': serializer.toJson<String?>(hairColor),
      'eyesColor': serializer.toJson<String?>(eyesColor),
      'bloodType': serializer.toJson<String?>(bloodType),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  FurtherInfoTableData copyWith(
          {int? id,
          String? maritalState,
          DateTime? dateOfMarriage,
          int? numberOfChilds,
          int? height,
          double? weight,
          String? religion,
          String? sect,
          String? hairColor,
          String? eyesColor,
          String? bloodType,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      FurtherInfoTableData(
        id: id ?? this.id,
        maritalState: maritalState ?? this.maritalState,
        dateOfMarriage: dateOfMarriage ?? this.dateOfMarriage,
        numberOfChilds: numberOfChilds ?? this.numberOfChilds,
        height: height ?? this.height,
        weight: weight ?? this.weight,
        religion: religion ?? this.religion,
        sect: sect ?? this.sect,
        hairColor: hairColor ?? this.hairColor,
        eyesColor: eyesColor ?? this.eyesColor,
        bloodType: bloodType ?? this.bloodType,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FurtherInfoTableData(')
          ..write('id: $id, ')
          ..write('maritalState: $maritalState, ')
          ..write('dateOfMarriage: $dateOfMarriage, ')
          ..write('numberOfChilds: $numberOfChilds, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('religion: $religion, ')
          ..write('sect: $sect, ')
          ..write('hairColor: $hairColor, ')
          ..write('eyesColor: $eyesColor, ')
          ..write('bloodType: $bloodType, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      maritalState,
      dateOfMarriage,
      numberOfChilds,
      height,
      weight,
      religion,
      sect,
      hairColor,
      eyesColor,
      bloodType,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FurtherInfoTableData &&
          other.id == this.id &&
          other.maritalState == this.maritalState &&
          other.dateOfMarriage == this.dateOfMarriage &&
          other.numberOfChilds == this.numberOfChilds &&
          other.height == this.height &&
          other.weight == this.weight &&
          other.religion == this.religion &&
          other.sect == this.sect &&
          other.hairColor == this.hairColor &&
          other.eyesColor == this.eyesColor &&
          other.bloodType == this.bloodType &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class FurtherInfoTableCompanion extends UpdateCompanion<FurtherInfoTableData> {
  final Value<int?> id;
  final Value<String> maritalState;
  final Value<DateTime?> dateOfMarriage;
  final Value<int?> numberOfChilds;
  final Value<int?> height;
  final Value<double?> weight;
  final Value<String?> religion;
  final Value<String?> sect;
  final Value<String?> hairColor;
  final Value<String?> eyesColor;
  final Value<String?> bloodType;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const FurtherInfoTableCompanion({
    this.id = const Value.absent(),
    this.maritalState = const Value.absent(),
    this.dateOfMarriage = const Value.absent(),
    this.numberOfChilds = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.religion = const Value.absent(),
    this.sect = const Value.absent(),
    this.hairColor = const Value.absent(),
    this.eyesColor = const Value.absent(),
    this.bloodType = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  FurtherInfoTableCompanion.insert({
    this.id = const Value.absent(),
    required String maritalState,
    this.dateOfMarriage = const Value.absent(),
    this.numberOfChilds = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.religion = const Value.absent(),
    this.sect = const Value.absent(),
    this.hairColor = const Value.absent(),
    this.eyesColor = const Value.absent(),
    this.bloodType = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : maritalState = Value(maritalState);
  static Insertable<FurtherInfoTableData> custom({
    Expression<int?>? id,
    Expression<String>? maritalState,
    Expression<DateTime?>? dateOfMarriage,
    Expression<int?>? numberOfChilds,
    Expression<int?>? height,
    Expression<double?>? weight,
    Expression<String?>? religion,
    Expression<String?>? sect,
    Expression<String?>? hairColor,
    Expression<String?>? eyesColor,
    Expression<String?>? bloodType,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (maritalState != null) 'marital_state': maritalState,
      if (dateOfMarriage != null) 'date_of_marriage': dateOfMarriage,
      if (numberOfChilds != null) 'number_of_childs': numberOfChilds,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
      if (religion != null) 'religion': religion,
      if (sect != null) 'sect': sect,
      if (hairColor != null) 'hair_color': hairColor,
      if (eyesColor != null) 'eyes_color': eyesColor,
      if (bloodType != null) 'blood_type': bloodType,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  FurtherInfoTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? maritalState,
      Value<DateTime?>? dateOfMarriage,
      Value<int?>? numberOfChilds,
      Value<int?>? height,
      Value<double?>? weight,
      Value<String?>? religion,
      Value<String?>? sect,
      Value<String?>? hairColor,
      Value<String?>? eyesColor,
      Value<String?>? bloodType,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return FurtherInfoTableCompanion(
      id: id ?? this.id,
      maritalState: maritalState ?? this.maritalState,
      dateOfMarriage: dateOfMarriage ?? this.dateOfMarriage,
      numberOfChilds: numberOfChilds ?? this.numberOfChilds,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      religion: religion ?? this.religion,
      sect: sect ?? this.sect,
      hairColor: hairColor ?? this.hairColor,
      eyesColor: eyesColor ?? this.eyesColor,
      bloodType: bloodType ?? this.bloodType,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (maritalState.present) {
      map['marital_state'] = Variable<String>(maritalState.value);
    }
    if (dateOfMarriage.present) {
      map['date_of_marriage'] = Variable<DateTime?>(dateOfMarriage.value);
    }
    if (numberOfChilds.present) {
      map['number_of_childs'] = Variable<int?>(numberOfChilds.value);
    }
    if (height.present) {
      map['height'] = Variable<int?>(height.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double?>(weight.value);
    }
    if (religion.present) {
      map['religion'] = Variable<String?>(religion.value);
    }
    if (sect.present) {
      map['sect'] = Variable<String?>(sect.value);
    }
    if (hairColor.present) {
      map['hair_color'] = Variable<String?>(hairColor.value);
    }
    if (eyesColor.present) {
      map['eyes_color'] = Variable<String?>(eyesColor.value);
    }
    if (bloodType.present) {
      map['blood_type'] = Variable<String?>(bloodType.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FurtherInfoTableCompanion(')
          ..write('id: $id, ')
          ..write('maritalState: $maritalState, ')
          ..write('dateOfMarriage: $dateOfMarriage, ')
          ..write('numberOfChilds: $numberOfChilds, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('religion: $religion, ')
          ..write('sect: $sect, ')
          ..write('hairColor: $hairColor, ')
          ..write('eyesColor: $eyesColor, ')
          ..write('bloodType: $bloodType, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $FurtherInfoTableTable extends FurtherInfoTable
    with TableInfo<$FurtherInfoTableTable, FurtherInfoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FurtherInfoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _maritalStateMeta =
      const VerificationMeta('maritalState');
  @override
  late final GeneratedColumn<String?> maritalState = GeneratedColumn<String?>(
      'marital_state', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dateOfMarriageMeta =
      const VerificationMeta('dateOfMarriage');
  @override
  late final GeneratedColumn<DateTime?> dateOfMarriage =
      GeneratedColumn<DateTime?>('date_of_marriage', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _numberOfChildsMeta =
      const VerificationMeta('numberOfChilds');
  @override
  late final GeneratedColumn<int?> numberOfChilds = GeneratedColumn<int?>(
      'number_of_childs', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int?> height = GeneratedColumn<int?>(
      'height', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double?> weight = GeneratedColumn<double?>(
      'weight', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _religionMeta = const VerificationMeta('religion');
  @override
  late final GeneratedColumn<String?> religion = GeneratedColumn<String?>(
      'religion', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _sectMeta = const VerificationMeta('sect');
  @override
  late final GeneratedColumn<String?> sect = GeneratedColumn<String?>(
      'sect', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _hairColorMeta = const VerificationMeta('hairColor');
  @override
  late final GeneratedColumn<String?> hairColor = GeneratedColumn<String?>(
      'hair_color', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _eyesColorMeta = const VerificationMeta('eyesColor');
  @override
  late final GeneratedColumn<String?> eyesColor = GeneratedColumn<String?>(
      'eyes_color', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _bloodTypeMeta = const VerificationMeta('bloodType');
  @override
  late final GeneratedColumn<String?> bloodType = GeneratedColumn<String?>(
      'blood_type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        maritalState,
        dateOfMarriage,
        numberOfChilds,
        height,
        weight,
        religion,
        sect,
        hairColor,
        eyesColor,
        bloodType,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'further_info_table';
  @override
  String get actualTableName => 'further_info_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<FurtherInfoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('marital_state')) {
      context.handle(
          _maritalStateMeta,
          maritalState.isAcceptableOrUnknown(
              data['marital_state']!, _maritalStateMeta));
    } else if (isInserting) {
      context.missing(_maritalStateMeta);
    }
    if (data.containsKey('date_of_marriage')) {
      context.handle(
          _dateOfMarriageMeta,
          dateOfMarriage.isAcceptableOrUnknown(
              data['date_of_marriage']!, _dateOfMarriageMeta));
    }
    if (data.containsKey('number_of_childs')) {
      context.handle(
          _numberOfChildsMeta,
          numberOfChilds.isAcceptableOrUnknown(
              data['number_of_childs']!, _numberOfChildsMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    }
    if (data.containsKey('religion')) {
      context.handle(_religionMeta,
          religion.isAcceptableOrUnknown(data['religion']!, _religionMeta));
    }
    if (data.containsKey('sect')) {
      context.handle(
          _sectMeta, sect.isAcceptableOrUnknown(data['sect']!, _sectMeta));
    }
    if (data.containsKey('hair_color')) {
      context.handle(_hairColorMeta,
          hairColor.isAcceptableOrUnknown(data['hair_color']!, _hairColorMeta));
    }
    if (data.containsKey('eyes_color')) {
      context.handle(_eyesColorMeta,
          eyesColor.isAcceptableOrUnknown(data['eyes_color']!, _eyesColorMeta));
    }
    if (data.containsKey('blood_type')) {
      context.handle(_bloodTypeMeta,
          bloodType.isAcceptableOrUnknown(data['blood_type']!, _bloodTypeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FurtherInfoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FurtherInfoTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FurtherInfoTableTable createAlias(String alias) {
    return $FurtherInfoTableTable(attachedDatabase, alias);
  }
}

class HealthStatusTableData extends DataClass
    implements Insertable<HealthStatusTableData> {
  final int? id;
  final bool isHealthy;
  final String accordingTo;
  final bool isBGroup;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  HealthStatusTableData(
      {this.id,
      required this.isHealthy,
      required this.accordingTo,
      required this.isBGroup,
      this.createdAt,
      this.updatedAt});
  factory HealthStatusTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return HealthStatusTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      isHealthy: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_healthy'])!,
      accordingTo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}according_to'])!,
      isBGroup: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_b_group'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['is_healthy'] = Variable<bool>(isHealthy);
    map['according_to'] = Variable<String>(accordingTo);
    map['is_b_group'] = Variable<bool>(isBGroup);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  HealthStatusTableCompanion toCompanion(bool nullToAbsent) {
    return HealthStatusTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      isHealthy: Value(isHealthy),
      accordingTo: Value(accordingTo),
      isBGroup: Value(isBGroup),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory HealthStatusTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HealthStatusTableData(
      id: serializer.fromJson<int?>(json['id']),
      isHealthy: serializer.fromJson<bool>(json['isHealthy']),
      accordingTo: serializer.fromJson<String>(json['accordingTo']),
      isBGroup: serializer.fromJson<bool>(json['isBGroup']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'isHealthy': serializer.toJson<bool>(isHealthy),
      'accordingTo': serializer.toJson<String>(accordingTo),
      'isBGroup': serializer.toJson<bool>(isBGroup),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  HealthStatusTableData copyWith(
          {int? id,
          bool? isHealthy,
          String? accordingTo,
          bool? isBGroup,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      HealthStatusTableData(
        id: id ?? this.id,
        isHealthy: isHealthy ?? this.isHealthy,
        accordingTo: accordingTo ?? this.accordingTo,
        isBGroup: isBGroup ?? this.isBGroup,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('HealthStatusTableData(')
          ..write('id: $id, ')
          ..write('isHealthy: $isHealthy, ')
          ..write('accordingTo: $accordingTo, ')
          ..write('isBGroup: $isBGroup, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, isHealthy, accordingTo, isBGroup, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HealthStatusTableData &&
          other.id == this.id &&
          other.isHealthy == this.isHealthy &&
          other.accordingTo == this.accordingTo &&
          other.isBGroup == this.isBGroup &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class HealthStatusTableCompanion
    extends UpdateCompanion<HealthStatusTableData> {
  final Value<int?> id;
  final Value<bool> isHealthy;
  final Value<String> accordingTo;
  final Value<bool> isBGroup;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const HealthStatusTableCompanion({
    this.id = const Value.absent(),
    this.isHealthy = const Value.absent(),
    this.accordingTo = const Value.absent(),
    this.isBGroup = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  HealthStatusTableCompanion.insert({
    this.id = const Value.absent(),
    required bool isHealthy,
    required String accordingTo,
    required bool isBGroup,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : isHealthy = Value(isHealthy),
        accordingTo = Value(accordingTo),
        isBGroup = Value(isBGroup);
  static Insertable<HealthStatusTableData> custom({
    Expression<int?>? id,
    Expression<bool>? isHealthy,
    Expression<String>? accordingTo,
    Expression<bool>? isBGroup,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isHealthy != null) 'is_healthy': isHealthy,
      if (accordingTo != null) 'according_to': accordingTo,
      if (isBGroup != null) 'is_b_group': isBGroup,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  HealthStatusTableCompanion copyWith(
      {Value<int?>? id,
      Value<bool>? isHealthy,
      Value<String>? accordingTo,
      Value<bool>? isBGroup,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return HealthStatusTableCompanion(
      id: id ?? this.id,
      isHealthy: isHealthy ?? this.isHealthy,
      accordingTo: accordingTo ?? this.accordingTo,
      isBGroup: isBGroup ?? this.isBGroup,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (isHealthy.present) {
      map['is_healthy'] = Variable<bool>(isHealthy.value);
    }
    if (accordingTo.present) {
      map['according_to'] = Variable<String>(accordingTo.value);
    }
    if (isBGroup.present) {
      map['is_b_group'] = Variable<bool>(isBGroup.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HealthStatusTableCompanion(')
          ..write('id: $id, ')
          ..write('isHealthy: $isHealthy, ')
          ..write('accordingTo: $accordingTo, ')
          ..write('isBGroup: $isBGroup, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $HealthStatusTableTable extends HealthStatusTable
    with TableInfo<$HealthStatusTableTable, HealthStatusTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HealthStatusTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _isHealthyMeta = const VerificationMeta('isHealthy');
  @override
  late final GeneratedColumn<bool?> isHealthy = GeneratedColumn<bool?>(
      'is_healthy', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_healthy IN (0, 1))');
  final VerificationMeta _accordingToMeta =
      const VerificationMeta('accordingTo');
  @override
  late final GeneratedColumn<String?> accordingTo = GeneratedColumn<String?>(
      'according_to', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isBGroupMeta = const VerificationMeta('isBGroup');
  @override
  late final GeneratedColumn<bool?> isBGroup = GeneratedColumn<bool?>(
      'is_b_group', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_b_group IN (0, 1))');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, isHealthy, accordingTo, isBGroup, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? 'health_status_table';
  @override
  String get actualTableName => 'health_status_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<HealthStatusTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_healthy')) {
      context.handle(_isHealthyMeta,
          isHealthy.isAcceptableOrUnknown(data['is_healthy']!, _isHealthyMeta));
    } else if (isInserting) {
      context.missing(_isHealthyMeta);
    }
    if (data.containsKey('according_to')) {
      context.handle(
          _accordingToMeta,
          accordingTo.isAcceptableOrUnknown(
              data['according_to']!, _accordingToMeta));
    } else if (isInserting) {
      context.missing(_accordingToMeta);
    }
    if (data.containsKey('is_b_group')) {
      context.handle(_isBGroupMeta,
          isBGroup.isAcceptableOrUnknown(data['is_b_group']!, _isBGroupMeta));
    } else if (isInserting) {
      context.missing(_isBGroupMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HealthStatusTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return HealthStatusTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HealthStatusTableTable createAlias(String alias) {
    return $HealthStatusTableTable(attachedDatabase, alias);
  }
}

class HourlyVaccationTableData extends DataClass
    implements Insertable<HourlyVaccationTableData> {
  final int? id;
  final DateTime startTime;
  final DateTime endTime;
  final int? totalTime;
  final int? overtimePerMonth;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  HourlyVaccationTableData(
      {this.id,
      required this.startTime,
      required this.endTime,
      this.totalTime,
      this.overtimePerMonth,
      this.createdAt,
      this.updatedAt});
  factory HourlyVaccationTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return HourlyVaccationTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      startTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_time'])!,
      endTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_time'])!,
      totalTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}total_time']),
      overtimePerMonth: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}overtime_per_month']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
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
    if (!nullToAbsent || totalTime != null) {
      map['total_time'] = Variable<int?>(totalTime);
    }
    if (!nullToAbsent || overtimePerMonth != null) {
      map['overtime_per_month'] = Variable<int?>(overtimePerMonth);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  HourlyVaccationTableCompanion toCompanion(bool nullToAbsent) {
    return HourlyVaccationTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      startTime: Value(startTime),
      endTime: Value(endTime),
      totalTime: totalTime == null && nullToAbsent
          ? const Value.absent()
          : Value(totalTime),
      overtimePerMonth: overtimePerMonth == null && nullToAbsent
          ? const Value.absent()
          : Value(overtimePerMonth),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory HourlyVaccationTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HourlyVaccationTableData(
      id: serializer.fromJson<int?>(json['id']),
      startTime: serializer.fromJson<DateTime>(json['startTime']),
      endTime: serializer.fromJson<DateTime>(json['endTime']),
      totalTime: serializer.fromJson<int?>(json['totalTime']),
      overtimePerMonth: serializer.fromJson<int?>(json['overtimePerMonth']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'startTime': serializer.toJson<DateTime>(startTime),
      'endTime': serializer.toJson<DateTime>(endTime),
      'totalTime': serializer.toJson<int?>(totalTime),
      'overtimePerMonth': serializer.toJson<int?>(overtimePerMonth),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  HourlyVaccationTableData copyWith(
          {int? id,
          DateTime? startTime,
          DateTime? endTime,
          int? totalTime,
          int? overtimePerMonth,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      HourlyVaccationTableData(
        id: id ?? this.id,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        totalTime: totalTime ?? this.totalTime,
        overtimePerMonth: overtimePerMonth ?? this.overtimePerMonth,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('HourlyVaccationTableData(')
          ..write('id: $id, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('totalTime: $totalTime, ')
          ..write('overtimePerMonth: $overtimePerMonth, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, startTime, endTime, totalTime,
      overtimePerMonth, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HourlyVaccationTableData &&
          other.id == this.id &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.totalTime == this.totalTime &&
          other.overtimePerMonth == this.overtimePerMonth &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class HourlyVaccationTableCompanion
    extends UpdateCompanion<HourlyVaccationTableData> {
  final Value<int?> id;
  final Value<DateTime> startTime;
  final Value<DateTime> endTime;
  final Value<int?> totalTime;
  final Value<int?> overtimePerMonth;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const HourlyVaccationTableCompanion({
    this.id = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.totalTime = const Value.absent(),
    this.overtimePerMonth = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  HourlyVaccationTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startTime,
    required DateTime endTime,
    this.totalTime = const Value.absent(),
    this.overtimePerMonth = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : startTime = Value(startTime),
        endTime = Value(endTime);
  static Insertable<HourlyVaccationTableData> custom({
    Expression<int?>? id,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
    Expression<int?>? totalTime,
    Expression<int?>? overtimePerMonth,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (totalTime != null) 'total_time': totalTime,
      if (overtimePerMonth != null) 'overtime_per_month': overtimePerMonth,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  HourlyVaccationTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime>? startTime,
      Value<DateTime>? endTime,
      Value<int?>? totalTime,
      Value<int?>? overtimePerMonth,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return HourlyVaccationTableCompanion(
      id: id ?? this.id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      totalTime: totalTime ?? this.totalTime,
      overtimePerMonth: overtimePerMonth ?? this.overtimePerMonth,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
      map['total_time'] = Variable<int?>(totalTime.value);
    }
    if (overtimePerMonth.present) {
      map['overtime_per_month'] = Variable<int?>(overtimePerMonth.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HourlyVaccationTableCompanion(')
          ..write('id: $id, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('totalTime: $totalTime, ')
          ..write('overtimePerMonth: $overtimePerMonth, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $HourlyVaccationTableTable extends HourlyVaccationTable
    with TableInfo<$HourlyVaccationTableTable, HourlyVaccationTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HourlyVaccationTableTable(this.attachedDatabase, [this._alias]);
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
      'total_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _overtimePerMonthMeta =
      const VerificationMeta('overtimePerMonth');
  @override
  late final GeneratedColumn<int?> overtimePerMonth = GeneratedColumn<int?>(
      'overtime_per_month', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        startTime,
        endTime,
        totalTime,
        overtimePerMonth,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'hourly_vaccation_table';
  @override
  String get actualTableName => 'hourly_vaccation_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<HourlyVaccationTableData> instance,
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
    }
    if (data.containsKey('overtime_per_month')) {
      context.handle(
          _overtimePerMonthMeta,
          overtimePerMonth.isAcceptableOrUnknown(
              data['overtime_per_month']!, _overtimePerMonthMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HourlyVaccationTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return HourlyVaccationTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HourlyVaccationTableTable createAlias(String alias) {
    return $HourlyVaccationTableTable(attachedDatabase, alias);
  }
}

class OperationalServiceDeficitRecordTableData extends DataClass
    implements Insertable<OperationalServiceDeficitRecordTableData> {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int durationOfPresence;
  final int? deficitAmount;
  OperationalServiceDeficitRecordTableData(
      {this.id,
      required this.startDate,
      required this.endDate,
      required this.durationOfPresence,
      this.deficitAmount});
  factory OperationalServiceDeficitRecordTableData.fromData(
      Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OperationalServiceDeficitRecordTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      startDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date'])!,
      endDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date'])!,
      durationOfPresence: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}duration_of_presence'])!,
      deficitAmount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deficit_amount']),
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
    map['duration_of_presence'] = Variable<int>(durationOfPresence);
    if (!nullToAbsent || deficitAmount != null) {
      map['deficit_amount'] = Variable<int?>(deficitAmount);
    }
    return map;
  }

  OperationalServiceDeficitRecordTableCompanion toCompanion(bool nullToAbsent) {
    return OperationalServiceDeficitRecordTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      startDate: Value(startDate),
      endDate: Value(endDate),
      durationOfPresence: Value(durationOfPresence),
      deficitAmount: deficitAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(deficitAmount),
    );
  }

  factory OperationalServiceDeficitRecordTableData.fromJson(
      Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OperationalServiceDeficitRecordTableData(
      id: serializer.fromJson<int?>(json['id']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime>(json['endDate']),
      durationOfPresence: serializer.fromJson<int>(json['durationOfPresence']),
      deficitAmount: serializer.fromJson<int?>(json['deficitAmount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime>(endDate),
      'durationOfPresence': serializer.toJson<int>(durationOfPresence),
      'deficitAmount': serializer.toJson<int?>(deficitAmount),
    };
  }

  OperationalServiceDeficitRecordTableData copyWith(
          {int? id,
          DateTime? startDate,
          DateTime? endDate,
          int? durationOfPresence,
          int? deficitAmount}) =>
      OperationalServiceDeficitRecordTableData(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        durationOfPresence: durationOfPresence ?? this.durationOfPresence,
        deficitAmount: deficitAmount ?? this.deficitAmount,
      );
  @override
  String toString() {
    return (StringBuffer('OperationalServiceDeficitRecordTableData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('durationOfPresence: $durationOfPresence, ')
          ..write('deficitAmount: $deficitAmount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, startDate, endDate, durationOfPresence, deficitAmount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OperationalServiceDeficitRecordTableData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.durationOfPresence == this.durationOfPresence &&
          other.deficitAmount == this.deficitAmount);
}

class OperationalServiceDeficitRecordTableCompanion
    extends UpdateCompanion<OperationalServiceDeficitRecordTableData> {
  final Value<int?> id;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<int> durationOfPresence;
  final Value<int?> deficitAmount;
  const OperationalServiceDeficitRecordTableCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.durationOfPresence = const Value.absent(),
    this.deficitAmount = const Value.absent(),
  });
  OperationalServiceDeficitRecordTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startDate,
    required DateTime endDate,
    required int durationOfPresence,
    this.deficitAmount = const Value.absent(),
  })  : startDate = Value(startDate),
        endDate = Value(endDate),
        durationOfPresence = Value(durationOfPresence);
  static Insertable<OperationalServiceDeficitRecordTableData> custom({
    Expression<int?>? id,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<int>? durationOfPresence,
    Expression<int?>? deficitAmount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (durationOfPresence != null)
        'duration_of_presence': durationOfPresence,
      if (deficitAmount != null) 'deficit_amount': deficitAmount,
    });
  }

  OperationalServiceDeficitRecordTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime>? startDate,
      Value<DateTime>? endDate,
      Value<int>? durationOfPresence,
      Value<int?>? deficitAmount}) {
    return OperationalServiceDeficitRecordTableCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      durationOfPresence: durationOfPresence ?? this.durationOfPresence,
      deficitAmount: deficitAmount ?? this.deficitAmount,
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
    if (durationOfPresence.present) {
      map['duration_of_presence'] = Variable<int>(durationOfPresence.value);
    }
    if (deficitAmount.present) {
      map['deficit_amount'] = Variable<int?>(deficitAmount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OperationalServiceDeficitRecordTableCompanion(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('durationOfPresence: $durationOfPresence, ')
          ..write('deficitAmount: $deficitAmount')
          ..write(')'))
        .toString();
  }
}

class $OperationalServiceDeficitRecordTableTable
    extends OperationalServiceDeficitRecordTable
    with
        TableInfo<$OperationalServiceDeficitRecordTableTable,
            OperationalServiceDeficitRecordTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OperationalServiceDeficitRecordTableTable(this.attachedDatabase,
      [this._alias]);
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
  final VerificationMeta _durationOfPresenceMeta =
      const VerificationMeta('durationOfPresence');
  @override
  late final GeneratedColumn<int?> durationOfPresence = GeneratedColumn<int?>(
      'duration_of_presence', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deficitAmountMeta =
      const VerificationMeta('deficitAmount');
  @override
  late final GeneratedColumn<int?> deficitAmount = GeneratedColumn<int?>(
      'deficit_amount', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, startDate, endDate, durationOfPresence, deficitAmount];
  @override
  String get aliasedName =>
      _alias ?? 'operational_service_deficit_record_table';
  @override
  String get actualTableName => 'operational_service_deficit_record_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<OperationalServiceDeficitRecordTableData> instance,
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
    if (data.containsKey('duration_of_presence')) {
      context.handle(
          _durationOfPresenceMeta,
          durationOfPresence.isAcceptableOrUnknown(
              data['duration_of_presence']!, _durationOfPresenceMeta));
    } else if (isInserting) {
      context.missing(_durationOfPresenceMeta);
    }
    if (data.containsKey('deficit_amount')) {
      context.handle(
          _deficitAmountMeta,
          deficitAmount.isAcceptableOrUnknown(
              data['deficit_amount']!, _deficitAmountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OperationalServiceDeficitRecordTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return OperationalServiceDeficitRecordTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $OperationalServiceDeficitRecordTableTable createAlias(String alias) {
    return $OperationalServiceDeficitRecordTableTable(attachedDatabase, alias);
  }
}

class OvertimeTableData extends DataClass
    implements Insertable<OvertimeTableData> {
  final int? id;
  final int? disciplinalOvertime;
  final int? annualOvertime;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  OvertimeTableData(
      {this.id,
      this.disciplinalOvertime,
      this.annualOvertime,
      this.createdAt,
      this.updatedAt});
  factory OvertimeTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OvertimeTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      disciplinalOvertime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}disciplinal_overtime']),
      annualOvertime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}annual_overtime']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || disciplinalOvertime != null) {
      map['disciplinal_overtime'] = Variable<int?>(disciplinalOvertime);
    }
    if (!nullToAbsent || annualOvertime != null) {
      map['annual_overtime'] = Variable<int?>(annualOvertime);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  OvertimeTableCompanion toCompanion(bool nullToAbsent) {
    return OvertimeTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      disciplinalOvertime: disciplinalOvertime == null && nullToAbsent
          ? const Value.absent()
          : Value(disciplinalOvertime),
      annualOvertime: annualOvertime == null && nullToAbsent
          ? const Value.absent()
          : Value(annualOvertime),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory OvertimeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OvertimeTableData(
      id: serializer.fromJson<int?>(json['id']),
      disciplinalOvertime:
          serializer.fromJson<int?>(json['disciplinalOvertime']),
      annualOvertime: serializer.fromJson<int?>(json['annualOvertime']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'disciplinalOvertime': serializer.toJson<int?>(disciplinalOvertime),
      'annualOvertime': serializer.toJson<int?>(annualOvertime),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  OvertimeTableData copyWith(
          {int? id,
          int? disciplinalOvertime,
          int? annualOvertime,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      OvertimeTableData(
        id: id ?? this.id,
        disciplinalOvertime: disciplinalOvertime ?? this.disciplinalOvertime,
        annualOvertime: annualOvertime ?? this.annualOvertime,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('OvertimeTableData(')
          ..write('id: $id, ')
          ..write('disciplinalOvertime: $disciplinalOvertime, ')
          ..write('annualOvertime: $annualOvertime, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, disciplinalOvertime, annualOvertime, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OvertimeTableData &&
          other.id == this.id &&
          other.disciplinalOvertime == this.disciplinalOvertime &&
          other.annualOvertime == this.annualOvertime &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class OvertimeTableCompanion extends UpdateCompanion<OvertimeTableData> {
  final Value<int?> id;
  final Value<int?> disciplinalOvertime;
  final Value<int?> annualOvertime;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const OvertimeTableCompanion({
    this.id = const Value.absent(),
    this.disciplinalOvertime = const Value.absent(),
    this.annualOvertime = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  OvertimeTableCompanion.insert({
    this.id = const Value.absent(),
    this.disciplinalOvertime = const Value.absent(),
    this.annualOvertime = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<OvertimeTableData> custom({
    Expression<int?>? id,
    Expression<int?>? disciplinalOvertime,
    Expression<int?>? annualOvertime,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (disciplinalOvertime != null)
        'disciplinal_overtime': disciplinalOvertime,
      if (annualOvertime != null) 'annual_overtime': annualOvertime,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  OvertimeTableCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? disciplinalOvertime,
      Value<int?>? annualOvertime,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return OvertimeTableCompanion(
      id: id ?? this.id,
      disciplinalOvertime: disciplinalOvertime ?? this.disciplinalOvertime,
      annualOvertime: annualOvertime ?? this.annualOvertime,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (disciplinalOvertime.present) {
      map['disciplinal_overtime'] = Variable<int?>(disciplinalOvertime.value);
    }
    if (annualOvertime.present) {
      map['annual_overtime'] = Variable<int?>(annualOvertime.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OvertimeTableCompanion(')
          ..write('id: $id, ')
          ..write('disciplinalOvertime: $disciplinalOvertime, ')
          ..write('annualOvertime: $annualOvertime, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $OvertimeTableTable extends OvertimeTable
    with TableInfo<$OvertimeTableTable, OvertimeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OvertimeTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _disciplinalOvertimeMeta =
      const VerificationMeta('disciplinalOvertime');
  @override
  late final GeneratedColumn<int?> disciplinalOvertime = GeneratedColumn<int?>(
      'disciplinal_overtime', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES disciplinal_overtime_table (id)');
  final VerificationMeta _annualOvertimeMeta =
      const VerificationMeta('annualOvertime');
  @override
  late final GeneratedColumn<int?> annualOvertime = GeneratedColumn<int?>(
      'annual_overtime', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES annual_overtime_table (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, disciplinalOvertime, annualOvertime, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? 'overtime_table';
  @override
  String get actualTableName => 'overtime_table';
  @override
  VerificationContext validateIntegrity(Insertable<OvertimeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('disciplinal_overtime')) {
      context.handle(
          _disciplinalOvertimeMeta,
          disciplinalOvertime.isAcceptableOrUnknown(
              data['disciplinal_overtime']!, _disciplinalOvertimeMeta));
    }
    if (data.containsKey('annual_overtime')) {
      context.handle(
          _annualOvertimeMeta,
          annualOvertime.isAcceptableOrUnknown(
              data['annual_overtime']!, _annualOvertimeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OvertimeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return OvertimeTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $OvertimeTableTable createAlias(String alias) {
    return $OvertimeTableTable(attachedDatabase, alias);
  }
}

class SectionTableData extends DataClass
    implements Insertable<SectionTableData> {
  final int? id;
  final String locationName;
  final String? sectionCode;
  final String? sectionName;
  final String? sectionNameAbbr;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  SectionTableData(
      {this.id,
      required this.locationName,
      this.sectionCode,
      this.sectionName,
      this.sectionNameAbbr,
      this.createdAt,
      this.updatedAt});
  factory SectionTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SectionTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      locationName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}location_name'])!,
      sectionCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section_code']),
      sectionName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section_name']),
      sectionNameAbbr: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section_name_abbr']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['location_name'] = Variable<String>(locationName);
    if (!nullToAbsent || sectionCode != null) {
      map['section_code'] = Variable<String?>(sectionCode);
    }
    if (!nullToAbsent || sectionName != null) {
      map['section_name'] = Variable<String?>(sectionName);
    }
    if (!nullToAbsent || sectionNameAbbr != null) {
      map['section_name_abbr'] = Variable<String?>(sectionNameAbbr);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  SectionTableCompanion toCompanion(bool nullToAbsent) {
    return SectionTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      locationName: Value(locationName),
      sectionCode: sectionCode == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionCode),
      sectionName: sectionName == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionName),
      sectionNameAbbr: sectionNameAbbr == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionNameAbbr),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory SectionTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectionTableData(
      id: serializer.fromJson<int?>(json['id']),
      locationName: serializer.fromJson<String>(json['locationName']),
      sectionCode: serializer.fromJson<String?>(json['sectionCode']),
      sectionName: serializer.fromJson<String?>(json['sectionName']),
      sectionNameAbbr: serializer.fromJson<String?>(json['sectionNameAbbr']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'locationName': serializer.toJson<String>(locationName),
      'sectionCode': serializer.toJson<String?>(sectionCode),
      'sectionName': serializer.toJson<String?>(sectionName),
      'sectionNameAbbr': serializer.toJson<String?>(sectionNameAbbr),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  SectionTableData copyWith(
          {int? id,
          String? locationName,
          String? sectionCode,
          String? sectionName,
          String? sectionNameAbbr,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      SectionTableData(
        id: id ?? this.id,
        locationName: locationName ?? this.locationName,
        sectionCode: sectionCode ?? this.sectionCode,
        sectionName: sectionName ?? this.sectionName,
        sectionNameAbbr: sectionNameAbbr ?? this.sectionNameAbbr,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('SectionTableData(')
          ..write('id: $id, ')
          ..write('locationName: $locationName, ')
          ..write('sectionCode: $sectionCode, ')
          ..write('sectionName: $sectionName, ')
          ..write('sectionNameAbbr: $sectionNameAbbr, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, locationName, sectionCode, sectionName,
      sectionNameAbbr, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionTableData &&
          other.id == this.id &&
          other.locationName == this.locationName &&
          other.sectionCode == this.sectionCode &&
          other.sectionName == this.sectionName &&
          other.sectionNameAbbr == this.sectionNameAbbr &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SectionTableCompanion extends UpdateCompanion<SectionTableData> {
  final Value<int?> id;
  final Value<String> locationName;
  final Value<String?> sectionCode;
  final Value<String?> sectionName;
  final Value<String?> sectionNameAbbr;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const SectionTableCompanion({
    this.id = const Value.absent(),
    this.locationName = const Value.absent(),
    this.sectionCode = const Value.absent(),
    this.sectionName = const Value.absent(),
    this.sectionNameAbbr = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  SectionTableCompanion.insert({
    this.id = const Value.absent(),
    required String locationName,
    this.sectionCode = const Value.absent(),
    this.sectionName = const Value.absent(),
    this.sectionNameAbbr = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : locationName = Value(locationName);
  static Insertable<SectionTableData> custom({
    Expression<int?>? id,
    Expression<String>? locationName,
    Expression<String?>? sectionCode,
    Expression<String?>? sectionName,
    Expression<String?>? sectionNameAbbr,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (locationName != null) 'location_name': locationName,
      if (sectionCode != null) 'section_code': sectionCode,
      if (sectionName != null) 'section_name': sectionName,
      if (sectionNameAbbr != null) 'section_name_abbr': sectionNameAbbr,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  SectionTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? locationName,
      Value<String?>? sectionCode,
      Value<String?>? sectionName,
      Value<String?>? sectionNameAbbr,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return SectionTableCompanion(
      id: id ?? this.id,
      locationName: locationName ?? this.locationName,
      sectionCode: sectionCode ?? this.sectionCode,
      sectionName: sectionName ?? this.sectionName,
      sectionNameAbbr: sectionNameAbbr ?? this.sectionNameAbbr,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
    if (sectionCode.present) {
      map['section_code'] = Variable<String?>(sectionCode.value);
    }
    if (sectionName.present) {
      map['section_name'] = Variable<String?>(sectionName.value);
    }
    if (sectionNameAbbr.present) {
      map['section_name_abbr'] = Variable<String?>(sectionNameAbbr.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionTableCompanion(')
          ..write('id: $id, ')
          ..write('locationName: $locationName, ')
          ..write('sectionCode: $sectionCode, ')
          ..write('sectionName: $sectionName, ')
          ..write('sectionNameAbbr: $sectionNameAbbr, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $SectionTableTable extends SectionTable
    with TableInfo<$SectionTableTable, SectionTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionTableTable(this.attachedDatabase, [this._alias]);
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
  final VerificationMeta _sectionCodeMeta =
      const VerificationMeta('sectionCode');
  @override
  late final GeneratedColumn<String?> sectionCode = GeneratedColumn<String?>(
      'section_code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
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
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        locationName,
        sectionCode,
        sectionName,
        sectionNameAbbr,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'section_table';
  @override
  String get actualTableName => 'section_table';
  @override
  VerificationContext validateIntegrity(Insertable<SectionTableData> instance,
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
    if (data.containsKey('section_code')) {
      context.handle(
          _sectionCodeMeta,
          sectionCode.isAcceptableOrUnknown(
              data['section_code']!, _sectionCodeMeta));
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
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SectionTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SectionTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SectionTableTable createAlias(String alias) {
    return $SectionTableTable(attachedDatabase, alias);
  }
}

class TrainigStatusTableData extends DataClass
    implements Insertable<TrainigStatusTableData> {
  final int? id;
  final DateTime? startDate;
  final String placeName;
  final int? period;
  final String? status;
  final String? type;
  final DateTime? endDate;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  TrainigStatusTableData(
      {this.id,
      this.startDate,
      required this.placeName,
      this.period,
      this.status,
      this.type,
      this.endDate,
      this.createdAt,
      this.updatedAt});
  factory TrainigStatusTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TrainigStatusTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      startDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date']),
      placeName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}place_name'])!,
      period: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}period']),
      status: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status']),
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']),
      endDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime?>(startDate);
    }
    map['place_name'] = Variable<String>(placeName);
    if (!nullToAbsent || period != null) {
      map['period'] = Variable<int?>(period);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String?>(status);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String?>(type);
    }
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime?>(endDate);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  TrainigStatusTableCompanion toCompanion(bool nullToAbsent) {
    return TrainigStatusTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      placeName: Value(placeName),
      period:
          period == null && nullToAbsent ? const Value.absent() : Value(period),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory TrainigStatusTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrainigStatusTableData(
      id: serializer.fromJson<int?>(json['id']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      placeName: serializer.fromJson<String>(json['placeName']),
      period: serializer.fromJson<int?>(json['period']),
      status: serializer.fromJson<String?>(json['status']),
      type: serializer.fromJson<String?>(json['type']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'placeName': serializer.toJson<String>(placeName),
      'period': serializer.toJson<int?>(period),
      'status': serializer.toJson<String?>(status),
      'type': serializer.toJson<String?>(type),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  TrainigStatusTableData copyWith(
          {int? id,
          DateTime? startDate,
          String? placeName,
          int? period,
          String? status,
          String? type,
          DateTime? endDate,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      TrainigStatusTableData(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        placeName: placeName ?? this.placeName,
        period: period ?? this.period,
        status: status ?? this.status,
        type: type ?? this.type,
        endDate: endDate ?? this.endDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('TrainigStatusTableData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('placeName: $placeName, ')
          ..write('period: $period, ')
          ..write('status: $status, ')
          ..write('type: $type, ')
          ..write('endDate: $endDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, startDate, placeName, period, status,
      type, endDate, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrainigStatusTableData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.placeName == this.placeName &&
          other.period == this.period &&
          other.status == this.status &&
          other.type == this.type &&
          other.endDate == this.endDate &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class TrainigStatusTableCompanion
    extends UpdateCompanion<TrainigStatusTableData> {
  final Value<int?> id;
  final Value<DateTime?> startDate;
  final Value<String> placeName;
  final Value<int?> period;
  final Value<String?> status;
  final Value<String?> type;
  final Value<DateTime?> endDate;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const TrainigStatusTableCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.placeName = const Value.absent(),
    this.period = const Value.absent(),
    this.status = const Value.absent(),
    this.type = const Value.absent(),
    this.endDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  TrainigStatusTableCompanion.insert({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    required String placeName,
    this.period = const Value.absent(),
    this.status = const Value.absent(),
    this.type = const Value.absent(),
    this.endDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : placeName = Value(placeName);
  static Insertable<TrainigStatusTableData> custom({
    Expression<int?>? id,
    Expression<DateTime?>? startDate,
    Expression<String>? placeName,
    Expression<int?>? period,
    Expression<String?>? status,
    Expression<String?>? type,
    Expression<DateTime?>? endDate,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startDate != null) 'start_date': startDate,
      if (placeName != null) 'place_name': placeName,
      if (period != null) 'period': period,
      if (status != null) 'status': status,
      if (type != null) 'type': type,
      if (endDate != null) 'end_date': endDate,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  TrainigStatusTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime?>? startDate,
      Value<String>? placeName,
      Value<int?>? period,
      Value<String?>? status,
      Value<String?>? type,
      Value<DateTime?>? endDate,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return TrainigStatusTableCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      placeName: placeName ?? this.placeName,
      period: period ?? this.period,
      status: status ?? this.status,
      type: type ?? this.type,
      endDate: endDate ?? this.endDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime?>(startDate.value);
    }
    if (placeName.present) {
      map['place_name'] = Variable<String>(placeName.value);
    }
    if (period.present) {
      map['period'] = Variable<int?>(period.value);
    }
    if (status.present) {
      map['status'] = Variable<String?>(status.value);
    }
    if (type.present) {
      map['type'] = Variable<String?>(type.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime?>(endDate.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TrainigStatusTableCompanion(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('placeName: $placeName, ')
          ..write('period: $period, ')
          ..write('status: $status, ')
          ..write('type: $type, ')
          ..write('endDate: $endDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $TrainigStatusTableTable extends TrainigStatusTable
    with TableInfo<$TrainigStatusTableTable, TrainigStatusTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TrainigStatusTableTable(this.attachedDatabase, [this._alias]);
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
      'start_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _placeNameMeta = const VerificationMeta('placeName');
  @override
  late final GeneratedColumn<String?> placeName = GeneratedColumn<String?>(
      'place_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _periodMeta = const VerificationMeta('period');
  @override
  late final GeneratedColumn<int?> period = GeneratedColumn<int?>(
      'period', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String?> status = GeneratedColumn<String?>(
      'status', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _endDateMeta = const VerificationMeta('endDate');
  @override
  late final GeneratedColumn<DateTime?> endDate = GeneratedColumn<DateTime?>(
      'end_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        startDate,
        placeName,
        period,
        status,
        type,
        endDate,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'trainig_status_table';
  @override
  String get actualTableName => 'trainig_status_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<TrainigStatusTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('place_name')) {
      context.handle(_placeNameMeta,
          placeName.isAcceptableOrUnknown(data['place_name']!, _placeNameMeta));
    } else if (isInserting) {
      context.missing(_placeNameMeta);
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period']!, _periodMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TrainigStatusTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TrainigStatusTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TrainigStatusTableTable createAlias(String alias) {
    return $TrainigStatusTableTable(attachedDatabase, alias);
  }
}

class VaccationsTableData extends DataClass
    implements Insertable<VaccationsTableData> {
  final int? id;
  final int? amountOfEligibleVaccations;
  final int? amountOfSickVaccations;
  final int? amountOfIncentiveVaccations;
  final int? eligibleVaccationsUsed;
  final int? sickVaccationsUsed;
  final int? incentiveVaccationsUsed;
  final int? dailyVaccations;
  final int? hourlyVaccations;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  VaccationsTableData(
      {this.id,
      this.amountOfEligibleVaccations,
      this.amountOfSickVaccations,
      this.amountOfIncentiveVaccations,
      this.eligibleVaccationsUsed,
      this.sickVaccationsUsed,
      this.incentiveVaccationsUsed,
      this.dailyVaccations,
      this.hourlyVaccations,
      this.createdAt,
      this.updatedAt});
  factory VaccationsTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return VaccationsTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      amountOfEligibleVaccations: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}amount_of_eligible_vaccations']),
      amountOfSickVaccations: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}amount_of_sick_vaccations']),
      amountOfIncentiveVaccations: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}amount_of_incentive_vaccations']),
      eligibleVaccationsUsed: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}eligible_vaccations_used']),
      sickVaccationsUsed: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}sick_vaccations_used']),
      incentiveVaccationsUsed: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}incentive_vaccations_used']),
      dailyVaccations: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}daily_vaccations']),
      hourlyVaccations: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}hourly_vaccations']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || amountOfEligibleVaccations != null) {
      map['amount_of_eligible_vaccations'] =
          Variable<int?>(amountOfEligibleVaccations);
    }
    if (!nullToAbsent || amountOfSickVaccations != null) {
      map['amount_of_sick_vaccations'] = Variable<int?>(amountOfSickVaccations);
    }
    if (!nullToAbsent || amountOfIncentiveVaccations != null) {
      map['amount_of_incentive_vaccations'] =
          Variable<int?>(amountOfIncentiveVaccations);
    }
    if (!nullToAbsent || eligibleVaccationsUsed != null) {
      map['eligible_vaccations_used'] = Variable<int?>(eligibleVaccationsUsed);
    }
    if (!nullToAbsent || sickVaccationsUsed != null) {
      map['sick_vaccations_used'] = Variable<int?>(sickVaccationsUsed);
    }
    if (!nullToAbsent || incentiveVaccationsUsed != null) {
      map['incentive_vaccations_used'] =
          Variable<int?>(incentiveVaccationsUsed);
    }
    if (!nullToAbsent || dailyVaccations != null) {
      map['daily_vaccations'] = Variable<int?>(dailyVaccations);
    }
    if (!nullToAbsent || hourlyVaccations != null) {
      map['hourly_vaccations'] = Variable<int?>(hourlyVaccations);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  VaccationsTableCompanion toCompanion(bool nullToAbsent) {
    return VaccationsTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      amountOfEligibleVaccations:
          amountOfEligibleVaccations == null && nullToAbsent
              ? const Value.absent()
              : Value(amountOfEligibleVaccations),
      amountOfSickVaccations: amountOfSickVaccations == null && nullToAbsent
          ? const Value.absent()
          : Value(amountOfSickVaccations),
      amountOfIncentiveVaccations:
          amountOfIncentiveVaccations == null && nullToAbsent
              ? const Value.absent()
              : Value(amountOfIncentiveVaccations),
      eligibleVaccationsUsed: eligibleVaccationsUsed == null && nullToAbsent
          ? const Value.absent()
          : Value(eligibleVaccationsUsed),
      sickVaccationsUsed: sickVaccationsUsed == null && nullToAbsent
          ? const Value.absent()
          : Value(sickVaccationsUsed),
      incentiveVaccationsUsed: incentiveVaccationsUsed == null && nullToAbsent
          ? const Value.absent()
          : Value(incentiveVaccationsUsed),
      dailyVaccations: dailyVaccations == null && nullToAbsent
          ? const Value.absent()
          : Value(dailyVaccations),
      hourlyVaccations: hourlyVaccations == null && nullToAbsent
          ? const Value.absent()
          : Value(hourlyVaccations),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory VaccationsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VaccationsTableData(
      id: serializer.fromJson<int?>(json['id']),
      amountOfEligibleVaccations:
          serializer.fromJson<int?>(json['amountOfEligibleVaccations']),
      amountOfSickVaccations:
          serializer.fromJson<int?>(json['amountOfSickVaccations']),
      amountOfIncentiveVaccations:
          serializer.fromJson<int?>(json['amountOfIncentiveVaccations']),
      eligibleVaccationsUsed:
          serializer.fromJson<int?>(json['eligibleVaccationsUsed']),
      sickVaccationsUsed: serializer.fromJson<int?>(json['sickVaccationsUsed']),
      incentiveVaccationsUsed:
          serializer.fromJson<int?>(json['incentiveVaccationsUsed']),
      dailyVaccations: serializer.fromJson<int?>(json['dailyVaccations']),
      hourlyVaccations: serializer.fromJson<int?>(json['hourlyVaccations']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'amountOfEligibleVaccations':
          serializer.toJson<int?>(amountOfEligibleVaccations),
      'amountOfSickVaccations': serializer.toJson<int?>(amountOfSickVaccations),
      'amountOfIncentiveVaccations':
          serializer.toJson<int?>(amountOfIncentiveVaccations),
      'eligibleVaccationsUsed': serializer.toJson<int?>(eligibleVaccationsUsed),
      'sickVaccationsUsed': serializer.toJson<int?>(sickVaccationsUsed),
      'incentiveVaccationsUsed':
          serializer.toJson<int?>(incentiveVaccationsUsed),
      'dailyVaccations': serializer.toJson<int?>(dailyVaccations),
      'hourlyVaccations': serializer.toJson<int?>(hourlyVaccations),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  VaccationsTableData copyWith(
          {int? id,
          int? amountOfEligibleVaccations,
          int? amountOfSickVaccations,
          int? amountOfIncentiveVaccations,
          int? eligibleVaccationsUsed,
          int? sickVaccationsUsed,
          int? incentiveVaccationsUsed,
          int? dailyVaccations,
          int? hourlyVaccations,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      VaccationsTableData(
        id: id ?? this.id,
        amountOfEligibleVaccations:
            amountOfEligibleVaccations ?? this.amountOfEligibleVaccations,
        amountOfSickVaccations:
            amountOfSickVaccations ?? this.amountOfSickVaccations,
        amountOfIncentiveVaccations:
            amountOfIncentiveVaccations ?? this.amountOfIncentiveVaccations,
        eligibleVaccationsUsed:
            eligibleVaccationsUsed ?? this.eligibleVaccationsUsed,
        sickVaccationsUsed: sickVaccationsUsed ?? this.sickVaccationsUsed,
        incentiveVaccationsUsed:
            incentiveVaccationsUsed ?? this.incentiveVaccationsUsed,
        dailyVaccations: dailyVaccations ?? this.dailyVaccations,
        hourlyVaccations: hourlyVaccations ?? this.hourlyVaccations,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('VaccationsTableData(')
          ..write('id: $id, ')
          ..write('amountOfEligibleVaccations: $amountOfEligibleVaccations, ')
          ..write('amountOfSickVaccations: $amountOfSickVaccations, ')
          ..write('amountOfIncentiveVaccations: $amountOfIncentiveVaccations, ')
          ..write('eligibleVaccationsUsed: $eligibleVaccationsUsed, ')
          ..write('sickVaccationsUsed: $sickVaccationsUsed, ')
          ..write('incentiveVaccationsUsed: $incentiveVaccationsUsed, ')
          ..write('dailyVaccations: $dailyVaccations, ')
          ..write('hourlyVaccations: $hourlyVaccations, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      amountOfEligibleVaccations,
      amountOfSickVaccations,
      amountOfIncentiveVaccations,
      eligibleVaccationsUsed,
      sickVaccationsUsed,
      incentiveVaccationsUsed,
      dailyVaccations,
      hourlyVaccations,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VaccationsTableData &&
          other.id == this.id &&
          other.amountOfEligibleVaccations == this.amountOfEligibleVaccations &&
          other.amountOfSickVaccations == this.amountOfSickVaccations &&
          other.amountOfIncentiveVaccations ==
              this.amountOfIncentiveVaccations &&
          other.eligibleVaccationsUsed == this.eligibleVaccationsUsed &&
          other.sickVaccationsUsed == this.sickVaccationsUsed &&
          other.incentiveVaccationsUsed == this.incentiveVaccationsUsed &&
          other.dailyVaccations == this.dailyVaccations &&
          other.hourlyVaccations == this.hourlyVaccations &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class VaccationsTableCompanion extends UpdateCompanion<VaccationsTableData> {
  final Value<int?> id;
  final Value<int?> amountOfEligibleVaccations;
  final Value<int?> amountOfSickVaccations;
  final Value<int?> amountOfIncentiveVaccations;
  final Value<int?> eligibleVaccationsUsed;
  final Value<int?> sickVaccationsUsed;
  final Value<int?> incentiveVaccationsUsed;
  final Value<int?> dailyVaccations;
  final Value<int?> hourlyVaccations;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const VaccationsTableCompanion({
    this.id = const Value.absent(),
    this.amountOfEligibleVaccations = const Value.absent(),
    this.amountOfSickVaccations = const Value.absent(),
    this.amountOfIncentiveVaccations = const Value.absent(),
    this.eligibleVaccationsUsed = const Value.absent(),
    this.sickVaccationsUsed = const Value.absent(),
    this.incentiveVaccationsUsed = const Value.absent(),
    this.dailyVaccations = const Value.absent(),
    this.hourlyVaccations = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  VaccationsTableCompanion.insert({
    this.id = const Value.absent(),
    this.amountOfEligibleVaccations = const Value.absent(),
    this.amountOfSickVaccations = const Value.absent(),
    this.amountOfIncentiveVaccations = const Value.absent(),
    this.eligibleVaccationsUsed = const Value.absent(),
    this.sickVaccationsUsed = const Value.absent(),
    this.incentiveVaccationsUsed = const Value.absent(),
    this.dailyVaccations = const Value.absent(),
    this.hourlyVaccations = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<VaccationsTableData> custom({
    Expression<int?>? id,
    Expression<int?>? amountOfEligibleVaccations,
    Expression<int?>? amountOfSickVaccations,
    Expression<int?>? amountOfIncentiveVaccations,
    Expression<int?>? eligibleVaccationsUsed,
    Expression<int?>? sickVaccationsUsed,
    Expression<int?>? incentiveVaccationsUsed,
    Expression<int?>? dailyVaccations,
    Expression<int?>? hourlyVaccations,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (amountOfEligibleVaccations != null)
        'amount_of_eligible_vaccations': amountOfEligibleVaccations,
      if (amountOfSickVaccations != null)
        'amount_of_sick_vaccations': amountOfSickVaccations,
      if (amountOfIncentiveVaccations != null)
        'amount_of_incentive_vaccations': amountOfIncentiveVaccations,
      if (eligibleVaccationsUsed != null)
        'eligible_vaccations_used': eligibleVaccationsUsed,
      if (sickVaccationsUsed != null)
        'sick_vaccations_used': sickVaccationsUsed,
      if (incentiveVaccationsUsed != null)
        'incentive_vaccations_used': incentiveVaccationsUsed,
      if (dailyVaccations != null) 'daily_vaccations': dailyVaccations,
      if (hourlyVaccations != null) 'hourly_vaccations': hourlyVaccations,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  VaccationsTableCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? amountOfEligibleVaccations,
      Value<int?>? amountOfSickVaccations,
      Value<int?>? amountOfIncentiveVaccations,
      Value<int?>? eligibleVaccationsUsed,
      Value<int?>? sickVaccationsUsed,
      Value<int?>? incentiveVaccationsUsed,
      Value<int?>? dailyVaccations,
      Value<int?>? hourlyVaccations,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return VaccationsTableCompanion(
      id: id ?? this.id,
      amountOfEligibleVaccations:
          amountOfEligibleVaccations ?? this.amountOfEligibleVaccations,
      amountOfSickVaccations:
          amountOfSickVaccations ?? this.amountOfSickVaccations,
      amountOfIncentiveVaccations:
          amountOfIncentiveVaccations ?? this.amountOfIncentiveVaccations,
      eligibleVaccationsUsed:
          eligibleVaccationsUsed ?? this.eligibleVaccationsUsed,
      sickVaccationsUsed: sickVaccationsUsed ?? this.sickVaccationsUsed,
      incentiveVaccationsUsed:
          incentiveVaccationsUsed ?? this.incentiveVaccationsUsed,
      dailyVaccations: dailyVaccations ?? this.dailyVaccations,
      hourlyVaccations: hourlyVaccations ?? this.hourlyVaccations,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (amountOfEligibleVaccations.present) {
      map['amount_of_eligible_vaccations'] =
          Variable<int?>(amountOfEligibleVaccations.value);
    }
    if (amountOfSickVaccations.present) {
      map['amount_of_sick_vaccations'] =
          Variable<int?>(amountOfSickVaccations.value);
    }
    if (amountOfIncentiveVaccations.present) {
      map['amount_of_incentive_vaccations'] =
          Variable<int?>(amountOfIncentiveVaccations.value);
    }
    if (eligibleVaccationsUsed.present) {
      map['eligible_vaccations_used'] =
          Variable<int?>(eligibleVaccationsUsed.value);
    }
    if (sickVaccationsUsed.present) {
      map['sick_vaccations_used'] = Variable<int?>(sickVaccationsUsed.value);
    }
    if (incentiveVaccationsUsed.present) {
      map['incentive_vaccations_used'] =
          Variable<int?>(incentiveVaccationsUsed.value);
    }
    if (dailyVaccations.present) {
      map['daily_vaccations'] = Variable<int?>(dailyVaccations.value);
    }
    if (hourlyVaccations.present) {
      map['hourly_vaccations'] = Variable<int?>(hourlyVaccations.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VaccationsTableCompanion(')
          ..write('id: $id, ')
          ..write('amountOfEligibleVaccations: $amountOfEligibleVaccations, ')
          ..write('amountOfSickVaccations: $amountOfSickVaccations, ')
          ..write('amountOfIncentiveVaccations: $amountOfIncentiveVaccations, ')
          ..write('eligibleVaccationsUsed: $eligibleVaccationsUsed, ')
          ..write('sickVaccationsUsed: $sickVaccationsUsed, ')
          ..write('incentiveVaccationsUsed: $incentiveVaccationsUsed, ')
          ..write('dailyVaccations: $dailyVaccations, ')
          ..write('hourlyVaccations: $hourlyVaccations, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $VaccationsTableTable extends VaccationsTable
    with TableInfo<$VaccationsTableTable, VaccationsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VaccationsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _amountOfEligibleVaccationsMeta =
      const VerificationMeta('amountOfEligibleVaccations');
  @override
  late final GeneratedColumn<int?> amountOfEligibleVaccations =
      GeneratedColumn<int?>('amount_of_eligible_vaccations', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _amountOfSickVaccationsMeta =
      const VerificationMeta('amountOfSickVaccations');
  @override
  late final GeneratedColumn<int?> amountOfSickVaccations =
      GeneratedColumn<int?>('amount_of_sick_vaccations', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _amountOfIncentiveVaccationsMeta =
      const VerificationMeta('amountOfIncentiveVaccations');
  @override
  late final GeneratedColumn<int?> amountOfIncentiveVaccations =
      GeneratedColumn<int?>('amount_of_incentive_vaccations', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _eligibleVaccationsUsedMeta =
      const VerificationMeta('eligibleVaccationsUsed');
  @override
  late final GeneratedColumn<int?> eligibleVaccationsUsed =
      GeneratedColumn<int?>('eligible_vaccations_used', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _sickVaccationsUsedMeta =
      const VerificationMeta('sickVaccationsUsed');
  @override
  late final GeneratedColumn<int?> sickVaccationsUsed = GeneratedColumn<int?>(
      'sick_vaccations_used', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _incentiveVaccationsUsedMeta =
      const VerificationMeta('incentiveVaccationsUsed');
  @override
  late final GeneratedColumn<int?> incentiveVaccationsUsed =
      GeneratedColumn<int?>('incentive_vaccations_used', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _dailyVaccationsMeta =
      const VerificationMeta('dailyVaccations');
  @override
  late final GeneratedColumn<int?> dailyVaccations = GeneratedColumn<int?>(
      'daily_vaccations', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES daily_vaccation_table (id)');
  final VerificationMeta _hourlyVaccationsMeta =
      const VerificationMeta('hourlyVaccations');
  @override
  late final GeneratedColumn<int?> hourlyVaccations = GeneratedColumn<int?>(
      'hourly_vaccations', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES hourly_vaccation_table (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        amountOfEligibleVaccations,
        amountOfSickVaccations,
        amountOfIncentiveVaccations,
        eligibleVaccationsUsed,
        sickVaccationsUsed,
        incentiveVaccationsUsed,
        dailyVaccations,
        hourlyVaccations,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'vaccations_table';
  @override
  String get actualTableName => 'vaccations_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<VaccationsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('amount_of_eligible_vaccations')) {
      context.handle(
          _amountOfEligibleVaccationsMeta,
          amountOfEligibleVaccations.isAcceptableOrUnknown(
              data['amount_of_eligible_vaccations']!,
              _amountOfEligibleVaccationsMeta));
    }
    if (data.containsKey('amount_of_sick_vaccations')) {
      context.handle(
          _amountOfSickVaccationsMeta,
          amountOfSickVaccations.isAcceptableOrUnknown(
              data['amount_of_sick_vaccations']!, _amountOfSickVaccationsMeta));
    }
    if (data.containsKey('amount_of_incentive_vaccations')) {
      context.handle(
          _amountOfIncentiveVaccationsMeta,
          amountOfIncentiveVaccations.isAcceptableOrUnknown(
              data['amount_of_incentive_vaccations']!,
              _amountOfIncentiveVaccationsMeta));
    }
    if (data.containsKey('eligible_vaccations_used')) {
      context.handle(
          _eligibleVaccationsUsedMeta,
          eligibleVaccationsUsed.isAcceptableOrUnknown(
              data['eligible_vaccations_used']!, _eligibleVaccationsUsedMeta));
    }
    if (data.containsKey('sick_vaccations_used')) {
      context.handle(
          _sickVaccationsUsedMeta,
          sickVaccationsUsed.isAcceptableOrUnknown(
              data['sick_vaccations_used']!, _sickVaccationsUsedMeta));
    }
    if (data.containsKey('incentive_vaccations_used')) {
      context.handle(
          _incentiveVaccationsUsedMeta,
          incentiveVaccationsUsed.isAcceptableOrUnknown(
              data['incentive_vaccations_used']!,
              _incentiveVaccationsUsedMeta));
    }
    if (data.containsKey('daily_vaccations')) {
      context.handle(
          _dailyVaccationsMeta,
          dailyVaccations.isAcceptableOrUnknown(
              data['daily_vaccations']!, _dailyVaccationsMeta));
    }
    if (data.containsKey('hourly_vaccations')) {
      context.handle(
          _hourlyVaccationsMeta,
          hourlyVaccations.isAcceptableOrUnknown(
              data['hourly_vaccations']!, _hourlyVaccationsMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VaccationsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return VaccationsTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $VaccationsTableTable createAlias(String alias) {
    return $VaccationsTableTable(attachedDatabase, alias);
  }
}

class ServiceDeficitRecordTableData extends DataClass
    implements Insertable<ServiceDeficitRecordTableData> {
  final int? id;
  final String? type;
  final int amount;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  ServiceDeficitRecordTableData(
      {this.id,
      this.type,
      required this.amount,
      this.createdAt,
      this.updatedAt});
  factory ServiceDeficitRecordTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ServiceDeficitRecordTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']),
      amount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String?>(type);
    }
    map['amount'] = Variable<int>(amount);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  ServiceDeficitRecordTableCompanion toCompanion(bool nullToAbsent) {
    return ServiceDeficitRecordTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      amount: Value(amount),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory ServiceDeficitRecordTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ServiceDeficitRecordTableData(
      id: serializer.fromJson<int?>(json['id']),
      type: serializer.fromJson<String?>(json['type']),
      amount: serializer.fromJson<int>(json['amount']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'type': serializer.toJson<String?>(type),
      'amount': serializer.toJson<int>(amount),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  ServiceDeficitRecordTableData copyWith(
          {int? id,
          String? type,
          int? amount,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      ServiceDeficitRecordTableData(
        id: id ?? this.id,
        type: type ?? this.type,
        amount: amount ?? this.amount,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ServiceDeficitRecordTableData(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('amount: $amount, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, amount, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServiceDeficitRecordTableData &&
          other.id == this.id &&
          other.type == this.type &&
          other.amount == this.amount &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ServiceDeficitRecordTableCompanion
    extends UpdateCompanion<ServiceDeficitRecordTableData> {
  final Value<int?> id;
  final Value<String?> type;
  final Value<int> amount;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const ServiceDeficitRecordTableCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.amount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ServiceDeficitRecordTableCompanion.insert({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    required int amount,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : amount = Value(amount);
  static Insertable<ServiceDeficitRecordTableData> custom({
    Expression<int?>? id,
    Expression<String?>? type,
    Expression<int>? amount,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (amount != null) 'amount': amount,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ServiceDeficitRecordTableCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? type,
      Value<int>? amount,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return ServiceDeficitRecordTableCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      amount: amount ?? this.amount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String?>(type.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ServiceDeficitRecordTableCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('amount: $amount, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $ServiceDeficitRecordTableTable extends ServiceDeficitRecordTable
    with
        TableInfo<$ServiceDeficitRecordTableTable,
            ServiceDeficitRecordTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ServiceDeficitRecordTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int?> amount = GeneratedColumn<int?>(
      'amount', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, type, amount, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? 'service_deficit_record_table';
  @override
  String get actualTableName => 'service_deficit_record_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ServiceDeficitRecordTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ServiceDeficitRecordTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return ServiceDeficitRecordTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ServiceDeficitRecordTableTable createAlias(String alias) {
    return $ServiceDeficitRecordTableTable(attachedDatabase, alias);
  }
}

class ServiceDeficitTableData extends DataClass
    implements Insertable<ServiceDeficitTableData> {
  final int? id;
  final int? claculatedDeficitAmount;
  final int? records;
  final int? operationalRecords;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  ServiceDeficitTableData(
      {this.id,
      this.claculatedDeficitAmount,
      this.records,
      this.operationalRecords,
      this.createdAt,
      this.updatedAt});
  factory ServiceDeficitTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ServiceDeficitTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      claculatedDeficitAmount: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}claculated_deficit_amount']),
      records: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}records']),
      operationalRecords: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}operational_records']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || claculatedDeficitAmount != null) {
      map['claculated_deficit_amount'] =
          Variable<int?>(claculatedDeficitAmount);
    }
    if (!nullToAbsent || records != null) {
      map['records'] = Variable<int?>(records);
    }
    if (!nullToAbsent || operationalRecords != null) {
      map['operational_records'] = Variable<int?>(operationalRecords);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  ServiceDeficitTableCompanion toCompanion(bool nullToAbsent) {
    return ServiceDeficitTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      claculatedDeficitAmount: claculatedDeficitAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(claculatedDeficitAmount),
      records: records == null && nullToAbsent
          ? const Value.absent()
          : Value(records),
      operationalRecords: operationalRecords == null && nullToAbsent
          ? const Value.absent()
          : Value(operationalRecords),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory ServiceDeficitTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ServiceDeficitTableData(
      id: serializer.fromJson<int?>(json['id']),
      claculatedDeficitAmount:
          serializer.fromJson<int?>(json['claculatedDeficitAmount']),
      records: serializer.fromJson<int?>(json['records']),
      operationalRecords: serializer.fromJson<int?>(json['operationalRecords']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'claculatedDeficitAmount':
          serializer.toJson<int?>(claculatedDeficitAmount),
      'records': serializer.toJson<int?>(records),
      'operationalRecords': serializer.toJson<int?>(operationalRecords),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  ServiceDeficitTableData copyWith(
          {int? id,
          int? claculatedDeficitAmount,
          int? records,
          int? operationalRecords,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      ServiceDeficitTableData(
        id: id ?? this.id,
        claculatedDeficitAmount:
            claculatedDeficitAmount ?? this.claculatedDeficitAmount,
        records: records ?? this.records,
        operationalRecords: operationalRecords ?? this.operationalRecords,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ServiceDeficitTableData(')
          ..write('id: $id, ')
          ..write('claculatedDeficitAmount: $claculatedDeficitAmount, ')
          ..write('records: $records, ')
          ..write('operationalRecords: $operationalRecords, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, claculatedDeficitAmount, records,
      operationalRecords, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServiceDeficitTableData &&
          other.id == this.id &&
          other.claculatedDeficitAmount == this.claculatedDeficitAmount &&
          other.records == this.records &&
          other.operationalRecords == this.operationalRecords &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ServiceDeficitTableCompanion
    extends UpdateCompanion<ServiceDeficitTableData> {
  final Value<int?> id;
  final Value<int?> claculatedDeficitAmount;
  final Value<int?> records;
  final Value<int?> operationalRecords;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const ServiceDeficitTableCompanion({
    this.id = const Value.absent(),
    this.claculatedDeficitAmount = const Value.absent(),
    this.records = const Value.absent(),
    this.operationalRecords = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ServiceDeficitTableCompanion.insert({
    this.id = const Value.absent(),
    this.claculatedDeficitAmount = const Value.absent(),
    this.records = const Value.absent(),
    this.operationalRecords = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<ServiceDeficitTableData> custom({
    Expression<int?>? id,
    Expression<int?>? claculatedDeficitAmount,
    Expression<int?>? records,
    Expression<int?>? operationalRecords,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (claculatedDeficitAmount != null)
        'claculated_deficit_amount': claculatedDeficitAmount,
      if (records != null) 'records': records,
      if (operationalRecords != null) 'operational_records': operationalRecords,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ServiceDeficitTableCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? claculatedDeficitAmount,
      Value<int?>? records,
      Value<int?>? operationalRecords,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return ServiceDeficitTableCompanion(
      id: id ?? this.id,
      claculatedDeficitAmount:
          claculatedDeficitAmount ?? this.claculatedDeficitAmount,
      records: records ?? this.records,
      operationalRecords: operationalRecords ?? this.operationalRecords,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (claculatedDeficitAmount.present) {
      map['claculated_deficit_amount'] =
          Variable<int?>(claculatedDeficitAmount.value);
    }
    if (records.present) {
      map['records'] = Variable<int?>(records.value);
    }
    if (operationalRecords.present) {
      map['operational_records'] = Variable<int?>(operationalRecords.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ServiceDeficitTableCompanion(')
          ..write('id: $id, ')
          ..write('claculatedDeficitAmount: $claculatedDeficitAmount, ')
          ..write('records: $records, ')
          ..write('operationalRecords: $operationalRecords, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $ServiceDeficitTableTable extends ServiceDeficitTable
    with TableInfo<$ServiceDeficitTableTable, ServiceDeficitTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ServiceDeficitTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _claculatedDeficitAmountMeta =
      const VerificationMeta('claculatedDeficitAmount');
  @override
  late final GeneratedColumn<int?> claculatedDeficitAmount =
      GeneratedColumn<int?>('claculated_deficit_amount', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _recordsMeta = const VerificationMeta('records');
  @override
  late final GeneratedColumn<int?> records = GeneratedColumn<int?>(
      'records', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES service_deficit_record_table (id)');
  final VerificationMeta _operationalRecordsMeta =
      const VerificationMeta('operationalRecords');
  @override
  late final GeneratedColumn<int?> operationalRecords = GeneratedColumn<int?>(
      'operational_records', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints:
          'REFERENCES operational_service_deficit_record_table (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        claculatedDeficitAmount,
        records,
        operationalRecords,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'service_deficit_table';
  @override
  String get actualTableName => 'service_deficit_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ServiceDeficitTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('claculated_deficit_amount')) {
      context.handle(
          _claculatedDeficitAmountMeta,
          claculatedDeficitAmount.isAcceptableOrUnknown(
              data['claculated_deficit_amount']!,
              _claculatedDeficitAmountMeta));
    }
    if (data.containsKey('records')) {
      context.handle(_recordsMeta,
          records.isAcceptableOrUnknown(data['records']!, _recordsMeta));
    }
    if (data.containsKey('operational_records')) {
      context.handle(
          _operationalRecordsMeta,
          operationalRecords.isAcceptableOrUnknown(
              data['operational_records']!, _operationalRecordsMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ServiceDeficitTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return ServiceDeficitTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ServiceDeficitTableTable createAlias(String alias) {
    return $ServiceDeficitTableTable(attachedDatabase, alias);
  }
}

class RankTableData extends DataClass implements Insertable<RankTableData> {
  final int? id;
  final int? gradeCode;
  final String? name;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  RankTableData(
      {this.id, this.gradeCode, this.name, this.createdAt, this.updatedAt});
  factory RankTableData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return RankTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      gradeCode: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}grade_code']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || gradeCode != null) {
      map['grade_code'] = Variable<int?>(gradeCode);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  RankTableCompanion toCompanion(bool nullToAbsent) {
    return RankTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      gradeCode: gradeCode == null && nullToAbsent
          ? const Value.absent()
          : Value(gradeCode),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory RankTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RankTableData(
      id: serializer.fromJson<int?>(json['id']),
      gradeCode: serializer.fromJson<int?>(json['gradeCode']),
      name: serializer.fromJson<String?>(json['name']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'gradeCode': serializer.toJson<int?>(gradeCode),
      'name': serializer.toJson<String?>(name),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  RankTableData copyWith(
          {int? id,
          int? gradeCode,
          String? name,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      RankTableData(
        id: id ?? this.id,
        gradeCode: gradeCode ?? this.gradeCode,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('RankTableData(')
          ..write('id: $id, ')
          ..write('gradeCode: $gradeCode, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, gradeCode, name, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RankTableData &&
          other.id == this.id &&
          other.gradeCode == this.gradeCode &&
          other.name == this.name &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class RankTableCompanion extends UpdateCompanion<RankTableData> {
  final Value<int?> id;
  final Value<int?> gradeCode;
  final Value<String?> name;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const RankTableCompanion({
    this.id = const Value.absent(),
    this.gradeCode = const Value.absent(),
    this.name = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  RankTableCompanion.insert({
    this.id = const Value.absent(),
    this.gradeCode = const Value.absent(),
    this.name = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<RankTableData> custom({
    Expression<int?>? id,
    Expression<int?>? gradeCode,
    Expression<String?>? name,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (gradeCode != null) 'grade_code': gradeCode,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  RankTableCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? gradeCode,
      Value<String?>? name,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return RankTableCompanion(
      id: id ?? this.id,
      gradeCode: gradeCode ?? this.gradeCode,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (gradeCode.present) {
      map['grade_code'] = Variable<int?>(gradeCode.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RankTableCompanion(')
          ..write('id: $id, ')
          ..write('gradeCode: $gradeCode, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $RankTableTable extends RankTable
    with TableInfo<$RankTableTable, RankTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RankTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _gradeCodeMeta = const VerificationMeta('gradeCode');
  @override
  late final GeneratedColumn<int?> gradeCode = GeneratedColumn<int?>(
      'grade_code', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, gradeCode, name, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? 'rank_table';
  @override
  String get actualTableName => 'rank_table';
  @override
  VerificationContext validateIntegrity(Insertable<RankTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('grade_code')) {
      context.handle(_gradeCodeMeta,
          gradeCode.isAcceptableOrUnknown(data['grade_code']!, _gradeCodeMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RankTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return RankTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RankTableTable createAlias(String alias) {
    return $RankTableTable(attachedDatabase, alias);
  }
}

class SoldierCaseTableData extends DataClass
    implements Insertable<SoldierCaseTableData> {
  final int? id;
  final String? fileNo;
  final String? nationalIdentity;
  final String? archiveFileNo;
  final String? status;
  final DateTime startDateOfService;
  final DateTime endDateOfService;
  final int legalPeriodOfService;
  final DateTime introductionDate;
  final int? lastPeriodOfService;
  final int? amountOfService;
  final int? overtime;
  final int? vaccations;
  final int? serviceDeficit;
  final int? rank;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  SoldierCaseTableData(
      {this.id,
      this.fileNo,
      this.nationalIdentity,
      this.archiveFileNo,
      this.status,
      required this.startDateOfService,
      required this.endDateOfService,
      required this.legalPeriodOfService,
      required this.introductionDate,
      this.lastPeriodOfService,
      this.amountOfService,
      this.overtime,
      this.vaccations,
      this.serviceDeficit,
      this.rank,
      this.createdAt,
      this.updatedAt});
  factory SoldierCaseTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SoldierCaseTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      fileNo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}file_no']),
      nationalIdentity: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}national_identity']),
      archiveFileNo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}archive_file_no']),
      status: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status']),
      startDateOfService: const DateTimeType().mapFromDatabaseResponse(
          data['${effectivePrefix}start_date_of_service'])!,
      endDateOfService: const DateTimeType().mapFromDatabaseResponse(
          data['${effectivePrefix}end_date_of_service'])!,
      legalPeriodOfService: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}legal_period_of_service'])!,
      introductionDate: const DateTimeType().mapFromDatabaseResponse(
          data['${effectivePrefix}introduction_date'])!,
      lastPeriodOfService: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}last_period_of_service']),
      amountOfService: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount_of_service']),
      overtime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overtime']),
      vaccations: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vaccations']),
      serviceDeficit: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}service_deficit']),
      rank: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rank']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || fileNo != null) {
      map['file_no'] = Variable<String?>(fileNo);
    }
    if (!nullToAbsent || nationalIdentity != null) {
      map['national_identity'] = Variable<String?>(nationalIdentity);
    }
    if (!nullToAbsent || archiveFileNo != null) {
      map['archive_file_no'] = Variable<String?>(archiveFileNo);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String?>(status);
    }
    map['start_date_of_service'] = Variable<DateTime>(startDateOfService);
    map['end_date_of_service'] = Variable<DateTime>(endDateOfService);
    map['legal_period_of_service'] = Variable<int>(legalPeriodOfService);
    map['introduction_date'] = Variable<DateTime>(introductionDate);
    if (!nullToAbsent || lastPeriodOfService != null) {
      map['last_period_of_service'] = Variable<int?>(lastPeriodOfService);
    }
    if (!nullToAbsent || amountOfService != null) {
      map['amount_of_service'] = Variable<int?>(amountOfService);
    }
    if (!nullToAbsent || overtime != null) {
      map['overtime'] = Variable<int?>(overtime);
    }
    if (!nullToAbsent || vaccations != null) {
      map['vaccations'] = Variable<int?>(vaccations);
    }
    if (!nullToAbsent || serviceDeficit != null) {
      map['service_deficit'] = Variable<int?>(serviceDeficit);
    }
    if (!nullToAbsent || rank != null) {
      map['rank'] = Variable<int?>(rank);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  SoldierCaseTableCompanion toCompanion(bool nullToAbsent) {
    return SoldierCaseTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      fileNo:
          fileNo == null && nullToAbsent ? const Value.absent() : Value(fileNo),
      nationalIdentity: nationalIdentity == null && nullToAbsent
          ? const Value.absent()
          : Value(nationalIdentity),
      archiveFileNo: archiveFileNo == null && nullToAbsent
          ? const Value.absent()
          : Value(archiveFileNo),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      startDateOfService: Value(startDateOfService),
      endDateOfService: Value(endDateOfService),
      legalPeriodOfService: Value(legalPeriodOfService),
      introductionDate: Value(introductionDate),
      lastPeriodOfService: lastPeriodOfService == null && nullToAbsent
          ? const Value.absent()
          : Value(lastPeriodOfService),
      amountOfService: amountOfService == null && nullToAbsent
          ? const Value.absent()
          : Value(amountOfService),
      overtime: overtime == null && nullToAbsent
          ? const Value.absent()
          : Value(overtime),
      vaccations: vaccations == null && nullToAbsent
          ? const Value.absent()
          : Value(vaccations),
      serviceDeficit: serviceDeficit == null && nullToAbsent
          ? const Value.absent()
          : Value(serviceDeficit),
      rank: rank == null && nullToAbsent ? const Value.absent() : Value(rank),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory SoldierCaseTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SoldierCaseTableData(
      id: serializer.fromJson<int?>(json['id']),
      fileNo: serializer.fromJson<String?>(json['fileNo']),
      nationalIdentity: serializer.fromJson<String?>(json['nationalIdentity']),
      archiveFileNo: serializer.fromJson<String?>(json['archiveFileNo']),
      status: serializer.fromJson<String?>(json['status']),
      startDateOfService:
          serializer.fromJson<DateTime>(json['startDateOfService']),
      endDateOfService: serializer.fromJson<DateTime>(json['endDateOfService']),
      legalPeriodOfService:
          serializer.fromJson<int>(json['legalPeriodOfService']),
      introductionDate: serializer.fromJson<DateTime>(json['introductionDate']),
      lastPeriodOfService:
          serializer.fromJson<int?>(json['lastPeriodOfService']),
      amountOfService: serializer.fromJson<int?>(json['amountOfService']),
      overtime: serializer.fromJson<int?>(json['overtime']),
      vaccations: serializer.fromJson<int?>(json['vaccations']),
      serviceDeficit: serializer.fromJson<int?>(json['serviceDeficit']),
      rank: serializer.fromJson<int?>(json['rank']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'fileNo': serializer.toJson<String?>(fileNo),
      'nationalIdentity': serializer.toJson<String?>(nationalIdentity),
      'archiveFileNo': serializer.toJson<String?>(archiveFileNo),
      'status': serializer.toJson<String?>(status),
      'startDateOfService': serializer.toJson<DateTime>(startDateOfService),
      'endDateOfService': serializer.toJson<DateTime>(endDateOfService),
      'legalPeriodOfService': serializer.toJson<int>(legalPeriodOfService),
      'introductionDate': serializer.toJson<DateTime>(introductionDate),
      'lastPeriodOfService': serializer.toJson<int?>(lastPeriodOfService),
      'amountOfService': serializer.toJson<int?>(amountOfService),
      'overtime': serializer.toJson<int?>(overtime),
      'vaccations': serializer.toJson<int?>(vaccations),
      'serviceDeficit': serializer.toJson<int?>(serviceDeficit),
      'rank': serializer.toJson<int?>(rank),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  SoldierCaseTableData copyWith(
          {int? id,
          String? fileNo,
          String? nationalIdentity,
          String? archiveFileNo,
          String? status,
          DateTime? startDateOfService,
          DateTime? endDateOfService,
          int? legalPeriodOfService,
          DateTime? introductionDate,
          int? lastPeriodOfService,
          int? amountOfService,
          int? overtime,
          int? vaccations,
          int? serviceDeficit,
          int? rank,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      SoldierCaseTableData(
        id: id ?? this.id,
        fileNo: fileNo ?? this.fileNo,
        nationalIdentity: nationalIdentity ?? this.nationalIdentity,
        archiveFileNo: archiveFileNo ?? this.archiveFileNo,
        status: status ?? this.status,
        startDateOfService: startDateOfService ?? this.startDateOfService,
        endDateOfService: endDateOfService ?? this.endDateOfService,
        legalPeriodOfService: legalPeriodOfService ?? this.legalPeriodOfService,
        introductionDate: introductionDate ?? this.introductionDate,
        lastPeriodOfService: lastPeriodOfService ?? this.lastPeriodOfService,
        amountOfService: amountOfService ?? this.amountOfService,
        overtime: overtime ?? this.overtime,
        vaccations: vaccations ?? this.vaccations,
        serviceDeficit: serviceDeficit ?? this.serviceDeficit,
        rank: rank ?? this.rank,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('SoldierCaseTableData(')
          ..write('id: $id, ')
          ..write('fileNo: $fileNo, ')
          ..write('nationalIdentity: $nationalIdentity, ')
          ..write('archiveFileNo: $archiveFileNo, ')
          ..write('status: $status, ')
          ..write('startDateOfService: $startDateOfService, ')
          ..write('endDateOfService: $endDateOfService, ')
          ..write('legalPeriodOfService: $legalPeriodOfService, ')
          ..write('introductionDate: $introductionDate, ')
          ..write('lastPeriodOfService: $lastPeriodOfService, ')
          ..write('amountOfService: $amountOfService, ')
          ..write('overtime: $overtime, ')
          ..write('vaccations: $vaccations, ')
          ..write('serviceDeficit: $serviceDeficit, ')
          ..write('rank: $rank, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      fileNo,
      nationalIdentity,
      archiveFileNo,
      status,
      startDateOfService,
      endDateOfService,
      legalPeriodOfService,
      introductionDate,
      lastPeriodOfService,
      amountOfService,
      overtime,
      vaccations,
      serviceDeficit,
      rank,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SoldierCaseTableData &&
          other.id == this.id &&
          other.fileNo == this.fileNo &&
          other.nationalIdentity == this.nationalIdentity &&
          other.archiveFileNo == this.archiveFileNo &&
          other.status == this.status &&
          other.startDateOfService == this.startDateOfService &&
          other.endDateOfService == this.endDateOfService &&
          other.legalPeriodOfService == this.legalPeriodOfService &&
          other.introductionDate == this.introductionDate &&
          other.lastPeriodOfService == this.lastPeriodOfService &&
          other.amountOfService == this.amountOfService &&
          other.overtime == this.overtime &&
          other.vaccations == this.vaccations &&
          other.serviceDeficit == this.serviceDeficit &&
          other.rank == this.rank &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SoldierCaseTableCompanion extends UpdateCompanion<SoldierCaseTableData> {
  final Value<int?> id;
  final Value<String?> fileNo;
  final Value<String?> nationalIdentity;
  final Value<String?> archiveFileNo;
  final Value<String?> status;
  final Value<DateTime> startDateOfService;
  final Value<DateTime> endDateOfService;
  final Value<int> legalPeriodOfService;
  final Value<DateTime> introductionDate;
  final Value<int?> lastPeriodOfService;
  final Value<int?> amountOfService;
  final Value<int?> overtime;
  final Value<int?> vaccations;
  final Value<int?> serviceDeficit;
  final Value<int?> rank;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const SoldierCaseTableCompanion({
    this.id = const Value.absent(),
    this.fileNo = const Value.absent(),
    this.nationalIdentity = const Value.absent(),
    this.archiveFileNo = const Value.absent(),
    this.status = const Value.absent(),
    this.startDateOfService = const Value.absent(),
    this.endDateOfService = const Value.absent(),
    this.legalPeriodOfService = const Value.absent(),
    this.introductionDate = const Value.absent(),
    this.lastPeriodOfService = const Value.absent(),
    this.amountOfService = const Value.absent(),
    this.overtime = const Value.absent(),
    this.vaccations = const Value.absent(),
    this.serviceDeficit = const Value.absent(),
    this.rank = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  SoldierCaseTableCompanion.insert({
    this.id = const Value.absent(),
    this.fileNo = const Value.absent(),
    this.nationalIdentity = const Value.absent(),
    this.archiveFileNo = const Value.absent(),
    this.status = const Value.absent(),
    required DateTime startDateOfService,
    required DateTime endDateOfService,
    required int legalPeriodOfService,
    required DateTime introductionDate,
    this.lastPeriodOfService = const Value.absent(),
    this.amountOfService = const Value.absent(),
    this.overtime = const Value.absent(),
    this.vaccations = const Value.absent(),
    this.serviceDeficit = const Value.absent(),
    this.rank = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : startDateOfService = Value(startDateOfService),
        endDateOfService = Value(endDateOfService),
        legalPeriodOfService = Value(legalPeriodOfService),
        introductionDate = Value(introductionDate);
  static Insertable<SoldierCaseTableData> custom({
    Expression<int?>? id,
    Expression<String?>? fileNo,
    Expression<String?>? nationalIdentity,
    Expression<String?>? archiveFileNo,
    Expression<String?>? status,
    Expression<DateTime>? startDateOfService,
    Expression<DateTime>? endDateOfService,
    Expression<int>? legalPeriodOfService,
    Expression<DateTime>? introductionDate,
    Expression<int?>? lastPeriodOfService,
    Expression<int?>? amountOfService,
    Expression<int?>? overtime,
    Expression<int?>? vaccations,
    Expression<int?>? serviceDeficit,
    Expression<int?>? rank,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fileNo != null) 'file_no': fileNo,
      if (nationalIdentity != null) 'national_identity': nationalIdentity,
      if (archiveFileNo != null) 'archive_file_no': archiveFileNo,
      if (status != null) 'status': status,
      if (startDateOfService != null)
        'start_date_of_service': startDateOfService,
      if (endDateOfService != null) 'end_date_of_service': endDateOfService,
      if (legalPeriodOfService != null)
        'legal_period_of_service': legalPeriodOfService,
      if (introductionDate != null) 'introduction_date': introductionDate,
      if (lastPeriodOfService != null)
        'last_period_of_service': lastPeriodOfService,
      if (amountOfService != null) 'amount_of_service': amountOfService,
      if (overtime != null) 'overtime': overtime,
      if (vaccations != null) 'vaccations': vaccations,
      if (serviceDeficit != null) 'service_deficit': serviceDeficit,
      if (rank != null) 'rank': rank,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  SoldierCaseTableCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? fileNo,
      Value<String?>? nationalIdentity,
      Value<String?>? archiveFileNo,
      Value<String?>? status,
      Value<DateTime>? startDateOfService,
      Value<DateTime>? endDateOfService,
      Value<int>? legalPeriodOfService,
      Value<DateTime>? introductionDate,
      Value<int?>? lastPeriodOfService,
      Value<int?>? amountOfService,
      Value<int?>? overtime,
      Value<int?>? vaccations,
      Value<int?>? serviceDeficit,
      Value<int?>? rank,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return SoldierCaseTableCompanion(
      id: id ?? this.id,
      fileNo: fileNo ?? this.fileNo,
      nationalIdentity: nationalIdentity ?? this.nationalIdentity,
      archiveFileNo: archiveFileNo ?? this.archiveFileNo,
      status: status ?? this.status,
      startDateOfService: startDateOfService ?? this.startDateOfService,
      endDateOfService: endDateOfService ?? this.endDateOfService,
      legalPeriodOfService: legalPeriodOfService ?? this.legalPeriodOfService,
      introductionDate: introductionDate ?? this.introductionDate,
      lastPeriodOfService: lastPeriodOfService ?? this.lastPeriodOfService,
      amountOfService: amountOfService ?? this.amountOfService,
      overtime: overtime ?? this.overtime,
      vaccations: vaccations ?? this.vaccations,
      serviceDeficit: serviceDeficit ?? this.serviceDeficit,
      rank: rank ?? this.rank,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (fileNo.present) {
      map['file_no'] = Variable<String?>(fileNo.value);
    }
    if (nationalIdentity.present) {
      map['national_identity'] = Variable<String?>(nationalIdentity.value);
    }
    if (archiveFileNo.present) {
      map['archive_file_no'] = Variable<String?>(archiveFileNo.value);
    }
    if (status.present) {
      map['status'] = Variable<String?>(status.value);
    }
    if (startDateOfService.present) {
      map['start_date_of_service'] =
          Variable<DateTime>(startDateOfService.value);
    }
    if (endDateOfService.present) {
      map['end_date_of_service'] = Variable<DateTime>(endDateOfService.value);
    }
    if (legalPeriodOfService.present) {
      map['legal_period_of_service'] =
          Variable<int>(legalPeriodOfService.value);
    }
    if (introductionDate.present) {
      map['introduction_date'] = Variable<DateTime>(introductionDate.value);
    }
    if (lastPeriodOfService.present) {
      map['last_period_of_service'] = Variable<int?>(lastPeriodOfService.value);
    }
    if (amountOfService.present) {
      map['amount_of_service'] = Variable<int?>(amountOfService.value);
    }
    if (overtime.present) {
      map['overtime'] = Variable<int?>(overtime.value);
    }
    if (vaccations.present) {
      map['vaccations'] = Variable<int?>(vaccations.value);
    }
    if (serviceDeficit.present) {
      map['service_deficit'] = Variable<int?>(serviceDeficit.value);
    }
    if (rank.present) {
      map['rank'] = Variable<int?>(rank.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SoldierCaseTableCompanion(')
          ..write('id: $id, ')
          ..write('fileNo: $fileNo, ')
          ..write('nationalIdentity: $nationalIdentity, ')
          ..write('archiveFileNo: $archiveFileNo, ')
          ..write('status: $status, ')
          ..write('startDateOfService: $startDateOfService, ')
          ..write('endDateOfService: $endDateOfService, ')
          ..write('legalPeriodOfService: $legalPeriodOfService, ')
          ..write('introductionDate: $introductionDate, ')
          ..write('lastPeriodOfService: $lastPeriodOfService, ')
          ..write('amountOfService: $amountOfService, ')
          ..write('overtime: $overtime, ')
          ..write('vaccations: $vaccations, ')
          ..write('serviceDeficit: $serviceDeficit, ')
          ..write('rank: $rank, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $SoldierCaseTableTable extends SoldierCaseTable
    with TableInfo<$SoldierCaseTableTable, SoldierCaseTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SoldierCaseTableTable(this.attachedDatabase, [this._alias]);
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
      'file_no', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nationalIdentityMeta =
      const VerificationMeta('nationalIdentity');
  @override
  late final GeneratedColumn<String?> nationalIdentity =
      GeneratedColumn<String?>('national_identity', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _archiveFileNoMeta =
      const VerificationMeta('archiveFileNo');
  @override
  late final GeneratedColumn<String?> archiveFileNo = GeneratedColumn<String?>(
      'archive_file_no', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String?> status = GeneratedColumn<String?>(
      'status', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _startDateOfServiceMeta =
      const VerificationMeta('startDateOfService');
  @override
  late final GeneratedColumn<DateTime?> startDateOfService =
      GeneratedColumn<DateTime?>('start_date_of_service', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _endDateOfServiceMeta =
      const VerificationMeta('endDateOfService');
  @override
  late final GeneratedColumn<DateTime?> endDateOfService =
      GeneratedColumn<DateTime?>('end_date_of_service', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _legalPeriodOfServiceMeta =
      const VerificationMeta('legalPeriodOfService');
  @override
  late final GeneratedColumn<int?> legalPeriodOfService = GeneratedColumn<int?>(
      'legal_period_of_service', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _introductionDateMeta =
      const VerificationMeta('introductionDate');
  @override
  late final GeneratedColumn<DateTime?> introductionDate =
      GeneratedColumn<DateTime?>('introduction_date', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _lastPeriodOfServiceMeta =
      const VerificationMeta('lastPeriodOfService');
  @override
  late final GeneratedColumn<int?> lastPeriodOfService = GeneratedColumn<int?>(
      'last_period_of_service', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _amountOfServiceMeta =
      const VerificationMeta('amountOfService');
  @override
  late final GeneratedColumn<int?> amountOfService = GeneratedColumn<int?>(
      'amount_of_service', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _overtimeMeta = const VerificationMeta('overtime');
  @override
  late final GeneratedColumn<int?> overtime = GeneratedColumn<int?>(
      'overtime', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES overtime_table (id)');
  final VerificationMeta _vaccationsMeta = const VerificationMeta('vaccations');
  @override
  late final GeneratedColumn<int?> vaccations = GeneratedColumn<int?>(
      'vaccations', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES vaccations_table (id)');
  final VerificationMeta _serviceDeficitMeta =
      const VerificationMeta('serviceDeficit');
  @override
  late final GeneratedColumn<int?> serviceDeficit = GeneratedColumn<int?>(
      'service_deficit', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES service_deficit_table (id)');
  final VerificationMeta _rankMeta = const VerificationMeta('rank');
  @override
  late final GeneratedColumn<int?> rank = GeneratedColumn<int?>(
      'rank', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES rank_table (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fileNo,
        nationalIdentity,
        archiveFileNo,
        status,
        startDateOfService,
        endDateOfService,
        legalPeriodOfService,
        introductionDate,
        lastPeriodOfService,
        amountOfService,
        overtime,
        vaccations,
        serviceDeficit,
        rank,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'soldier_case_table';
  @override
  String get actualTableName => 'soldier_case_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<SoldierCaseTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('file_no')) {
      context.handle(_fileNoMeta,
          fileNo.isAcceptableOrUnknown(data['file_no']!, _fileNoMeta));
    }
    if (data.containsKey('national_identity')) {
      context.handle(
          _nationalIdentityMeta,
          nationalIdentity.isAcceptableOrUnknown(
              data['national_identity']!, _nationalIdentityMeta));
    }
    if (data.containsKey('archive_file_no')) {
      context.handle(
          _archiveFileNoMeta,
          archiveFileNo.isAcceptableOrUnknown(
              data['archive_file_no']!, _archiveFileNoMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('start_date_of_service')) {
      context.handle(
          _startDateOfServiceMeta,
          startDateOfService.isAcceptableOrUnknown(
              data['start_date_of_service']!, _startDateOfServiceMeta));
    } else if (isInserting) {
      context.missing(_startDateOfServiceMeta);
    }
    if (data.containsKey('end_date_of_service')) {
      context.handle(
          _endDateOfServiceMeta,
          endDateOfService.isAcceptableOrUnknown(
              data['end_date_of_service']!, _endDateOfServiceMeta));
    } else if (isInserting) {
      context.missing(_endDateOfServiceMeta);
    }
    if (data.containsKey('legal_period_of_service')) {
      context.handle(
          _legalPeriodOfServiceMeta,
          legalPeriodOfService.isAcceptableOrUnknown(
              data['legal_period_of_service']!, _legalPeriodOfServiceMeta));
    } else if (isInserting) {
      context.missing(_legalPeriodOfServiceMeta);
    }
    if (data.containsKey('introduction_date')) {
      context.handle(
          _introductionDateMeta,
          introductionDate.isAcceptableOrUnknown(
              data['introduction_date']!, _introductionDateMeta));
    } else if (isInserting) {
      context.missing(_introductionDateMeta);
    }
    if (data.containsKey('last_period_of_service')) {
      context.handle(
          _lastPeriodOfServiceMeta,
          lastPeriodOfService.isAcceptableOrUnknown(
              data['last_period_of_service']!, _lastPeriodOfServiceMeta));
    }
    if (data.containsKey('amount_of_service')) {
      context.handle(
          _amountOfServiceMeta,
          amountOfService.isAcceptableOrUnknown(
              data['amount_of_service']!, _amountOfServiceMeta));
    }
    if (data.containsKey('overtime')) {
      context.handle(_overtimeMeta,
          overtime.isAcceptableOrUnknown(data['overtime']!, _overtimeMeta));
    }
    if (data.containsKey('vaccations')) {
      context.handle(
          _vaccationsMeta,
          vaccations.isAcceptableOrUnknown(
              data['vaccations']!, _vaccationsMeta));
    }
    if (data.containsKey('service_deficit')) {
      context.handle(
          _serviceDeficitMeta,
          serviceDeficit.isAcceptableOrUnknown(
              data['service_deficit']!, _serviceDeficitMeta));
    }
    if (data.containsKey('rank')) {
      context.handle(
          _rankMeta, rank.isAcceptableOrUnknown(data['rank']!, _rankMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SoldierCaseTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SoldierCaseTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SoldierCaseTableTable createAlias(String alias) {
    return $SoldierCaseTableTable(attachedDatabase, alias);
  }
}

class SoldierTableData extends DataClass
    implements Insertable<SoldierTableData> {
  final int? id;
  final String? imagePath;
  final String? personnelCode;
  final String? latestStatus;
  final bool? divisionStatus;
  final int? section;
  final int? trainigStatus;
  final int? healthStatus;
  final int? soldierCase;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  SoldierTableData(
      {this.id,
      this.imagePath,
      this.personnelCode,
      this.latestStatus,
      this.divisionStatus,
      this.section,
      this.trainigStatus,
      this.healthStatus,
      this.soldierCase,
      this.createdAt,
      this.updatedAt});
  factory SoldierTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SoldierTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      imagePath: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path']),
      personnelCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}personnel_code']),
      latestStatus: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}latest_status']),
      divisionStatus: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}division_status']),
      section: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section']),
      trainigStatus: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}trainig_status']),
      healthStatus: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}health_status']),
      soldierCase: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}soldier_case']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String?>(imagePath);
    }
    if (!nullToAbsent || personnelCode != null) {
      map['personnel_code'] = Variable<String?>(personnelCode);
    }
    if (!nullToAbsent || latestStatus != null) {
      map['latest_status'] = Variable<String?>(latestStatus);
    }
    if (!nullToAbsent || divisionStatus != null) {
      map['division_status'] = Variable<bool?>(divisionStatus);
    }
    if (!nullToAbsent || section != null) {
      map['section'] = Variable<int?>(section);
    }
    if (!nullToAbsent || trainigStatus != null) {
      map['trainig_status'] = Variable<int?>(trainigStatus);
    }
    if (!nullToAbsent || healthStatus != null) {
      map['health_status'] = Variable<int?>(healthStatus);
    }
    if (!nullToAbsent || soldierCase != null) {
      map['soldier_case'] = Variable<int?>(soldierCase);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  SoldierTableCompanion toCompanion(bool nullToAbsent) {
    return SoldierTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      personnelCode: personnelCode == null && nullToAbsent
          ? const Value.absent()
          : Value(personnelCode),
      latestStatus: latestStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(latestStatus),
      divisionStatus: divisionStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(divisionStatus),
      section: section == null && nullToAbsent
          ? const Value.absent()
          : Value(section),
      trainigStatus: trainigStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(trainigStatus),
      healthStatus: healthStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(healthStatus),
      soldierCase: soldierCase == null && nullToAbsent
          ? const Value.absent()
          : Value(soldierCase),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory SoldierTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SoldierTableData(
      id: serializer.fromJson<int?>(json['id']),
      imagePath: serializer.fromJson<String?>(json['imagePath']),
      personnelCode: serializer.fromJson<String?>(json['personnelCode']),
      latestStatus: serializer.fromJson<String?>(json['latestStatus']),
      divisionStatus: serializer.fromJson<bool?>(json['divisionStatus']),
      section: serializer.fromJson<int?>(json['section']),
      trainigStatus: serializer.fromJson<int?>(json['trainigStatus']),
      healthStatus: serializer.fromJson<int?>(json['healthStatus']),
      soldierCase: serializer.fromJson<int?>(json['soldierCase']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'imagePath': serializer.toJson<String?>(imagePath),
      'personnelCode': serializer.toJson<String?>(personnelCode),
      'latestStatus': serializer.toJson<String?>(latestStatus),
      'divisionStatus': serializer.toJson<bool?>(divisionStatus),
      'section': serializer.toJson<int?>(section),
      'trainigStatus': serializer.toJson<int?>(trainigStatus),
      'healthStatus': serializer.toJson<int?>(healthStatus),
      'soldierCase': serializer.toJson<int?>(soldierCase),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  SoldierTableData copyWith(
          {int? id,
          String? imagePath,
          String? personnelCode,
          String? latestStatus,
          bool? divisionStatus,
          int? section,
          int? trainigStatus,
          int? healthStatus,
          int? soldierCase,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      SoldierTableData(
        id: id ?? this.id,
        imagePath: imagePath ?? this.imagePath,
        personnelCode: personnelCode ?? this.personnelCode,
        latestStatus: latestStatus ?? this.latestStatus,
        divisionStatus: divisionStatus ?? this.divisionStatus,
        section: section ?? this.section,
        trainigStatus: trainigStatus ?? this.trainigStatus,
        healthStatus: healthStatus ?? this.healthStatus,
        soldierCase: soldierCase ?? this.soldierCase,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('SoldierTableData(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('personnelCode: $personnelCode, ')
          ..write('latestStatus: $latestStatus, ')
          ..write('divisionStatus: $divisionStatus, ')
          ..write('section: $section, ')
          ..write('trainigStatus: $trainigStatus, ')
          ..write('healthStatus: $healthStatus, ')
          ..write('soldierCase: $soldierCase, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      imagePath,
      personnelCode,
      latestStatus,
      divisionStatus,
      section,
      trainigStatus,
      healthStatus,
      soldierCase,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SoldierTableData &&
          other.id == this.id &&
          other.imagePath == this.imagePath &&
          other.personnelCode == this.personnelCode &&
          other.latestStatus == this.latestStatus &&
          other.divisionStatus == this.divisionStatus &&
          other.section == this.section &&
          other.trainigStatus == this.trainigStatus &&
          other.healthStatus == this.healthStatus &&
          other.soldierCase == this.soldierCase &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SoldierTableCompanion extends UpdateCompanion<SoldierTableData> {
  final Value<int?> id;
  final Value<String?> imagePath;
  final Value<String?> personnelCode;
  final Value<String?> latestStatus;
  final Value<bool?> divisionStatus;
  final Value<int?> section;
  final Value<int?> trainigStatus;
  final Value<int?> healthStatus;
  final Value<int?> soldierCase;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const SoldierTableCompanion({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.personnelCode = const Value.absent(),
    this.latestStatus = const Value.absent(),
    this.divisionStatus = const Value.absent(),
    this.section = const Value.absent(),
    this.trainigStatus = const Value.absent(),
    this.healthStatus = const Value.absent(),
    this.soldierCase = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  SoldierTableCompanion.insert({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.personnelCode = const Value.absent(),
    this.latestStatus = const Value.absent(),
    this.divisionStatus = const Value.absent(),
    this.section = const Value.absent(),
    this.trainigStatus = const Value.absent(),
    this.healthStatus = const Value.absent(),
    this.soldierCase = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<SoldierTableData> custom({
    Expression<int?>? id,
    Expression<String?>? imagePath,
    Expression<String?>? personnelCode,
    Expression<String?>? latestStatus,
    Expression<bool?>? divisionStatus,
    Expression<int?>? section,
    Expression<int?>? trainigStatus,
    Expression<int?>? healthStatus,
    Expression<int?>? soldierCase,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imagePath != null) 'image_path': imagePath,
      if (personnelCode != null) 'personnel_code': personnelCode,
      if (latestStatus != null) 'latest_status': latestStatus,
      if (divisionStatus != null) 'division_status': divisionStatus,
      if (section != null) 'section': section,
      if (trainigStatus != null) 'trainig_status': trainigStatus,
      if (healthStatus != null) 'health_status': healthStatus,
      if (soldierCase != null) 'soldier_case': soldierCase,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  SoldierTableCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? imagePath,
      Value<String?>? personnelCode,
      Value<String?>? latestStatus,
      Value<bool?>? divisionStatus,
      Value<int?>? section,
      Value<int?>? trainigStatus,
      Value<int?>? healthStatus,
      Value<int?>? soldierCase,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return SoldierTableCompanion(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      personnelCode: personnelCode ?? this.personnelCode,
      latestStatus: latestStatus ?? this.latestStatus,
      divisionStatus: divisionStatus ?? this.divisionStatus,
      section: section ?? this.section,
      trainigStatus: trainigStatus ?? this.trainigStatus,
      healthStatus: healthStatus ?? this.healthStatus,
      soldierCase: soldierCase ?? this.soldierCase,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String?>(imagePath.value);
    }
    if (personnelCode.present) {
      map['personnel_code'] = Variable<String?>(personnelCode.value);
    }
    if (latestStatus.present) {
      map['latest_status'] = Variable<String?>(latestStatus.value);
    }
    if (divisionStatus.present) {
      map['division_status'] = Variable<bool?>(divisionStatus.value);
    }
    if (section.present) {
      map['section'] = Variable<int?>(section.value);
    }
    if (trainigStatus.present) {
      map['trainig_status'] = Variable<int?>(trainigStatus.value);
    }
    if (healthStatus.present) {
      map['health_status'] = Variable<int?>(healthStatus.value);
    }
    if (soldierCase.present) {
      map['soldier_case'] = Variable<int?>(soldierCase.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SoldierTableCompanion(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('personnelCode: $personnelCode, ')
          ..write('latestStatus: $latestStatus, ')
          ..write('divisionStatus: $divisionStatus, ')
          ..write('section: $section, ')
          ..write('trainigStatus: $trainigStatus, ')
          ..write('healthStatus: $healthStatus, ')
          ..write('soldierCase: $soldierCase, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $SoldierTableTable extends SoldierTable
    with TableInfo<$SoldierTableTable, SoldierTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SoldierTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  @override
  late final GeneratedColumn<String?> imagePath = GeneratedColumn<String?>(
      'image_path', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _personnelCodeMeta =
      const VerificationMeta('personnelCode');
  @override
  late final GeneratedColumn<String?> personnelCode = GeneratedColumn<String?>(
      'personnel_code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _latestStatusMeta =
      const VerificationMeta('latestStatus');
  @override
  late final GeneratedColumn<String?> latestStatus = GeneratedColumn<String?>(
      'latest_status', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _divisionStatusMeta =
      const VerificationMeta('divisionStatus');
  @override
  late final GeneratedColumn<bool?> divisionStatus = GeneratedColumn<bool?>(
      'division_status', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (division_status IN (0, 1))');
  final VerificationMeta _sectionMeta = const VerificationMeta('section');
  @override
  late final GeneratedColumn<int?> section = GeneratedColumn<int?>(
      'section', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES section_table (id)');
  final VerificationMeta _trainigStatusMeta =
      const VerificationMeta('trainigStatus');
  @override
  late final GeneratedColumn<int?> trainigStatus = GeneratedColumn<int?>(
      'trainig_status', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES trainig_status_table (id)');
  final VerificationMeta _healthStatusMeta =
      const VerificationMeta('healthStatus');
  @override
  late final GeneratedColumn<int?> healthStatus = GeneratedColumn<int?>(
      'health_status', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES health_status_table (id)');
  final VerificationMeta _soldierCaseMeta =
      const VerificationMeta('soldierCase');
  @override
  late final GeneratedColumn<int?> soldierCase = GeneratedColumn<int?>(
      'soldier_case', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES soldier_case_table (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        imagePath,
        personnelCode,
        latestStatus,
        divisionStatus,
        section,
        trainigStatus,
        healthStatus,
        soldierCase,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'soldier_table';
  @override
  String get actualTableName => 'soldier_table';
  @override
  VerificationContext validateIntegrity(Insertable<SoldierTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta));
    }
    if (data.containsKey('personnel_code')) {
      context.handle(
          _personnelCodeMeta,
          personnelCode.isAcceptableOrUnknown(
              data['personnel_code']!, _personnelCodeMeta));
    }
    if (data.containsKey('latest_status')) {
      context.handle(
          _latestStatusMeta,
          latestStatus.isAcceptableOrUnknown(
              data['latest_status']!, _latestStatusMeta));
    }
    if (data.containsKey('division_status')) {
      context.handle(
          _divisionStatusMeta,
          divisionStatus.isAcceptableOrUnknown(
              data['division_status']!, _divisionStatusMeta));
    }
    if (data.containsKey('section')) {
      context.handle(_sectionMeta,
          section.isAcceptableOrUnknown(data['section']!, _sectionMeta));
    }
    if (data.containsKey('trainig_status')) {
      context.handle(
          _trainigStatusMeta,
          trainigStatus.isAcceptableOrUnknown(
              data['trainig_status']!, _trainigStatusMeta));
    }
    if (data.containsKey('health_status')) {
      context.handle(
          _healthStatusMeta,
          healthStatus.isAcceptableOrUnknown(
              data['health_status']!, _healthStatusMeta));
    }
    if (data.containsKey('soldier_case')) {
      context.handle(
          _soldierCaseMeta,
          soldierCase.isAcceptableOrUnknown(
              data['soldier_case']!, _soldierCaseMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SoldierTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SoldierTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SoldierTableTable createAlias(String alias) {
    return $SoldierTableTable(attachedDatabase, alias);
  }
}

class PersonalInfoTableData extends DataClass
    implements Insertable<PersonalInfoTableData> {
  final int? id;
  final String nationalCode;
  final String? nationalIdentity;
  final String firstName;
  final String lastName;
  final String? fatherName;
  final DateTime? dateOfBirth;
  final String? placeOfBirth;
  final String? placeOfIssue;
  final int? furtherInfo;
  final int? contactInfo;
  final int? educationalInfo;
  final int? soldier;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  PersonalInfoTableData(
      {this.id,
      required this.nationalCode,
      this.nationalIdentity,
      required this.firstName,
      required this.lastName,
      this.fatherName,
      this.dateOfBirth,
      this.placeOfBirth,
      this.placeOfIssue,
      this.furtherInfo,
      this.contactInfo,
      this.educationalInfo,
      this.soldier,
      this.createdAt,
      this.updatedAt});
  factory PersonalInfoTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PersonalInfoTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nationalCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}national_code'])!,
      nationalIdentity: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}national_identity']),
      firstName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}first_name'])!,
      lastName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name'])!,
      fatherName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}father_name']),
      dateOfBirth: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_of_birth']),
      placeOfBirth: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}place_of_birth']),
      placeOfIssue: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}place_of_issue']),
      furtherInfo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}further_info']),
      contactInfo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}contact_info']),
      educationalInfo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}educational_info']),
      soldier: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}soldier']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['national_code'] = Variable<String>(nationalCode);
    if (!nullToAbsent || nationalIdentity != null) {
      map['national_identity'] = Variable<String?>(nationalIdentity);
    }
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    if (!nullToAbsent || fatherName != null) {
      map['father_name'] = Variable<String?>(fatherName);
    }
    if (!nullToAbsent || dateOfBirth != null) {
      map['date_of_birth'] = Variable<DateTime?>(dateOfBirth);
    }
    if (!nullToAbsent || placeOfBirth != null) {
      map['place_of_birth'] = Variable<String?>(placeOfBirth);
    }
    if (!nullToAbsent || placeOfIssue != null) {
      map['place_of_issue'] = Variable<String?>(placeOfIssue);
    }
    if (!nullToAbsent || furtherInfo != null) {
      map['further_info'] = Variable<int?>(furtherInfo);
    }
    if (!nullToAbsent || contactInfo != null) {
      map['contact_info'] = Variable<int?>(contactInfo);
    }
    if (!nullToAbsent || educationalInfo != null) {
      map['educational_info'] = Variable<int?>(educationalInfo);
    }
    if (!nullToAbsent || soldier != null) {
      map['soldier'] = Variable<int?>(soldier);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  PersonalInfoTableCompanion toCompanion(bool nullToAbsent) {
    return PersonalInfoTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nationalCode: Value(nationalCode),
      nationalIdentity: nationalIdentity == null && nullToAbsent
          ? const Value.absent()
          : Value(nationalIdentity),
      firstName: Value(firstName),
      lastName: Value(lastName),
      fatherName: fatherName == null && nullToAbsent
          ? const Value.absent()
          : Value(fatherName),
      dateOfBirth: dateOfBirth == null && nullToAbsent
          ? const Value.absent()
          : Value(dateOfBirth),
      placeOfBirth: placeOfBirth == null && nullToAbsent
          ? const Value.absent()
          : Value(placeOfBirth),
      placeOfIssue: placeOfIssue == null && nullToAbsent
          ? const Value.absent()
          : Value(placeOfIssue),
      furtherInfo: furtherInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(furtherInfo),
      contactInfo: contactInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(contactInfo),
      educationalInfo: educationalInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(educationalInfo),
      soldier: soldier == null && nullToAbsent
          ? const Value.absent()
          : Value(soldier),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory PersonalInfoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PersonalInfoTableData(
      id: serializer.fromJson<int?>(json['id']),
      nationalCode: serializer.fromJson<String>(json['nationalCode']),
      nationalIdentity: serializer.fromJson<String?>(json['nationalIdentity']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      fatherName: serializer.fromJson<String?>(json['fatherName']),
      dateOfBirth: serializer.fromJson<DateTime?>(json['dateOfBirth']),
      placeOfBirth: serializer.fromJson<String?>(json['placeOfBirth']),
      placeOfIssue: serializer.fromJson<String?>(json['placeOfIssue']),
      furtherInfo: serializer.fromJson<int?>(json['furtherInfo']),
      contactInfo: serializer.fromJson<int?>(json['contactInfo']),
      educationalInfo: serializer.fromJson<int?>(json['educationalInfo']),
      soldier: serializer.fromJson<int?>(json['soldier']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'nationalCode': serializer.toJson<String>(nationalCode),
      'nationalIdentity': serializer.toJson<String?>(nationalIdentity),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'fatherName': serializer.toJson<String?>(fatherName),
      'dateOfBirth': serializer.toJson<DateTime?>(dateOfBirth),
      'placeOfBirth': serializer.toJson<String?>(placeOfBirth),
      'placeOfIssue': serializer.toJson<String?>(placeOfIssue),
      'furtherInfo': serializer.toJson<int?>(furtherInfo),
      'contactInfo': serializer.toJson<int?>(contactInfo),
      'educationalInfo': serializer.toJson<int?>(educationalInfo),
      'soldier': serializer.toJson<int?>(soldier),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  PersonalInfoTableData copyWith(
          {int? id,
          String? nationalCode,
          String? nationalIdentity,
          String? firstName,
          String? lastName,
          String? fatherName,
          DateTime? dateOfBirth,
          String? placeOfBirth,
          String? placeOfIssue,
          int? furtherInfo,
          int? contactInfo,
          int? educationalInfo,
          int? soldier,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      PersonalInfoTableData(
        id: id ?? this.id,
        nationalCode: nationalCode ?? this.nationalCode,
        nationalIdentity: nationalIdentity ?? this.nationalIdentity,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        fatherName: fatherName ?? this.fatherName,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        placeOfBirth: placeOfBirth ?? this.placeOfBirth,
        placeOfIssue: placeOfIssue ?? this.placeOfIssue,
        furtherInfo: furtherInfo ?? this.furtherInfo,
        contactInfo: contactInfo ?? this.contactInfo,
        educationalInfo: educationalInfo ?? this.educationalInfo,
        soldier: soldier ?? this.soldier,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PersonalInfoTableData(')
          ..write('id: $id, ')
          ..write('nationalCode: $nationalCode, ')
          ..write('nationalIdentity: $nationalIdentity, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('fatherName: $fatherName, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('placeOfBirth: $placeOfBirth, ')
          ..write('placeOfIssue: $placeOfIssue, ')
          ..write('furtherInfo: $furtherInfo, ')
          ..write('contactInfo: $contactInfo, ')
          ..write('educationalInfo: $educationalInfo, ')
          ..write('soldier: $soldier, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      nationalCode,
      nationalIdentity,
      firstName,
      lastName,
      fatherName,
      dateOfBirth,
      placeOfBirth,
      placeOfIssue,
      furtherInfo,
      contactInfo,
      educationalInfo,
      soldier,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PersonalInfoTableData &&
          other.id == this.id &&
          other.nationalCode == this.nationalCode &&
          other.nationalIdentity == this.nationalIdentity &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.fatherName == this.fatherName &&
          other.dateOfBirth == this.dateOfBirth &&
          other.placeOfBirth == this.placeOfBirth &&
          other.placeOfIssue == this.placeOfIssue &&
          other.furtherInfo == this.furtherInfo &&
          other.contactInfo == this.contactInfo &&
          other.educationalInfo == this.educationalInfo &&
          other.soldier == this.soldier &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PersonalInfoTableCompanion
    extends UpdateCompanion<PersonalInfoTableData> {
  final Value<int?> id;
  final Value<String> nationalCode;
  final Value<String?> nationalIdentity;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String?> fatherName;
  final Value<DateTime?> dateOfBirth;
  final Value<String?> placeOfBirth;
  final Value<String?> placeOfIssue;
  final Value<int?> furtherInfo;
  final Value<int?> contactInfo;
  final Value<int?> educationalInfo;
  final Value<int?> soldier;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const PersonalInfoTableCompanion({
    this.id = const Value.absent(),
    this.nationalCode = const Value.absent(),
    this.nationalIdentity = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.fatherName = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.placeOfBirth = const Value.absent(),
    this.placeOfIssue = const Value.absent(),
    this.furtherInfo = const Value.absent(),
    this.contactInfo = const Value.absent(),
    this.educationalInfo = const Value.absent(),
    this.soldier = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PersonalInfoTableCompanion.insert({
    this.id = const Value.absent(),
    required String nationalCode,
    this.nationalIdentity = const Value.absent(),
    required String firstName,
    required String lastName,
    this.fatherName = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.placeOfBirth = const Value.absent(),
    this.placeOfIssue = const Value.absent(),
    this.furtherInfo = const Value.absent(),
    this.contactInfo = const Value.absent(),
    this.educationalInfo = const Value.absent(),
    this.soldier = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : nationalCode = Value(nationalCode),
        firstName = Value(firstName),
        lastName = Value(lastName);
  static Insertable<PersonalInfoTableData> custom({
    Expression<int?>? id,
    Expression<String>? nationalCode,
    Expression<String?>? nationalIdentity,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String?>? fatherName,
    Expression<DateTime?>? dateOfBirth,
    Expression<String?>? placeOfBirth,
    Expression<String?>? placeOfIssue,
    Expression<int?>? furtherInfo,
    Expression<int?>? contactInfo,
    Expression<int?>? educationalInfo,
    Expression<int?>? soldier,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nationalCode != null) 'national_code': nationalCode,
      if (nationalIdentity != null) 'national_identity': nationalIdentity,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (fatherName != null) 'father_name': fatherName,
      if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
      if (placeOfBirth != null) 'place_of_birth': placeOfBirth,
      if (placeOfIssue != null) 'place_of_issue': placeOfIssue,
      if (furtherInfo != null) 'further_info': furtherInfo,
      if (contactInfo != null) 'contact_info': contactInfo,
      if (educationalInfo != null) 'educational_info': educationalInfo,
      if (soldier != null) 'soldier': soldier,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PersonalInfoTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? nationalCode,
      Value<String?>? nationalIdentity,
      Value<String>? firstName,
      Value<String>? lastName,
      Value<String?>? fatherName,
      Value<DateTime?>? dateOfBirth,
      Value<String?>? placeOfBirth,
      Value<String?>? placeOfIssue,
      Value<int?>? furtherInfo,
      Value<int?>? contactInfo,
      Value<int?>? educationalInfo,
      Value<int?>? soldier,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return PersonalInfoTableCompanion(
      id: id ?? this.id,
      nationalCode: nationalCode ?? this.nationalCode,
      nationalIdentity: nationalIdentity ?? this.nationalIdentity,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      fatherName: fatherName ?? this.fatherName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
      placeOfIssue: placeOfIssue ?? this.placeOfIssue,
      furtherInfo: furtherInfo ?? this.furtherInfo,
      contactInfo: contactInfo ?? this.contactInfo,
      educationalInfo: educationalInfo ?? this.educationalInfo,
      soldier: soldier ?? this.soldier,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (nationalCode.present) {
      map['national_code'] = Variable<String>(nationalCode.value);
    }
    if (nationalIdentity.present) {
      map['national_identity'] = Variable<String?>(nationalIdentity.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (fatherName.present) {
      map['father_name'] = Variable<String?>(fatherName.value);
    }
    if (dateOfBirth.present) {
      map['date_of_birth'] = Variable<DateTime?>(dateOfBirth.value);
    }
    if (placeOfBirth.present) {
      map['place_of_birth'] = Variable<String?>(placeOfBirth.value);
    }
    if (placeOfIssue.present) {
      map['place_of_issue'] = Variable<String?>(placeOfIssue.value);
    }
    if (furtherInfo.present) {
      map['further_info'] = Variable<int?>(furtherInfo.value);
    }
    if (contactInfo.present) {
      map['contact_info'] = Variable<int?>(contactInfo.value);
    }
    if (educationalInfo.present) {
      map['educational_info'] = Variable<int?>(educationalInfo.value);
    }
    if (soldier.present) {
      map['soldier'] = Variable<int?>(soldier.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersonalInfoTableCompanion(')
          ..write('id: $id, ')
          ..write('nationalCode: $nationalCode, ')
          ..write('nationalIdentity: $nationalIdentity, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('fatherName: $fatherName, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('placeOfBirth: $placeOfBirth, ')
          ..write('placeOfIssue: $placeOfIssue, ')
          ..write('furtherInfo: $furtherInfo, ')
          ..write('contactInfo: $contactInfo, ')
          ..write('educationalInfo: $educationalInfo, ')
          ..write('soldier: $soldier, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $PersonalInfoTableTable extends PersonalInfoTable
    with TableInfo<$PersonalInfoTableTable, PersonalInfoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PersonalInfoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nationalCodeMeta =
      const VerificationMeta('nationalCode');
  @override
  late final GeneratedColumn<String?> nationalCode = GeneratedColumn<String?>(
      'national_code', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 10, maxTextLength: 10),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _nationalIdentityMeta =
      const VerificationMeta('nationalIdentity');
  @override
  late final GeneratedColumn<String?> nationalIdentity =
      GeneratedColumn<String?>('national_identity', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
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
  final VerificationMeta _fatherNameMeta = const VerificationMeta('fatherName');
  @override
  late final GeneratedColumn<String?> fatherName = GeneratedColumn<String?>(
      'father_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _dateOfBirthMeta =
      const VerificationMeta('dateOfBirth');
  @override
  late final GeneratedColumn<DateTime?> dateOfBirth =
      GeneratedColumn<DateTime?>('date_of_birth', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _placeOfBirthMeta =
      const VerificationMeta('placeOfBirth');
  @override
  late final GeneratedColumn<String?> placeOfBirth = GeneratedColumn<String?>(
      'place_of_birth', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _placeOfIssueMeta =
      const VerificationMeta('placeOfIssue');
  @override
  late final GeneratedColumn<String?> placeOfIssue = GeneratedColumn<String?>(
      'place_of_issue', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _furtherInfoMeta =
      const VerificationMeta('furtherInfo');
  @override
  late final GeneratedColumn<int?> furtherInfo = GeneratedColumn<int?>(
      'further_info', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES further_info_table (id)');
  final VerificationMeta _contactInfoMeta =
      const VerificationMeta('contactInfo');
  @override
  late final GeneratedColumn<int?> contactInfo = GeneratedColumn<int?>(
      'contact_info', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES contact_info_table (id)');
  final VerificationMeta _educationalInfoMeta =
      const VerificationMeta('educationalInfo');
  @override
  late final GeneratedColumn<int?> educationalInfo = GeneratedColumn<int?>(
      'educational_info', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES educational_info_table (id)');
  final VerificationMeta _soldierMeta = const VerificationMeta('soldier');
  @override
  late final GeneratedColumn<int?> soldier = GeneratedColumn<int?>(
      'soldier', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES soldier_table (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        nationalCode,
        nationalIdentity,
        firstName,
        lastName,
        fatherName,
        dateOfBirth,
        placeOfBirth,
        placeOfIssue,
        furtherInfo,
        contactInfo,
        educationalInfo,
        soldier,
        createdAt,
        updatedAt
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
    if (data.containsKey('national_code')) {
      context.handle(
          _nationalCodeMeta,
          nationalCode.isAcceptableOrUnknown(
              data['national_code']!, _nationalCodeMeta));
    } else if (isInserting) {
      context.missing(_nationalCodeMeta);
    }
    if (data.containsKey('national_identity')) {
      context.handle(
          _nationalIdentityMeta,
          nationalIdentity.isAcceptableOrUnknown(
              data['national_identity']!, _nationalIdentityMeta));
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
    if (data.containsKey('father_name')) {
      context.handle(
          _fatherNameMeta,
          fatherName.isAcceptableOrUnknown(
              data['father_name']!, _fatherNameMeta));
    }
    if (data.containsKey('date_of_birth')) {
      context.handle(
          _dateOfBirthMeta,
          dateOfBirth.isAcceptableOrUnknown(
              data['date_of_birth']!, _dateOfBirthMeta));
    }
    if (data.containsKey('place_of_birth')) {
      context.handle(
          _placeOfBirthMeta,
          placeOfBirth.isAcceptableOrUnknown(
              data['place_of_birth']!, _placeOfBirthMeta));
    }
    if (data.containsKey('place_of_issue')) {
      context.handle(
          _placeOfIssueMeta,
          placeOfIssue.isAcceptableOrUnknown(
              data['place_of_issue']!, _placeOfIssueMeta));
    }
    if (data.containsKey('further_info')) {
      context.handle(
          _furtherInfoMeta,
          furtherInfo.isAcceptableOrUnknown(
              data['further_info']!, _furtherInfoMeta));
    }
    if (data.containsKey('contact_info')) {
      context.handle(
          _contactInfoMeta,
          contactInfo.isAcceptableOrUnknown(
              data['contact_info']!, _contactInfoMeta));
    }
    if (data.containsKey('educational_info')) {
      context.handle(
          _educationalInfoMeta,
          educationalInfo.isAcceptableOrUnknown(
              data['educational_info']!, _educationalInfoMeta));
    }
    if (data.containsKey('soldier')) {
      context.handle(_soldierMeta,
          soldier.isAcceptableOrUnknown(data['soldier']!, _soldierMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
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
    return $PersonalInfoTableTable(attachedDatabase, alias);
  }
}

class UnitPropertiesTableData extends DataClass
    implements Insertable<UnitPropertiesTableData> {
  final int? id;
  final String unitName;
  final String? unitCode;
  final String? unitCity;
  final String? unitType;
  final int? sections;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  UnitPropertiesTableData(
      {this.id,
      required this.unitName,
      this.unitCode,
      this.unitCity,
      this.unitType,
      this.sections,
      this.createdAt,
      this.updatedAt});
  factory UnitPropertiesTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UnitPropertiesTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      unitName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}unit_name'])!,
      unitCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}unit_code']),
      unitCity: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}unit_city']),
      unitType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}unit_type']),
      sections: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sections']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['unit_name'] = Variable<String>(unitName);
    if (!nullToAbsent || unitCode != null) {
      map['unit_code'] = Variable<String?>(unitCode);
    }
    if (!nullToAbsent || unitCity != null) {
      map['unit_city'] = Variable<String?>(unitCity);
    }
    if (!nullToAbsent || unitType != null) {
      map['unit_type'] = Variable<String?>(unitType);
    }
    if (!nullToAbsent || sections != null) {
      map['sections'] = Variable<int?>(sections);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  UnitPropertiesTableCompanion toCompanion(bool nullToAbsent) {
    return UnitPropertiesTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      unitName: Value(unitName),
      unitCode: unitCode == null && nullToAbsent
          ? const Value.absent()
          : Value(unitCode),
      unitCity: unitCity == null && nullToAbsent
          ? const Value.absent()
          : Value(unitCity),
      unitType: unitType == null && nullToAbsent
          ? const Value.absent()
          : Value(unitType),
      sections: sections == null && nullToAbsent
          ? const Value.absent()
          : Value(sections),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory UnitPropertiesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UnitPropertiesTableData(
      id: serializer.fromJson<int?>(json['id']),
      unitName: serializer.fromJson<String>(json['unitName']),
      unitCode: serializer.fromJson<String?>(json['unitCode']),
      unitCity: serializer.fromJson<String?>(json['unitCity']),
      unitType: serializer.fromJson<String?>(json['unitType']),
      sections: serializer.fromJson<int?>(json['sections']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'unitName': serializer.toJson<String>(unitName),
      'unitCode': serializer.toJson<String?>(unitCode),
      'unitCity': serializer.toJson<String?>(unitCity),
      'unitType': serializer.toJson<String?>(unitType),
      'sections': serializer.toJson<int?>(sections),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  UnitPropertiesTableData copyWith(
          {int? id,
          String? unitName,
          String? unitCode,
          String? unitCity,
          String? unitType,
          int? sections,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      UnitPropertiesTableData(
        id: id ?? this.id,
        unitName: unitName ?? this.unitName,
        unitCode: unitCode ?? this.unitCode,
        unitCity: unitCity ?? this.unitCity,
        unitType: unitType ?? this.unitType,
        sections: sections ?? this.sections,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('UnitPropertiesTableData(')
          ..write('id: $id, ')
          ..write('unitName: $unitName, ')
          ..write('unitCode: $unitCode, ')
          ..write('unitCity: $unitCity, ')
          ..write('unitType: $unitType, ')
          ..write('sections: $sections, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, unitName, unitCode, unitCity, unitType,
      sections, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UnitPropertiesTableData &&
          other.id == this.id &&
          other.unitName == this.unitName &&
          other.unitCode == this.unitCode &&
          other.unitCity == this.unitCity &&
          other.unitType == this.unitType &&
          other.sections == this.sections &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class UnitPropertiesTableCompanion
    extends UpdateCompanion<UnitPropertiesTableData> {
  final Value<int?> id;
  final Value<String> unitName;
  final Value<String?> unitCode;
  final Value<String?> unitCity;
  final Value<String?> unitType;
  final Value<int?> sections;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const UnitPropertiesTableCompanion({
    this.id = const Value.absent(),
    this.unitName = const Value.absent(),
    this.unitCode = const Value.absent(),
    this.unitCity = const Value.absent(),
    this.unitType = const Value.absent(),
    this.sections = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  UnitPropertiesTableCompanion.insert({
    this.id = const Value.absent(),
    required String unitName,
    this.unitCode = const Value.absent(),
    this.unitCity = const Value.absent(),
    this.unitType = const Value.absent(),
    this.sections = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : unitName = Value(unitName);
  static Insertable<UnitPropertiesTableData> custom({
    Expression<int?>? id,
    Expression<String>? unitName,
    Expression<String?>? unitCode,
    Expression<String?>? unitCity,
    Expression<String?>? unitType,
    Expression<int?>? sections,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (unitName != null) 'unit_name': unitName,
      if (unitCode != null) 'unit_code': unitCode,
      if (unitCity != null) 'unit_city': unitCity,
      if (unitType != null) 'unit_type': unitType,
      if (sections != null) 'sections': sections,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  UnitPropertiesTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? unitName,
      Value<String?>? unitCode,
      Value<String?>? unitCity,
      Value<String?>? unitType,
      Value<int?>? sections,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return UnitPropertiesTableCompanion(
      id: id ?? this.id,
      unitName: unitName ?? this.unitName,
      unitCode: unitCode ?? this.unitCode,
      unitCity: unitCity ?? this.unitCity,
      unitType: unitType ?? this.unitType,
      sections: sections ?? this.sections,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (unitName.present) {
      map['unit_name'] = Variable<String>(unitName.value);
    }
    if (unitCode.present) {
      map['unit_code'] = Variable<String?>(unitCode.value);
    }
    if (unitCity.present) {
      map['unit_city'] = Variable<String?>(unitCity.value);
    }
    if (unitType.present) {
      map['unit_type'] = Variable<String?>(unitType.value);
    }
    if (sections.present) {
      map['sections'] = Variable<int?>(sections.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnitPropertiesTableCompanion(')
          ..write('id: $id, ')
          ..write('unitName: $unitName, ')
          ..write('unitCode: $unitCode, ')
          ..write('unitCity: $unitCity, ')
          ..write('unitType: $unitType, ')
          ..write('sections: $sections, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $UnitPropertiesTableTable extends UnitPropertiesTable
    with TableInfo<$UnitPropertiesTableTable, UnitPropertiesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UnitPropertiesTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _unitNameMeta = const VerificationMeta('unitName');
  @override
  late final GeneratedColumn<String?> unitName = GeneratedColumn<String?>(
      'unit_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _unitCodeMeta = const VerificationMeta('unitCode');
  @override
  late final GeneratedColumn<String?> unitCode = GeneratedColumn<String?>(
      'unit_code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _unitCityMeta = const VerificationMeta('unitCity');
  @override
  late final GeneratedColumn<String?> unitCity = GeneratedColumn<String?>(
      'unit_city', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _unitTypeMeta = const VerificationMeta('unitType');
  @override
  late final GeneratedColumn<String?> unitType = GeneratedColumn<String?>(
      'unit_type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _sectionsMeta = const VerificationMeta('sections');
  @override
  late final GeneratedColumn<int?> sections = GeneratedColumn<int?>(
      'sections', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES section_table (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        unitName,
        unitCode,
        unitCity,
        unitType,
        sections,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'unit_properties_table';
  @override
  String get actualTableName => 'unit_properties_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<UnitPropertiesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('unit_name')) {
      context.handle(_unitNameMeta,
          unitName.isAcceptableOrUnknown(data['unit_name']!, _unitNameMeta));
    } else if (isInserting) {
      context.missing(_unitNameMeta);
    }
    if (data.containsKey('unit_code')) {
      context.handle(_unitCodeMeta,
          unitCode.isAcceptableOrUnknown(data['unit_code']!, _unitCodeMeta));
    }
    if (data.containsKey('unit_city')) {
      context.handle(_unitCityMeta,
          unitCity.isAcceptableOrUnknown(data['unit_city']!, _unitCityMeta));
    }
    if (data.containsKey('unit_type')) {
      context.handle(_unitTypeMeta,
          unitType.isAcceptableOrUnknown(data['unit_type']!, _unitTypeMeta));
    }
    if (data.containsKey('sections')) {
      context.handle(_sectionsMeta,
          sections.isAcceptableOrUnknown(data['sections']!, _sectionsMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UnitPropertiesTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return UnitPropertiesTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UnitPropertiesTableTable createAlias(String alias) {
    return $UnitPropertiesTableTable(attachedDatabase, alias);
  }
}

abstract class _$SoldierDatabase extends GeneratedDatabase {
  _$SoldierDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $AnnualOvertimeTableTable annualOvertimeTable =
      $AnnualOvertimeTableTable(this);
  late final $ContactInfoTableTable contactInfoTable =
      $ContactInfoTableTable(this);
  late final $DailyAbsenceOvertimeTableTable dailyAbsenceOvertimeTable =
      $DailyAbsenceOvertimeTableTable(this);
  late final $DailyVaccationTableTable dailyVaccationTable =
      $DailyVaccationTableTable(this);
  late final $ViolationsOvertimeTableTable violationsOvertimeTable =
      $ViolationsOvertimeTableTable(this);
  late final $DisciplinalOvertimeTableTable disciplinalOvertimeTable =
      $DisciplinalOvertimeTableTable(this);
  late final $EducationalInfoTableTable educationalInfoTable =
      $EducationalInfoTableTable(this);
  late final $FurtherInfoTableTable furtherInfoTable =
      $FurtherInfoTableTable(this);
  late final $HealthStatusTableTable healthStatusTable =
      $HealthStatusTableTable(this);
  late final $HourlyVaccationTableTable hourlyVaccationTable =
      $HourlyVaccationTableTable(this);
  late final $OperationalServiceDeficitRecordTableTable
      operationalServiceDeficitRecordTable =
      $OperationalServiceDeficitRecordTableTable(this);
  late final $OvertimeTableTable overtimeTable = $OvertimeTableTable(this);
  late final $SectionTableTable sectionTable = $SectionTableTable(this);
  late final $TrainigStatusTableTable trainigStatusTable =
      $TrainigStatusTableTable(this);
  late final $VaccationsTableTable vaccationsTable =
      $VaccationsTableTable(this);
  late final $ServiceDeficitRecordTableTable serviceDeficitRecordTable =
      $ServiceDeficitRecordTableTable(this);
  late final $ServiceDeficitTableTable serviceDeficitTable =
      $ServiceDeficitTableTable(this);
  late final $RankTableTable rankTable = $RankTableTable(this);
  late final $SoldierCaseTableTable soldierCaseTable =
      $SoldierCaseTableTable(this);
  late final $SoldierTableTable soldierTable = $SoldierTableTable(this);
  late final $PersonalInfoTableTable personalInfoTable =
      $PersonalInfoTableTable(this);
  late final $UnitPropertiesTableTable unitPropertiesTable =
      $UnitPropertiesTableTable(this);
  late final AnnualOvertimeDAO annualOvertimeDAO =
      AnnualOvertimeDAO(this as SoldierDatabase);
  late final ContactInfoDAO contactInfoDAO =
      ContactInfoDAO(this as SoldierDatabase);
  late final DailyAbsenceOvertimeDAO dailyAbsenceOvertimeDAO =
      DailyAbsenceOvertimeDAO(this as SoldierDatabase);
  late final DailyVaccationDAO dailyVaccationDAO =
      DailyVaccationDAO(this as SoldierDatabase);
  late final DisciplinalOvertimeDAO disciplinalOvertimeDAO =
      DisciplinalOvertimeDAO(this as SoldierDatabase);
  late final EducationalInfoDAO educationalInfoDAO =
      EducationalInfoDAO(this as SoldierDatabase);
  late final FurtherInfoDAO furtherInfoDAO =
      FurtherInfoDAO(this as SoldierDatabase);
  late final HealthStatusDAO healthStatusDAO =
      HealthStatusDAO(this as SoldierDatabase);
  late final HourlyVaccationDAO hourlyVaccationDAO =
      HourlyVaccationDAO(this as SoldierDatabase);
  late final OperationalServiceDeficitRecordDAO
      operationalServiceDeficitRecordDAO =
      OperationalServiceDeficitRecordDAO(this as SoldierDatabase);
  late final OvertimeDAO overtimeDAO = OvertimeDAO(this as SoldierDatabase);
  late final PersonalInfoDAO personalInfoDAO =
      PersonalInfoDAO(this as SoldierDatabase);
  late final RankDAO rankDAO = RankDAO(this as SoldierDatabase);
  late final SectionDAO sectionDAO = SectionDAO(this as SoldierDatabase);
  late final ServiceDeficitRecordDAO serviceDeficitRecordDAO =
      ServiceDeficitRecordDAO(this as SoldierDatabase);
  late final ServiceDeficitDAO serviceDeficitDAO =
      ServiceDeficitDAO(this as SoldierDatabase);
  late final SoldierCaseDAO soldierCaseDAO =
      SoldierCaseDAO(this as SoldierDatabase);
  late final SoldierDAO soldierDAO = SoldierDAO(this as SoldierDatabase);
  late final TrainigStatusDAO trainigStatusDAO =
      TrainigStatusDAO(this as SoldierDatabase);
  late final UnitPropertiesDAO unitPropertiesDAO =
      UnitPropertiesDAO(this as SoldierDatabase);
  late final VaccationsDAO vaccationsDAO =
      VaccationsDAO(this as SoldierDatabase);
  late final ViolationsOvertimeDAO violationsOvertimeDAO =
      ViolationsOvertimeDAO(this as SoldierDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        annualOvertimeTable,
        contactInfoTable,
        dailyAbsenceOvertimeTable,
        dailyVaccationTable,
        violationsOvertimeTable,
        disciplinalOvertimeTable,
        educationalInfoTable,
        furtherInfoTable,
        healthStatusTable,
        hourlyVaccationTable,
        operationalServiceDeficitRecordTable,
        overtimeTable,
        sectionTable,
        trainigStatusTable,
        vaccationsTable,
        serviceDeficitRecordTable,
        serviceDeficitTable,
        rankTable,
        soldierCaseTable,
        soldierTable,
        personalInfoTable,
        unitPropertiesTable
      ];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$AnnualOvertimeDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
}
mixin _$ContactInfoDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ContactInfoTableTable get contactInfoTable =>
      attachedDatabase.contactInfoTable;
}
mixin _$DailyAbsenceOvertimeDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
}
mixin _$DailyVaccationDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $DailyVaccationTableTable get dailyVaccationTable =>
      attachedDatabase.dailyVaccationTable;
}
mixin _$DisciplinalOvertimeDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyVaccationTableTable get dailyVaccationTable =>
      attachedDatabase.dailyVaccationTable;
  $DisciplinalOvertimeTableTable get disciplinalOvertimeTable =>
      attachedDatabase.disciplinalOvertimeTable;
}
mixin _$EducationalInfoDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $EducationalInfoTableTable get educationalInfoTable =>
      attachedDatabase.educationalInfoTable;
}
mixin _$FurtherInfoDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $FurtherInfoTableTable get furtherInfoTable =>
      attachedDatabase.furtherInfoTable;
}
mixin _$HealthStatusDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
}
mixin _$HourlyVaccationDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $HourlyVaccationTableTable get hourlyVaccationTable =>
      attachedDatabase.hourlyVaccationTable;
}
mixin _$OvertimeDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyVaccationTableTable get dailyVaccationTable =>
      attachedDatabase.dailyVaccationTable;
  $DisciplinalOvertimeTableTable get disciplinalOvertimeTable =>
      attachedDatabase.disciplinalOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
}
mixin _$PersonalInfoDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $FurtherInfoTableTable get furtherInfoTable =>
      attachedDatabase.furtherInfoTable;
  $ContactInfoTableTable get contactInfoTable =>
      attachedDatabase.contactInfoTable;
  $EducationalInfoTableTable get educationalInfoTable =>
      attachedDatabase.educationalInfoTable;
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
  $TrainigStatusTableTable get trainigStatusTable =>
      attachedDatabase.trainigStatusTable;
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyVaccationTableTable get dailyVaccationTable =>
      attachedDatabase.dailyVaccationTable;
  $DisciplinalOvertimeTableTable get disciplinalOvertimeTable =>
      attachedDatabase.disciplinalOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $HourlyVaccationTableTable get hourlyVaccationTable =>
      attachedDatabase.hourlyVaccationTable;
  $VaccationsTableTable get vaccationsTable => attachedDatabase.vaccationsTable;
  $ServiceDeficitRecordTableTable get serviceDeficitRecordTable =>
      attachedDatabase.serviceDeficitRecordTable;
  $OperationalServiceDeficitRecordTableTable
      get operationalServiceDeficitRecordTable =>
          attachedDatabase.operationalServiceDeficitRecordTable;
  $ServiceDeficitTableTable get serviceDeficitTable =>
      attachedDatabase.serviceDeficitTable;
  $RankTableTable get rankTable => attachedDatabase.rankTable;
  $SoldierCaseTableTable get soldierCaseTable =>
      attachedDatabase.soldierCaseTable;
  $SoldierTableTable get soldierTable => attachedDatabase.soldierTable;
  $PersonalInfoTableTable get personalInfoTable =>
      attachedDatabase.personalInfoTable;
}
mixin _$RankDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $RankTableTable get rankTable => attachedDatabase.rankTable;
}
mixin _$SectionDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
}
mixin _$ServiceDeficitRecordDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ServiceDeficitRecordTableTable get serviceDeficitRecordTable =>
      attachedDatabase.serviceDeficitRecordTable;
}
mixin _$ServiceDeficitDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ServiceDeficitRecordTableTable get serviceDeficitRecordTable =>
      attachedDatabase.serviceDeficitRecordTable;
  $OperationalServiceDeficitRecordTableTable
      get operationalServiceDeficitRecordTable =>
          attachedDatabase.operationalServiceDeficitRecordTable;
  $ServiceDeficitTableTable get serviceDeficitTable =>
      attachedDatabase.serviceDeficitTable;
}
mixin _$SoldierCaseDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyVaccationTableTable get dailyVaccationTable =>
      attachedDatabase.dailyVaccationTable;
  $DisciplinalOvertimeTableTable get disciplinalOvertimeTable =>
      attachedDatabase.disciplinalOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $HourlyVaccationTableTable get hourlyVaccationTable =>
      attachedDatabase.hourlyVaccationTable;
  $VaccationsTableTable get vaccationsTable => attachedDatabase.vaccationsTable;
  $ServiceDeficitRecordTableTable get serviceDeficitRecordTable =>
      attachedDatabase.serviceDeficitRecordTable;
  $OperationalServiceDeficitRecordTableTable
      get operationalServiceDeficitRecordTable =>
          attachedDatabase.operationalServiceDeficitRecordTable;
  $ServiceDeficitTableTable get serviceDeficitTable =>
      attachedDatabase.serviceDeficitTable;
  $RankTableTable get rankTable => attachedDatabase.rankTable;
  $SoldierCaseTableTable get soldierCaseTable =>
      attachedDatabase.soldierCaseTable;
}
mixin _$SoldierDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
  $TrainigStatusTableTable get trainigStatusTable =>
      attachedDatabase.trainigStatusTable;
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyVaccationTableTable get dailyVaccationTable =>
      attachedDatabase.dailyVaccationTable;
  $DisciplinalOvertimeTableTable get disciplinalOvertimeTable =>
      attachedDatabase.disciplinalOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $HourlyVaccationTableTable get hourlyVaccationTable =>
      attachedDatabase.hourlyVaccationTable;
  $VaccationsTableTable get vaccationsTable => attachedDatabase.vaccationsTable;
  $ServiceDeficitRecordTableTable get serviceDeficitRecordTable =>
      attachedDatabase.serviceDeficitRecordTable;
  $OperationalServiceDeficitRecordTableTable
      get operationalServiceDeficitRecordTable =>
          attachedDatabase.operationalServiceDeficitRecordTable;
  $ServiceDeficitTableTable get serviceDeficitTable =>
      attachedDatabase.serviceDeficitTable;
  $RankTableTable get rankTable => attachedDatabase.rankTable;
  $SoldierCaseTableTable get soldierCaseTable =>
      attachedDatabase.soldierCaseTable;
  $SoldierTableTable get soldierTable => attachedDatabase.soldierTable;
}
mixin _$TrainigStatusDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $TrainigStatusTableTable get trainigStatusTable =>
      attachedDatabase.trainigStatusTable;
}
mixin _$UnitPropertiesDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
}
mixin _$VaccationsDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $DailyVaccationTableTable get dailyVaccationTable =>
      attachedDatabase.dailyVaccationTable;
  $HourlyVaccationTableTable get hourlyVaccationTable =>
      attachedDatabase.hourlyVaccationTable;
  $VaccationsTableTable get vaccationsTable => attachedDatabase.vaccationsTable;
}
mixin _$ViolationsOvertimeDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
}
mixin _$OperationalServiceDeficitRecordDAOMixin
    on DatabaseAccessor<SoldierDatabase> {
  $OperationalServiceDeficitRecordTableTable
      get operationalServiceDeficitRecordTable =>
          attachedDatabase.operationalServiceDeficitRecordTable;
}
