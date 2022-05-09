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
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  AnnualOvertimeTableData(
      {this.id,
      required this.overtime,
      this.forgivenessOvertime,
      required this.overtimeBalance,
      this.description,
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
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
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
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
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
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
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
      description: serializer.fromJson<String?>(json['description']),
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
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  AnnualOvertimeTableData copyWith(
          {int? id,
          int? overtime,
          int? forgivenessOvertime,
          int? overtimeBalance,
          String? description,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      AnnualOvertimeTableData(
        id: id ?? this.id,
        overtime: overtime ?? this.overtime,
        forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
        overtimeBalance: overtimeBalance ?? this.overtimeBalance,
        description: description ?? this.description,
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
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, overtime, forgivenessOvertime,
      overtimeBalance, description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnnualOvertimeTableData &&
          other.id == this.id &&
          other.overtime == this.overtime &&
          other.forgivenessOvertime == this.forgivenessOvertime &&
          other.overtimeBalance == this.overtimeBalance &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AnnualOvertimeTableCompanion
    extends UpdateCompanion<AnnualOvertimeTableData> {
  final Value<int?> id;
  final Value<int> overtime;
  final Value<int?> forgivenessOvertime;
  final Value<int> overtimeBalance;
  final Value<String?> description;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const AnnualOvertimeTableCompanion({
    this.id = const Value.absent(),
    this.overtime = const Value.absent(),
    this.forgivenessOvertime = const Value.absent(),
    this.overtimeBalance = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  AnnualOvertimeTableCompanion.insert({
    this.id = const Value.absent(),
    required int overtime,
    this.forgivenessOvertime = const Value.absent(),
    required int overtimeBalance,
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : overtime = Value(overtime),
        overtimeBalance = Value(overtimeBalance);
  static Insertable<AnnualOvertimeTableData> custom({
    Expression<int?>? id,
    Expression<int>? overtime,
    Expression<int?>? forgivenessOvertime,
    Expression<int>? overtimeBalance,
    Expression<String?>? description,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (overtime != null) 'overtime': overtime,
      if (forgivenessOvertime != null)
        'forgiveness_overtime': forgivenessOvertime,
      if (overtimeBalance != null) 'overtime_balance': overtimeBalance,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  AnnualOvertimeTableCompanion copyWith(
      {Value<int?>? id,
      Value<int>? overtime,
      Value<int?>? forgivenessOvertime,
      Value<int>? overtimeBalance,
      Value<String?>? description,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return AnnualOvertimeTableCompanion(
      id: id ?? this.id,
      overtime: overtime ?? this.overtime,
      forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
      overtimeBalance: overtimeBalance ?? this.overtimeBalance,
      description: description ?? this.description,
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
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
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
          ..write('description: $description, ')
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
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
        overtime,
        forgivenessOvertime,
        overtimeBalance,
        description,
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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

class AuditTableData extends DataClass implements Insertable<AuditTableData> {
  final int? id;
  final DateTime? time;
  final String? targetTable;
  final int? targetId;
  final String? auditBy;
  final String? operation;
  final String? systemMessage;
  final String? descriptions;
  final DateTime? createdAt;
  AuditTableData(
      {this.id,
      this.time,
      this.targetTable,
      this.targetId,
      this.auditBy,
      this.operation,
      this.systemMessage,
      this.descriptions,
      this.createdAt});
  factory AuditTableData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      time: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}time']),
      targetTable: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}target_table']),
      targetId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}target_id']),
      auditBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_by']),
      operation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}operation']),
      systemMessage: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}system_message']),
      descriptions: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}descriptions']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<DateTime?>(time);
    }
    if (!nullToAbsent || targetTable != null) {
      map['target_table'] = Variable<String?>(targetTable);
    }
    if (!nullToAbsent || targetId != null) {
      map['target_id'] = Variable<int?>(targetId);
    }
    if (!nullToAbsent || auditBy != null) {
      map['audit_by'] = Variable<String?>(auditBy);
    }
    if (!nullToAbsent || operation != null) {
      map['operation'] = Variable<String?>(operation);
    }
    if (!nullToAbsent || systemMessage != null) {
      map['system_message'] = Variable<String?>(systemMessage);
    }
    if (!nullToAbsent || descriptions != null) {
      map['descriptions'] = Variable<String?>(descriptions);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    return map;
  }

  AuditTableCompanion toCompanion(bool nullToAbsent) {
    return AuditTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      targetTable: targetTable == null && nullToAbsent
          ? const Value.absent()
          : Value(targetTable),
      targetId: targetId == null && nullToAbsent
          ? const Value.absent()
          : Value(targetId),
      auditBy: auditBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditBy),
      operation: operation == null && nullToAbsent
          ? const Value.absent()
          : Value(operation),
      systemMessage: systemMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(systemMessage),
      descriptions: descriptions == null && nullToAbsent
          ? const Value.absent()
          : Value(descriptions),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory AuditTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditTableData(
      id: serializer.fromJson<int?>(json['id']),
      time: serializer.fromJson<DateTime?>(json['time']),
      targetTable: serializer.fromJson<String?>(json['targetTable']),
      targetId: serializer.fromJson<int?>(json['targetId']),
      auditBy: serializer.fromJson<String?>(json['auditBy']),
      operation: serializer.fromJson<String?>(json['operation']),
      systemMessage: serializer.fromJson<String?>(json['systemMessage']),
      descriptions: serializer.fromJson<String?>(json['descriptions']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'time': serializer.toJson<DateTime?>(time),
      'targetTable': serializer.toJson<String?>(targetTable),
      'targetId': serializer.toJson<int?>(targetId),
      'auditBy': serializer.toJson<String?>(auditBy),
      'operation': serializer.toJson<String?>(operation),
      'systemMessage': serializer.toJson<String?>(systemMessage),
      'descriptions': serializer.toJson<String?>(descriptions),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  AuditTableData copyWith(
          {int? id,
          DateTime? time,
          String? targetTable,
          int? targetId,
          String? auditBy,
          String? operation,
          String? systemMessage,
          String? descriptions,
          DateTime? createdAt}) =>
      AuditTableData(
        id: id ?? this.id,
        time: time ?? this.time,
        targetTable: targetTable ?? this.targetTable,
        targetId: targetId ?? this.targetId,
        auditBy: auditBy ?? this.auditBy,
        operation: operation ?? this.operation,
        systemMessage: systemMessage ?? this.systemMessage,
        descriptions: descriptions ?? this.descriptions,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('AuditTableData(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('targetTable: $targetTable, ')
          ..write('targetId: $targetId, ')
          ..write('auditBy: $auditBy, ')
          ..write('operation: $operation, ')
          ..write('systemMessage: $systemMessage, ')
          ..write('descriptions: $descriptions, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, time, targetTable, targetId, auditBy,
      operation, systemMessage, descriptions, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditTableData &&
          other.id == this.id &&
          other.time == this.time &&
          other.targetTable == this.targetTable &&
          other.targetId == this.targetId &&
          other.auditBy == this.auditBy &&
          other.operation == this.operation &&
          other.systemMessage == this.systemMessage &&
          other.descriptions == this.descriptions &&
          other.createdAt == this.createdAt);
}

class AuditTableCompanion extends UpdateCompanion<AuditTableData> {
  final Value<int?> id;
  final Value<DateTime?> time;
  final Value<String?> targetTable;
  final Value<int?> targetId;
  final Value<String?> auditBy;
  final Value<String?> operation;
  final Value<String?> systemMessage;
  final Value<String?> descriptions;
  final Value<DateTime?> createdAt;
  const AuditTableCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.targetTable = const Value.absent(),
    this.targetId = const Value.absent(),
    this.auditBy = const Value.absent(),
    this.operation = const Value.absent(),
    this.systemMessage = const Value.absent(),
    this.descriptions = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  AuditTableCompanion.insert({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.targetTable = const Value.absent(),
    this.targetId = const Value.absent(),
    this.auditBy = const Value.absent(),
    this.operation = const Value.absent(),
    this.systemMessage = const Value.absent(),
    this.descriptions = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  static Insertable<AuditTableData> custom({
    Expression<int?>? id,
    Expression<DateTime?>? time,
    Expression<String?>? targetTable,
    Expression<int?>? targetId,
    Expression<String?>? auditBy,
    Expression<String?>? operation,
    Expression<String?>? systemMessage,
    Expression<String?>? descriptions,
    Expression<DateTime?>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (time != null) 'time': time,
      if (targetTable != null) 'target_table': targetTable,
      if (targetId != null) 'target_id': targetId,
      if (auditBy != null) 'audit_by': auditBy,
      if (operation != null) 'operation': operation,
      if (systemMessage != null) 'system_message': systemMessage,
      if (descriptions != null) 'descriptions': descriptions,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  AuditTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime?>? time,
      Value<String?>? targetTable,
      Value<int?>? targetId,
      Value<String?>? auditBy,
      Value<String?>? operation,
      Value<String?>? systemMessage,
      Value<String?>? descriptions,
      Value<DateTime?>? createdAt}) {
    return AuditTableCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      targetTable: targetTable ?? this.targetTable,
      targetId: targetId ?? this.targetId,
      auditBy: auditBy ?? this.auditBy,
      operation: operation ?? this.operation,
      systemMessage: systemMessage ?? this.systemMessage,
      descriptions: descriptions ?? this.descriptions,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime?>(time.value);
    }
    if (targetTable.present) {
      map['target_table'] = Variable<String?>(targetTable.value);
    }
    if (targetId.present) {
      map['target_id'] = Variable<int?>(targetId.value);
    }
    if (auditBy.present) {
      map['audit_by'] = Variable<String?>(auditBy.value);
    }
    if (operation.present) {
      map['operation'] = Variable<String?>(operation.value);
    }
    if (systemMessage.present) {
      map['system_message'] = Variable<String?>(systemMessage.value);
    }
    if (descriptions.present) {
      map['descriptions'] = Variable<String?>(descriptions.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditTableCompanion(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('targetTable: $targetTable, ')
          ..write('targetId: $targetId, ')
          ..write('auditBy: $auditBy, ')
          ..write('operation: $operation, ')
          ..write('systemMessage: $systemMessage, ')
          ..write('descriptions: $descriptions, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $AuditTableTable extends AuditTable
    with TableInfo<$AuditTableTable, AuditTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AuditTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<DateTime?> time = GeneratedColumn<DateTime?>(
      'time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _targetTableMeta =
      const VerificationMeta('targetTable');
  @override
  late final GeneratedColumn<String?> targetTable = GeneratedColumn<String?>(
      'target_table', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _targetIdMeta = const VerificationMeta('targetId');
  @override
  late final GeneratedColumn<int?> targetId = GeneratedColumn<int?>(
      'target_id', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditByMeta = const VerificationMeta('auditBy');
  @override
  late final GeneratedColumn<String?> auditBy = GeneratedColumn<String?>(
      'audit_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _operationMeta = const VerificationMeta('operation');
  @override
  late final GeneratedColumn<String?> operation = GeneratedColumn<String?>(
      'operation', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _systemMessageMeta =
      const VerificationMeta('systemMessage');
  @override
  late final GeneratedColumn<String?> systemMessage = GeneratedColumn<String?>(
      'system_message', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionsMeta =
      const VerificationMeta('descriptions');
  @override
  late final GeneratedColumn<String?> descriptions = GeneratedColumn<String?>(
      'descriptions', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        time,
        targetTable,
        targetId,
        auditBy,
        operation,
        systemMessage,
        descriptions,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? 'audit_table';
  @override
  String get actualTableName => 'audit_table';
  @override
  VerificationContext validateIntegrity(Insertable<AuditTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    }
    if (data.containsKey('target_table')) {
      context.handle(
          _targetTableMeta,
          targetTable.isAcceptableOrUnknown(
              data['target_table']!, _targetTableMeta));
    }
    if (data.containsKey('target_id')) {
      context.handle(_targetIdMeta,
          targetId.isAcceptableOrUnknown(data['target_id']!, _targetIdMeta));
    }
    if (data.containsKey('audit_by')) {
      context.handle(_auditByMeta,
          auditBy.isAcceptableOrUnknown(data['audit_by']!, _auditByMeta));
    }
    if (data.containsKey('operation')) {
      context.handle(_operationMeta,
          operation.isAcceptableOrUnknown(data['operation']!, _operationMeta));
    }
    if (data.containsKey('system_message')) {
      context.handle(
          _systemMessageMeta,
          systemMessage.isAcceptableOrUnknown(
              data['system_message']!, _systemMessageMeta));
    }
    if (data.containsKey('descriptions')) {
      context.handle(
          _descriptionsMeta,
          descriptions.isAcceptableOrUnknown(
              data['descriptions']!, _descriptionsMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AuditTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditTableTable createAlias(String alias) {
    return $AuditTableTable(attachedDatabase, alias);
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
  final String? postalCode;
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
      this.postalCode,
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
      postalCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}postal_code']),
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
    if (!nullToAbsent || postalCode != null) {
      map['postal_code'] = Variable<String?>(postalCode);
    }
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
      postalCode: postalCode == null && nullToAbsent
          ? const Value.absent()
          : Value(postalCode),
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
      postalCode: serializer.fromJson<String?>(json['postalCode']),
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
      'postalCode': serializer.toJson<String?>(postalCode),
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
          String? postalCode,
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
        postalCode: postalCode ?? this.postalCode,
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
          ..write('postalCode: $postalCode, ')
          ..write('distance: $distance, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, phoneNumber, mobileNumber, province, city,
      address, postalCode, distance, createdAt, updatedAt);
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
          other.postalCode == this.postalCode &&
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
  final Value<String?> postalCode;
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
    this.postalCode = const Value.absent(),
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
    this.postalCode = const Value.absent(),
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
    Expression<String?>? postalCode,
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
      if (postalCode != null) 'postal_code': postalCode,
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
      Value<String?>? postalCode,
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
      postalCode: postalCode ?? this.postalCode,
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
    if (postalCode.present) {
      map['postal_code'] = Variable<String?>(postalCode.value);
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
          ..write('postalCode: $postalCode, ')
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
  final VerificationMeta _postalCodeMeta = const VerificationMeta('postalCode');
  @override
  late final GeneratedColumn<String?> postalCode = GeneratedColumn<String?>(
      'postal_code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
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
        postalCode,
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
    if (data.containsKey('postal_code')) {
      context.handle(
          _postalCodeMeta,
          postalCode.isAcceptableOrUnknown(
              data['postal_code']!, _postalCodeMeta));
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
  final bool isVacuum;
  final int absenceDays;
  final int? overtime;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  DailyAbsenceOvertimeTableData(
      {this.id,
      required this.startDate,
      required this.endDate,
      required this.isVacuum,
      required this.absenceDays,
      this.overtime,
      this.description,
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
      isVacuum: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_vacuum'])!,
      absenceDays: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}absence_days'])!,
      overtime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overtime']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
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
    map['is_vacuum'] = Variable<bool>(isVacuum);
    map['absence_days'] = Variable<int>(absenceDays);
    if (!nullToAbsent || overtime != null) {
      map['overtime'] = Variable<int?>(overtime);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
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
      isVacuum: Value(isVacuum),
      absenceDays: Value(absenceDays),
      overtime: overtime == null && nullToAbsent
          ? const Value.absent()
          : Value(overtime),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
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
      isVacuum: serializer.fromJson<bool>(json['isVacuum']),
      absenceDays: serializer.fromJson<int>(json['absenceDays']),
      overtime: serializer.fromJson<int?>(json['overtime']),
      description: serializer.fromJson<String?>(json['description']),
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
      'isVacuum': serializer.toJson<bool>(isVacuum),
      'absenceDays': serializer.toJson<int>(absenceDays),
      'overtime': serializer.toJson<int?>(overtime),
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  DailyAbsenceOvertimeTableData copyWith(
          {int? id,
          DateTime? startDate,
          DateTime? endDate,
          bool? isVacuum,
          int? absenceDays,
          int? overtime,
          String? description,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      DailyAbsenceOvertimeTableData(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        isVacuum: isVacuum ?? this.isVacuum,
        absenceDays: absenceDays ?? this.absenceDays,
        overtime: overtime ?? this.overtime,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('DailyAbsenceOvertimeTableData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('isVacuum: $isVacuum, ')
          ..write('absenceDays: $absenceDays, ')
          ..write('overtime: $overtime, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, startDate, endDate, isVacuum, absenceDays,
      overtime, description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyAbsenceOvertimeTableData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.isVacuum == this.isVacuum &&
          other.absenceDays == this.absenceDays &&
          other.overtime == this.overtime &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class DailyAbsenceOvertimeTableCompanion
    extends UpdateCompanion<DailyAbsenceOvertimeTableData> {
  final Value<int?> id;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<bool> isVacuum;
  final Value<int> absenceDays;
  final Value<int?> overtime;
  final Value<String?> description;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const DailyAbsenceOvertimeTableCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.isVacuum = const Value.absent(),
    this.absenceDays = const Value.absent(),
    this.overtime = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DailyAbsenceOvertimeTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startDate,
    required DateTime endDate,
    required bool isVacuum,
    required int absenceDays,
    this.overtime = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : startDate = Value(startDate),
        endDate = Value(endDate),
        isVacuum = Value(isVacuum),
        absenceDays = Value(absenceDays);
  static Insertable<DailyAbsenceOvertimeTableData> custom({
    Expression<int?>? id,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<bool>? isVacuum,
    Expression<int>? absenceDays,
    Expression<int?>? overtime,
    Expression<String?>? description,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (isVacuum != null) 'is_vacuum': isVacuum,
      if (absenceDays != null) 'absence_days': absenceDays,
      if (overtime != null) 'overtime': overtime,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  DailyAbsenceOvertimeTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime>? startDate,
      Value<DateTime>? endDate,
      Value<bool>? isVacuum,
      Value<int>? absenceDays,
      Value<int?>? overtime,
      Value<String?>? description,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return DailyAbsenceOvertimeTableCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      isVacuum: isVacuum ?? this.isVacuum,
      absenceDays: absenceDays ?? this.absenceDays,
      overtime: overtime ?? this.overtime,
      description: description ?? this.description,
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
    if (isVacuum.present) {
      map['is_vacuum'] = Variable<bool>(isVacuum.value);
    }
    if (absenceDays.present) {
      map['absence_days'] = Variable<int>(absenceDays.value);
    }
    if (overtime.present) {
      map['overtime'] = Variable<int?>(overtime.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
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
          ..write('isVacuum: $isVacuum, ')
          ..write('absenceDays: $absenceDays, ')
          ..write('overtime: $overtime, ')
          ..write('description: $description, ')
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
  final VerificationMeta _isVacuumMeta = const VerificationMeta('isVacuum');
  @override
  late final GeneratedColumn<bool?> isVacuum = GeneratedColumn<bool?>(
      'is_vacuum', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_vacuum IN (0, 1))');
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
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
        startDate,
        endDate,
        isVacuum,
        absenceDays,
        overtime,
        description,
        createdAt,
        updatedAt
      ];
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
    if (data.containsKey('is_vacuum')) {
      context.handle(_isVacuumMeta,
          isVacuum.isAcceptableOrUnknown(data['is_vacuum']!, _isVacuumMeta));
    } else if (isInserting) {
      context.missing(_isVacuumMeta);
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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

class VacationsTableData extends DataClass
    implements Insertable<VacationsTableData> {
  final int? id;
  final double? eligibleTotal;
  final double eligibleBalance;
  final double eligibleUsed;
  final double? eligibleValuePerMonth;
  final double? sickTotal;
  final double sickBalance;
  final double sickUsed;
  final double? sickValuePerMonth;
  final double? incentiveTotal;
  final double? incentiveBalance;
  final double? incentiveUsed;
  final double? incentiveValueLimit;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  VacationsTableData(
      {this.id,
      this.eligibleTotal,
      required this.eligibleBalance,
      required this.eligibleUsed,
      this.eligibleValuePerMonth,
      this.sickTotal,
      required this.sickBalance,
      required this.sickUsed,
      this.sickValuePerMonth,
      this.incentiveTotal,
      this.incentiveBalance,
      this.incentiveUsed,
      this.incentiveValueLimit,
      this.createdAt,
      this.updatedAt});
  factory VacationsTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return VacationsTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      eligibleTotal: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}eligible_total']),
      eligibleBalance: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}eligible_balance'])!,
      eligibleUsed: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}eligible_used'])!,
      eligibleValuePerMonth: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}eligible_value_per_month']),
      sickTotal: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sick_total']),
      sickBalance: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sick_balance'])!,
      sickUsed: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sick_used'])!,
      sickValuePerMonth: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}sick_value_per_month']),
      incentiveTotal: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}incentive_total']),
      incentiveBalance: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}incentive_balance']),
      incentiveUsed: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}incentive_used']),
      incentiveValueLimit: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}incentive_value_limit']),
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
    if (!nullToAbsent || eligibleTotal != null) {
      map['eligible_total'] = Variable<double?>(eligibleTotal);
    }
    map['eligible_balance'] = Variable<double>(eligibleBalance);
    map['eligible_used'] = Variable<double>(eligibleUsed);
    if (!nullToAbsent || eligibleValuePerMonth != null) {
      map['eligible_value_per_month'] =
          Variable<double?>(eligibleValuePerMonth);
    }
    if (!nullToAbsent || sickTotal != null) {
      map['sick_total'] = Variable<double?>(sickTotal);
    }
    map['sick_balance'] = Variable<double>(sickBalance);
    map['sick_used'] = Variable<double>(sickUsed);
    if (!nullToAbsent || sickValuePerMonth != null) {
      map['sick_value_per_month'] = Variable<double?>(sickValuePerMonth);
    }
    if (!nullToAbsent || incentiveTotal != null) {
      map['incentive_total'] = Variable<double?>(incentiveTotal);
    }
    if (!nullToAbsent || incentiveBalance != null) {
      map['incentive_balance'] = Variable<double?>(incentiveBalance);
    }
    if (!nullToAbsent || incentiveUsed != null) {
      map['incentive_used'] = Variable<double?>(incentiveUsed);
    }
    if (!nullToAbsent || incentiveValueLimit != null) {
      map['incentive_value_limit'] = Variable<double?>(incentiveValueLimit);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  VacationsTableCompanion toCompanion(bool nullToAbsent) {
    return VacationsTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      eligibleTotal: eligibleTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(eligibleTotal),
      eligibleBalance: Value(eligibleBalance),
      eligibleUsed: Value(eligibleUsed),
      eligibleValuePerMonth: eligibleValuePerMonth == null && nullToAbsent
          ? const Value.absent()
          : Value(eligibleValuePerMonth),
      sickTotal: sickTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(sickTotal),
      sickBalance: Value(sickBalance),
      sickUsed: Value(sickUsed),
      sickValuePerMonth: sickValuePerMonth == null && nullToAbsent
          ? const Value.absent()
          : Value(sickValuePerMonth),
      incentiveTotal: incentiveTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(incentiveTotal),
      incentiveBalance: incentiveBalance == null && nullToAbsent
          ? const Value.absent()
          : Value(incentiveBalance),
      incentiveUsed: incentiveUsed == null && nullToAbsent
          ? const Value.absent()
          : Value(incentiveUsed),
      incentiveValueLimit: incentiveValueLimit == null && nullToAbsent
          ? const Value.absent()
          : Value(incentiveValueLimit),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory VacationsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VacationsTableData(
      id: serializer.fromJson<int?>(json['id']),
      eligibleTotal: serializer.fromJson<double?>(json['eligibleTotal']),
      eligibleBalance: serializer.fromJson<double>(json['eligibleBalance']),
      eligibleUsed: serializer.fromJson<double>(json['eligibleUsed']),
      eligibleValuePerMonth:
          serializer.fromJson<double?>(json['eligibleValuePerMonth']),
      sickTotal: serializer.fromJson<double?>(json['sickTotal']),
      sickBalance: serializer.fromJson<double>(json['sickBalance']),
      sickUsed: serializer.fromJson<double>(json['sickUsed']),
      sickValuePerMonth:
          serializer.fromJson<double?>(json['sickValuePerMonth']),
      incentiveTotal: serializer.fromJson<double?>(json['incentiveTotal']),
      incentiveBalance: serializer.fromJson<double?>(json['incentiveBalance']),
      incentiveUsed: serializer.fromJson<double?>(json['incentiveUsed']),
      incentiveValueLimit:
          serializer.fromJson<double?>(json['incentiveValueLimit']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'eligibleTotal': serializer.toJson<double?>(eligibleTotal),
      'eligibleBalance': serializer.toJson<double>(eligibleBalance),
      'eligibleUsed': serializer.toJson<double>(eligibleUsed),
      'eligibleValuePerMonth':
          serializer.toJson<double?>(eligibleValuePerMonth),
      'sickTotal': serializer.toJson<double?>(sickTotal),
      'sickBalance': serializer.toJson<double>(sickBalance),
      'sickUsed': serializer.toJson<double>(sickUsed),
      'sickValuePerMonth': serializer.toJson<double?>(sickValuePerMonth),
      'incentiveTotal': serializer.toJson<double?>(incentiveTotal),
      'incentiveBalance': serializer.toJson<double?>(incentiveBalance),
      'incentiveUsed': serializer.toJson<double?>(incentiveUsed),
      'incentiveValueLimit': serializer.toJson<double?>(incentiveValueLimit),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  VacationsTableData copyWith(
          {int? id,
          double? eligibleTotal,
          double? eligibleBalance,
          double? eligibleUsed,
          double? eligibleValuePerMonth,
          double? sickTotal,
          double? sickBalance,
          double? sickUsed,
          double? sickValuePerMonth,
          double? incentiveTotal,
          double? incentiveBalance,
          double? incentiveUsed,
          double? incentiveValueLimit,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      VacationsTableData(
        id: id ?? this.id,
        eligibleTotal: eligibleTotal ?? this.eligibleTotal,
        eligibleBalance: eligibleBalance ?? this.eligibleBalance,
        eligibleUsed: eligibleUsed ?? this.eligibleUsed,
        eligibleValuePerMonth:
            eligibleValuePerMonth ?? this.eligibleValuePerMonth,
        sickTotal: sickTotal ?? this.sickTotal,
        sickBalance: sickBalance ?? this.sickBalance,
        sickUsed: sickUsed ?? this.sickUsed,
        sickValuePerMonth: sickValuePerMonth ?? this.sickValuePerMonth,
        incentiveTotal: incentiveTotal ?? this.incentiveTotal,
        incentiveBalance: incentiveBalance ?? this.incentiveBalance,
        incentiveUsed: incentiveUsed ?? this.incentiveUsed,
        incentiveValueLimit: incentiveValueLimit ?? this.incentiveValueLimit,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('VacationsTableData(')
          ..write('id: $id, ')
          ..write('eligibleTotal: $eligibleTotal, ')
          ..write('eligibleBalance: $eligibleBalance, ')
          ..write('eligibleUsed: $eligibleUsed, ')
          ..write('eligibleValuePerMonth: $eligibleValuePerMonth, ')
          ..write('sickTotal: $sickTotal, ')
          ..write('sickBalance: $sickBalance, ')
          ..write('sickUsed: $sickUsed, ')
          ..write('sickValuePerMonth: $sickValuePerMonth, ')
          ..write('incentiveTotal: $incentiveTotal, ')
          ..write('incentiveBalance: $incentiveBalance, ')
          ..write('incentiveUsed: $incentiveUsed, ')
          ..write('incentiveValueLimit: $incentiveValueLimit, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      eligibleTotal,
      eligibleBalance,
      eligibleUsed,
      eligibleValuePerMonth,
      sickTotal,
      sickBalance,
      sickUsed,
      sickValuePerMonth,
      incentiveTotal,
      incentiveBalance,
      incentiveUsed,
      incentiveValueLimit,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VacationsTableData &&
          other.id == this.id &&
          other.eligibleTotal == this.eligibleTotal &&
          other.eligibleBalance == this.eligibleBalance &&
          other.eligibleUsed == this.eligibleUsed &&
          other.eligibleValuePerMonth == this.eligibleValuePerMonth &&
          other.sickTotal == this.sickTotal &&
          other.sickBalance == this.sickBalance &&
          other.sickUsed == this.sickUsed &&
          other.sickValuePerMonth == this.sickValuePerMonth &&
          other.incentiveTotal == this.incentiveTotal &&
          other.incentiveBalance == this.incentiveBalance &&
          other.incentiveUsed == this.incentiveUsed &&
          other.incentiveValueLimit == this.incentiveValueLimit &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class VacationsTableCompanion extends UpdateCompanion<VacationsTableData> {
  final Value<int?> id;
  final Value<double?> eligibleTotal;
  final Value<double> eligibleBalance;
  final Value<double> eligibleUsed;
  final Value<double?> eligibleValuePerMonth;
  final Value<double?> sickTotal;
  final Value<double> sickBalance;
  final Value<double> sickUsed;
  final Value<double?> sickValuePerMonth;
  final Value<double?> incentiveTotal;
  final Value<double?> incentiveBalance;
  final Value<double?> incentiveUsed;
  final Value<double?> incentiveValueLimit;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const VacationsTableCompanion({
    this.id = const Value.absent(),
    this.eligibleTotal = const Value.absent(),
    this.eligibleBalance = const Value.absent(),
    this.eligibleUsed = const Value.absent(),
    this.eligibleValuePerMonth = const Value.absent(),
    this.sickTotal = const Value.absent(),
    this.sickBalance = const Value.absent(),
    this.sickUsed = const Value.absent(),
    this.sickValuePerMonth = const Value.absent(),
    this.incentiveTotal = const Value.absent(),
    this.incentiveBalance = const Value.absent(),
    this.incentiveUsed = const Value.absent(),
    this.incentiveValueLimit = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  VacationsTableCompanion.insert({
    this.id = const Value.absent(),
    this.eligibleTotal = const Value.absent(),
    required double eligibleBalance,
    required double eligibleUsed,
    this.eligibleValuePerMonth = const Value.absent(),
    this.sickTotal = const Value.absent(),
    required double sickBalance,
    required double sickUsed,
    this.sickValuePerMonth = const Value.absent(),
    this.incentiveTotal = const Value.absent(),
    this.incentiveBalance = const Value.absent(),
    this.incentiveUsed = const Value.absent(),
    this.incentiveValueLimit = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : eligibleBalance = Value(eligibleBalance),
        eligibleUsed = Value(eligibleUsed),
        sickBalance = Value(sickBalance),
        sickUsed = Value(sickUsed);
  static Insertable<VacationsTableData> custom({
    Expression<int?>? id,
    Expression<double?>? eligibleTotal,
    Expression<double>? eligibleBalance,
    Expression<double>? eligibleUsed,
    Expression<double?>? eligibleValuePerMonth,
    Expression<double?>? sickTotal,
    Expression<double>? sickBalance,
    Expression<double>? sickUsed,
    Expression<double?>? sickValuePerMonth,
    Expression<double?>? incentiveTotal,
    Expression<double?>? incentiveBalance,
    Expression<double?>? incentiveUsed,
    Expression<double?>? incentiveValueLimit,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (eligibleTotal != null) 'eligible_total': eligibleTotal,
      if (eligibleBalance != null) 'eligible_balance': eligibleBalance,
      if (eligibleUsed != null) 'eligible_used': eligibleUsed,
      if (eligibleValuePerMonth != null)
        'eligible_value_per_month': eligibleValuePerMonth,
      if (sickTotal != null) 'sick_total': sickTotal,
      if (sickBalance != null) 'sick_balance': sickBalance,
      if (sickUsed != null) 'sick_used': sickUsed,
      if (sickValuePerMonth != null) 'sick_value_per_month': sickValuePerMonth,
      if (incentiveTotal != null) 'incentive_total': incentiveTotal,
      if (incentiveBalance != null) 'incentive_balance': incentiveBalance,
      if (incentiveUsed != null) 'incentive_used': incentiveUsed,
      if (incentiveValueLimit != null)
        'incentive_value_limit': incentiveValueLimit,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  VacationsTableCompanion copyWith(
      {Value<int?>? id,
      Value<double?>? eligibleTotal,
      Value<double>? eligibleBalance,
      Value<double>? eligibleUsed,
      Value<double?>? eligibleValuePerMonth,
      Value<double?>? sickTotal,
      Value<double>? sickBalance,
      Value<double>? sickUsed,
      Value<double?>? sickValuePerMonth,
      Value<double?>? incentiveTotal,
      Value<double?>? incentiveBalance,
      Value<double?>? incentiveUsed,
      Value<double?>? incentiveValueLimit,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return VacationsTableCompanion(
      id: id ?? this.id,
      eligibleTotal: eligibleTotal ?? this.eligibleTotal,
      eligibleBalance: eligibleBalance ?? this.eligibleBalance,
      eligibleUsed: eligibleUsed ?? this.eligibleUsed,
      eligibleValuePerMonth:
          eligibleValuePerMonth ?? this.eligibleValuePerMonth,
      sickTotal: sickTotal ?? this.sickTotal,
      sickBalance: sickBalance ?? this.sickBalance,
      sickUsed: sickUsed ?? this.sickUsed,
      sickValuePerMonth: sickValuePerMonth ?? this.sickValuePerMonth,
      incentiveTotal: incentiveTotal ?? this.incentiveTotal,
      incentiveBalance: incentiveBalance ?? this.incentiveBalance,
      incentiveUsed: incentiveUsed ?? this.incentiveUsed,
      incentiveValueLimit: incentiveValueLimit ?? this.incentiveValueLimit,
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
    if (eligibleTotal.present) {
      map['eligible_total'] = Variable<double?>(eligibleTotal.value);
    }
    if (eligibleBalance.present) {
      map['eligible_balance'] = Variable<double>(eligibleBalance.value);
    }
    if (eligibleUsed.present) {
      map['eligible_used'] = Variable<double>(eligibleUsed.value);
    }
    if (eligibleValuePerMonth.present) {
      map['eligible_value_per_month'] =
          Variable<double?>(eligibleValuePerMonth.value);
    }
    if (sickTotal.present) {
      map['sick_total'] = Variable<double?>(sickTotal.value);
    }
    if (sickBalance.present) {
      map['sick_balance'] = Variable<double>(sickBalance.value);
    }
    if (sickUsed.present) {
      map['sick_used'] = Variable<double>(sickUsed.value);
    }
    if (sickValuePerMonth.present) {
      map['sick_value_per_month'] = Variable<double?>(sickValuePerMonth.value);
    }
    if (incentiveTotal.present) {
      map['incentive_total'] = Variable<double?>(incentiveTotal.value);
    }
    if (incentiveBalance.present) {
      map['incentive_balance'] = Variable<double?>(incentiveBalance.value);
    }
    if (incentiveUsed.present) {
      map['incentive_used'] = Variable<double?>(incentiveUsed.value);
    }
    if (incentiveValueLimit.present) {
      map['incentive_value_limit'] =
          Variable<double?>(incentiveValueLimit.value);
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
    return (StringBuffer('VacationsTableCompanion(')
          ..write('id: $id, ')
          ..write('eligibleTotal: $eligibleTotal, ')
          ..write('eligibleBalance: $eligibleBalance, ')
          ..write('eligibleUsed: $eligibleUsed, ')
          ..write('eligibleValuePerMonth: $eligibleValuePerMonth, ')
          ..write('sickTotal: $sickTotal, ')
          ..write('sickBalance: $sickBalance, ')
          ..write('sickUsed: $sickUsed, ')
          ..write('sickValuePerMonth: $sickValuePerMonth, ')
          ..write('incentiveTotal: $incentiveTotal, ')
          ..write('incentiveBalance: $incentiveBalance, ')
          ..write('incentiveUsed: $incentiveUsed, ')
          ..write('incentiveValueLimit: $incentiveValueLimit, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $VacationsTableTable extends VacationsTable
    with TableInfo<$VacationsTableTable, VacationsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VacationsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _eligibleTotalMeta =
      const VerificationMeta('eligibleTotal');
  @override
  late final GeneratedColumn<double?> eligibleTotal = GeneratedColumn<double?>(
      'eligible_total', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _eligibleBalanceMeta =
      const VerificationMeta('eligibleBalance');
  @override
  late final GeneratedColumn<double?> eligibleBalance =
      GeneratedColumn<double?>('eligible_balance', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _eligibleUsedMeta =
      const VerificationMeta('eligibleUsed');
  @override
  late final GeneratedColumn<double?> eligibleUsed = GeneratedColumn<double?>(
      'eligible_used', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _eligibleValuePerMonthMeta =
      const VerificationMeta('eligibleValuePerMonth');
  @override
  late final GeneratedColumn<double?> eligibleValuePerMonth =
      GeneratedColumn<double?>('eligible_value_per_month', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _sickTotalMeta = const VerificationMeta('sickTotal');
  @override
  late final GeneratedColumn<double?> sickTotal = GeneratedColumn<double?>(
      'sick_total', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _sickBalanceMeta =
      const VerificationMeta('sickBalance');
  @override
  late final GeneratedColumn<double?> sickBalance = GeneratedColumn<double?>(
      'sick_balance', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _sickUsedMeta = const VerificationMeta('sickUsed');
  @override
  late final GeneratedColumn<double?> sickUsed = GeneratedColumn<double?>(
      'sick_used', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _sickValuePerMonthMeta =
      const VerificationMeta('sickValuePerMonth');
  @override
  late final GeneratedColumn<double?> sickValuePerMonth =
      GeneratedColumn<double?>('sick_value_per_month', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _incentiveTotalMeta =
      const VerificationMeta('incentiveTotal');
  @override
  late final GeneratedColumn<double?> incentiveTotal = GeneratedColumn<double?>(
      'incentive_total', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _incentiveBalanceMeta =
      const VerificationMeta('incentiveBalance');
  @override
  late final GeneratedColumn<double?> incentiveBalance =
      GeneratedColumn<double?>('incentive_balance', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _incentiveUsedMeta =
      const VerificationMeta('incentiveUsed');
  @override
  late final GeneratedColumn<double?> incentiveUsed = GeneratedColumn<double?>(
      'incentive_used', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _incentiveValueLimitMeta =
      const VerificationMeta('incentiveValueLimit');
  @override
  late final GeneratedColumn<double?> incentiveValueLimit =
      GeneratedColumn<double?>('incentive_value_limit', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
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
        eligibleTotal,
        eligibleBalance,
        eligibleUsed,
        eligibleValuePerMonth,
        sickTotal,
        sickBalance,
        sickUsed,
        sickValuePerMonth,
        incentiveTotal,
        incentiveBalance,
        incentiveUsed,
        incentiveValueLimit,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'vacations_table';
  @override
  String get actualTableName => 'vacations_table';
  @override
  VerificationContext validateIntegrity(Insertable<VacationsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('eligible_total')) {
      context.handle(
          _eligibleTotalMeta,
          eligibleTotal.isAcceptableOrUnknown(
              data['eligible_total']!, _eligibleTotalMeta));
    }
    if (data.containsKey('eligible_balance')) {
      context.handle(
          _eligibleBalanceMeta,
          eligibleBalance.isAcceptableOrUnknown(
              data['eligible_balance']!, _eligibleBalanceMeta));
    } else if (isInserting) {
      context.missing(_eligibleBalanceMeta);
    }
    if (data.containsKey('eligible_used')) {
      context.handle(
          _eligibleUsedMeta,
          eligibleUsed.isAcceptableOrUnknown(
              data['eligible_used']!, _eligibleUsedMeta));
    } else if (isInserting) {
      context.missing(_eligibleUsedMeta);
    }
    if (data.containsKey('eligible_value_per_month')) {
      context.handle(
          _eligibleValuePerMonthMeta,
          eligibleValuePerMonth.isAcceptableOrUnknown(
              data['eligible_value_per_month']!, _eligibleValuePerMonthMeta));
    }
    if (data.containsKey('sick_total')) {
      context.handle(_sickTotalMeta,
          sickTotal.isAcceptableOrUnknown(data['sick_total']!, _sickTotalMeta));
    }
    if (data.containsKey('sick_balance')) {
      context.handle(
          _sickBalanceMeta,
          sickBalance.isAcceptableOrUnknown(
              data['sick_balance']!, _sickBalanceMeta));
    } else if (isInserting) {
      context.missing(_sickBalanceMeta);
    }
    if (data.containsKey('sick_used')) {
      context.handle(_sickUsedMeta,
          sickUsed.isAcceptableOrUnknown(data['sick_used']!, _sickUsedMeta));
    } else if (isInserting) {
      context.missing(_sickUsedMeta);
    }
    if (data.containsKey('sick_value_per_month')) {
      context.handle(
          _sickValuePerMonthMeta,
          sickValuePerMonth.isAcceptableOrUnknown(
              data['sick_value_per_month']!, _sickValuePerMonthMeta));
    }
    if (data.containsKey('incentive_total')) {
      context.handle(
          _incentiveTotalMeta,
          incentiveTotal.isAcceptableOrUnknown(
              data['incentive_total']!, _incentiveTotalMeta));
    }
    if (data.containsKey('incentive_balance')) {
      context.handle(
          _incentiveBalanceMeta,
          incentiveBalance.isAcceptableOrUnknown(
              data['incentive_balance']!, _incentiveBalanceMeta));
    }
    if (data.containsKey('incentive_used')) {
      context.handle(
          _incentiveUsedMeta,
          incentiveUsed.isAcceptableOrUnknown(
              data['incentive_used']!, _incentiveUsedMeta));
    }
    if (data.containsKey('incentive_value_limit')) {
      context.handle(
          _incentiveValueLimitMeta,
          incentiveValueLimit.isAcceptableOrUnknown(
              data['incentive_value_limit']!, _incentiveValueLimitMeta));
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
  VacationsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return VacationsTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $VacationsTableTable createAlias(String alias) {
    return $VacationsTableTable(attachedDatabase, alias);
  }
}

class DailyVacationTableData extends DataClass
    implements Insertable<DailyVacationTableData> {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int amount;
  final String vacationType;
  final String? description;
  final int? vacations;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  DailyVacationTableData(
      {this.id,
      required this.startDate,
      required this.endDate,
      required this.amount,
      required this.vacationType,
      this.description,
      this.vacations,
      this.createdAt,
      this.updatedAt});
  factory DailyVacationTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DailyVacationTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      startDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date'])!,
      endDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date'])!,
      amount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      vacationType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vacation_type'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      vacations: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vacations']),
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
    map['vacation_type'] = Variable<String>(vacationType);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || vacations != null) {
      map['vacations'] = Variable<int?>(vacations);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  DailyVacationTableCompanion toCompanion(bool nullToAbsent) {
    return DailyVacationTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      startDate: Value(startDate),
      endDate: Value(endDate),
      amount: Value(amount),
      vacationType: Value(vacationType),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      vacations: vacations == null && nullToAbsent
          ? const Value.absent()
          : Value(vacations),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory DailyVacationTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailyVacationTableData(
      id: serializer.fromJson<int?>(json['id']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime>(json['endDate']),
      amount: serializer.fromJson<int>(json['amount']),
      vacationType: serializer.fromJson<String>(json['vacationType']),
      description: serializer.fromJson<String?>(json['description']),
      vacations: serializer.fromJson<int?>(json['vacations']),
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
      'vacationType': serializer.toJson<String>(vacationType),
      'description': serializer.toJson<String?>(description),
      'vacations': serializer.toJson<int?>(vacations),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  DailyVacationTableData copyWith(
          {int? id,
          DateTime? startDate,
          DateTime? endDate,
          int? amount,
          String? vacationType,
          String? description,
          int? vacations,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      DailyVacationTableData(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        amount: amount ?? this.amount,
        vacationType: vacationType ?? this.vacationType,
        description: description ?? this.description,
        vacations: vacations ?? this.vacations,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('DailyVacationTableData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('amount: $amount, ')
          ..write('vacationType: $vacationType, ')
          ..write('description: $description, ')
          ..write('vacations: $vacations, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, startDate, endDate, amount, vacationType,
      description, vacations, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyVacationTableData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.amount == this.amount &&
          other.vacationType == this.vacationType &&
          other.description == this.description &&
          other.vacations == this.vacations &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class DailyVacationTableCompanion
    extends UpdateCompanion<DailyVacationTableData> {
  final Value<int?> id;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<int> amount;
  final Value<String> vacationType;
  final Value<String?> description;
  final Value<int?> vacations;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const DailyVacationTableCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.amount = const Value.absent(),
    this.vacationType = const Value.absent(),
    this.description = const Value.absent(),
    this.vacations = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DailyVacationTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startDate,
    required DateTime endDate,
    required int amount,
    required String vacationType,
    this.description = const Value.absent(),
    this.vacations = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : startDate = Value(startDate),
        endDate = Value(endDate),
        amount = Value(amount),
        vacationType = Value(vacationType);
  static Insertable<DailyVacationTableData> custom({
    Expression<int?>? id,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<int>? amount,
    Expression<String>? vacationType,
    Expression<String?>? description,
    Expression<int?>? vacations,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (amount != null) 'amount': amount,
      if (vacationType != null) 'vacation_type': vacationType,
      if (description != null) 'description': description,
      if (vacations != null) 'vacations': vacations,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  DailyVacationTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime>? startDate,
      Value<DateTime>? endDate,
      Value<int>? amount,
      Value<String>? vacationType,
      Value<String?>? description,
      Value<int?>? vacations,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return DailyVacationTableCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      amount: amount ?? this.amount,
      vacationType: vacationType ?? this.vacationType,
      description: description ?? this.description,
      vacations: vacations ?? this.vacations,
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
    if (vacationType.present) {
      map['vacation_type'] = Variable<String>(vacationType.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (vacations.present) {
      map['vacations'] = Variable<int?>(vacations.value);
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
    return (StringBuffer('DailyVacationTableCompanion(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('amount: $amount, ')
          ..write('vacationType: $vacationType, ')
          ..write('description: $description, ')
          ..write('vacations: $vacations, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $DailyVacationTableTable extends DailyVacationTable
    with TableInfo<$DailyVacationTableTable, DailyVacationTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DailyVacationTableTable(this.attachedDatabase, [this._alias]);
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
  final VerificationMeta _vacationTypeMeta =
      const VerificationMeta('vacationType');
  @override
  late final GeneratedColumn<String?> vacationType = GeneratedColumn<String?>(
      'vacation_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _vacationsMeta = const VerificationMeta('vacations');
  @override
  late final GeneratedColumn<int?> vacations = GeneratedColumn<int?>(
      'vacations', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES vacations_table (id)');
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
        endDate,
        amount,
        vacationType,
        description,
        vacations,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'daily_vacation_table';
  @override
  String get actualTableName => 'daily_vacation_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DailyVacationTableData> instance,
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
    if (data.containsKey('vacation_type')) {
      context.handle(
          _vacationTypeMeta,
          vacationType.isAcceptableOrUnknown(
              data['vacation_type']!, _vacationTypeMeta));
    } else if (isInserting) {
      context.missing(_vacationTypeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('vacations')) {
      context.handle(_vacationsMeta,
          vacations.isAcceptableOrUnknown(data['vacations']!, _vacationsMeta));
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
  DailyVacationTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DailyVacationTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DailyVacationTableTable createAlias(String alias) {
    return $DailyVacationTableTable(attachedDatabase, alias);
  }
}

class ViolationsOvertimeTableData extends DataClass
    implements Insertable<ViolationsOvertimeTableData> {
  final int? id;
  final String violationType;
  final int overtime;
  final int forgivenessOvertime;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  ViolationsOvertimeTableData(
      {this.id,
      required this.violationType,
      required this.overtime,
      required this.forgivenessOvertime,
      this.description,
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
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
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
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
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
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
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
      description: serializer.fromJson<String?>(json['description']),
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
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  ViolationsOvertimeTableData copyWith(
          {int? id,
          String? violationType,
          int? overtime,
          int? forgivenessOvertime,
          String? description,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      ViolationsOvertimeTableData(
        id: id ?? this.id,
        violationType: violationType ?? this.violationType,
        overtime: overtime ?? this.overtime,
        forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
        description: description ?? this.description,
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
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, violationType, overtime,
      forgivenessOvertime, description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ViolationsOvertimeTableData &&
          other.id == this.id &&
          other.violationType == this.violationType &&
          other.overtime == this.overtime &&
          other.forgivenessOvertime == this.forgivenessOvertime &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ViolationsOvertimeTableCompanion
    extends UpdateCompanion<ViolationsOvertimeTableData> {
  final Value<int?> id;
  final Value<String> violationType;
  final Value<int> overtime;
  final Value<int> forgivenessOvertime;
  final Value<String?> description;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const ViolationsOvertimeTableCompanion({
    this.id = const Value.absent(),
    this.violationType = const Value.absent(),
    this.overtime = const Value.absent(),
    this.forgivenessOvertime = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ViolationsOvertimeTableCompanion.insert({
    this.id = const Value.absent(),
    required String violationType,
    required int overtime,
    required int forgivenessOvertime,
    this.description = const Value.absent(),
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
    Expression<String?>? description,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (violationType != null) 'violation_type': violationType,
      if (overtime != null) 'overtime': overtime,
      if (forgivenessOvertime != null)
        'forgiveness_overtime': forgivenessOvertime,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ViolationsOvertimeTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? violationType,
      Value<int>? overtime,
      Value<int>? forgivenessOvertime,
      Value<String?>? description,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return ViolationsOvertimeTableCompanion(
      id: id ?? this.id,
      violationType: violationType ?? this.violationType,
      overtime: overtime ?? this.overtime,
      forgivenessOvertime: forgivenessOvertime ?? this.forgivenessOvertime,
      description: description ?? this.description,
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
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
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
          ..write('description: $description, ')
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
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
        violationType,
        overtime,
        forgivenessOvertime,
        description,
        createdAt,
        updatedAt
      ];
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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

class DisciplinaryOvertimeTableData extends DataClass
    implements Insertable<DisciplinaryOvertimeTableData> {
  final int? id;
  final int calculatedOvertime;
  final int? violationsOvertimes;
  final int? dailyAbsenceOvertimes;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  DisciplinaryOvertimeTableData(
      {this.id,
      required this.calculatedOvertime,
      this.violationsOvertimes,
      this.dailyAbsenceOvertimes,
      this.createdAt,
      this.updatedAt});
  factory DisciplinaryOvertimeTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DisciplinaryOvertimeTableData(
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

  DisciplinaryOvertimeTableCompanion toCompanion(bool nullToAbsent) {
    return DisciplinaryOvertimeTableCompanion(
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

  factory DisciplinaryOvertimeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DisciplinaryOvertimeTableData(
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

  DisciplinaryOvertimeTableData copyWith(
          {int? id,
          int? calculatedOvertime,
          int? violationsOvertimes,
          int? dailyAbsenceOvertimes,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      DisciplinaryOvertimeTableData(
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
    return (StringBuffer('DisciplinaryOvertimeTableData(')
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
      (other is DisciplinaryOvertimeTableData &&
          other.id == this.id &&
          other.calculatedOvertime == this.calculatedOvertime &&
          other.violationsOvertimes == this.violationsOvertimes &&
          other.dailyAbsenceOvertimes == this.dailyAbsenceOvertimes &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class DisciplinaryOvertimeTableCompanion
    extends UpdateCompanion<DisciplinaryOvertimeTableData> {
  final Value<int?> id;
  final Value<int> calculatedOvertime;
  final Value<int?> violationsOvertimes;
  final Value<int?> dailyAbsenceOvertimes;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const DisciplinaryOvertimeTableCompanion({
    this.id = const Value.absent(),
    this.calculatedOvertime = const Value.absent(),
    this.violationsOvertimes = const Value.absent(),
    this.dailyAbsenceOvertimes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DisciplinaryOvertimeTableCompanion.insert({
    this.id = const Value.absent(),
    required int calculatedOvertime,
    this.violationsOvertimes = const Value.absent(),
    this.dailyAbsenceOvertimes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : calculatedOvertime = Value(calculatedOvertime);
  static Insertable<DisciplinaryOvertimeTableData> custom({
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

  DisciplinaryOvertimeTableCompanion copyWith(
      {Value<int?>? id,
      Value<int>? calculatedOvertime,
      Value<int?>? violationsOvertimes,
      Value<int?>? dailyAbsenceOvertimes,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return DisciplinaryOvertimeTableCompanion(
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
    return (StringBuffer('DisciplinaryOvertimeTableCompanion(')
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

class $DisciplinaryOvertimeTableTable extends DisciplinaryOvertimeTable
    with
        TableInfo<$DisciplinaryOvertimeTableTable,
            DisciplinaryOvertimeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DisciplinaryOvertimeTableTable(this.attachedDatabase, [this._alias]);
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
          defaultConstraints: 'REFERENCES daily_absence_overtime_table (id)');
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
  String get aliasedName => _alias ?? 'disciplinary_overtime_table';
  @override
  String get actualTableName => 'disciplinary_overtime_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DisciplinaryOvertimeTableData> instance,
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
  DisciplinaryOvertimeTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return DisciplinaryOvertimeTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DisciplinaryOvertimeTableTable createAlias(String alias) {
    return $DisciplinaryOvertimeTableTable(attachedDatabase, alias);
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
  final int? numberOfChildren;
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
      this.numberOfChildren,
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
      numberOfChildren: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}number_of_children']),
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
    if (!nullToAbsent || numberOfChildren != null) {
      map['number_of_children'] = Variable<int?>(numberOfChildren);
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
      numberOfChildren: numberOfChildren == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfChildren),
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
      numberOfChildren: serializer.fromJson<int?>(json['numberOfChildren']),
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
      'numberOfChildren': serializer.toJson<int?>(numberOfChildren),
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
          int? numberOfChildren,
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
        numberOfChildren: numberOfChildren ?? this.numberOfChildren,
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
          ..write('numberOfChildren: $numberOfChildren, ')
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
      numberOfChildren,
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
          other.numberOfChildren == this.numberOfChildren &&
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
  final Value<int?> numberOfChildren;
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
    this.numberOfChildren = const Value.absent(),
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
    this.numberOfChildren = const Value.absent(),
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
    Expression<int?>? numberOfChildren,
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
      if (numberOfChildren != null) 'number_of_children': numberOfChildren,
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
      Value<int?>? numberOfChildren,
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
      numberOfChildren: numberOfChildren ?? this.numberOfChildren,
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
    if (numberOfChildren.present) {
      map['number_of_children'] = Variable<int?>(numberOfChildren.value);
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
          ..write('numberOfChildren: $numberOfChildren, ')
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
  final VerificationMeta _numberOfChildrenMeta =
      const VerificationMeta('numberOfChildren');
  @override
  late final GeneratedColumn<int?> numberOfChildren = GeneratedColumn<int?>(
      'number_of_children', aliasedName, true,
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
        numberOfChildren,
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
    if (data.containsKey('number_of_children')) {
      context.handle(
          _numberOfChildrenMeta,
          numberOfChildren.isAcceptableOrUnknown(
              data['number_of_children']!, _numberOfChildrenMeta));
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
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  HealthStatusTableData(
      {this.id,
      required this.isHealthy,
      required this.accordingTo,
      required this.isBGroup,
      this.description,
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
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
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
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
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
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
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
      description: serializer.fromJson<String?>(json['description']),
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
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  HealthStatusTableData copyWith(
          {int? id,
          bool? isHealthy,
          String? accordingTo,
          bool? isBGroup,
          String? description,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      HealthStatusTableData(
        id: id ?? this.id,
        isHealthy: isHealthy ?? this.isHealthy,
        accordingTo: accordingTo ?? this.accordingTo,
        isBGroup: isBGroup ?? this.isBGroup,
        description: description ?? this.description,
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
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, isHealthy, accordingTo, isBGroup, description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HealthStatusTableData &&
          other.id == this.id &&
          other.isHealthy == this.isHealthy &&
          other.accordingTo == this.accordingTo &&
          other.isBGroup == this.isBGroup &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class HealthStatusTableCompanion
    extends UpdateCompanion<HealthStatusTableData> {
  final Value<int?> id;
  final Value<bool> isHealthy;
  final Value<String> accordingTo;
  final Value<bool> isBGroup;
  final Value<String?> description;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const HealthStatusTableCompanion({
    this.id = const Value.absent(),
    this.isHealthy = const Value.absent(),
    this.accordingTo = const Value.absent(),
    this.isBGroup = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  HealthStatusTableCompanion.insert({
    this.id = const Value.absent(),
    required bool isHealthy,
    required String accordingTo,
    required bool isBGroup,
    this.description = const Value.absent(),
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
    Expression<String?>? description,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isHealthy != null) 'is_healthy': isHealthy,
      if (accordingTo != null) 'according_to': accordingTo,
      if (isBGroup != null) 'is_b_group': isBGroup,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  HealthStatusTableCompanion copyWith(
      {Value<int?>? id,
      Value<bool>? isHealthy,
      Value<String>? accordingTo,
      Value<bool>? isBGroup,
      Value<String?>? description,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return HealthStatusTableCompanion(
      id: id ?? this.id,
      isHealthy: isHealthy ?? this.isHealthy,
      accordingTo: accordingTo ?? this.accordingTo,
      isBGroup: isBGroup ?? this.isBGroup,
      description: description ?? this.description,
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
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
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
          ..write('description: $description, ')
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
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
      [id, isHealthy, accordingTo, isBGroup, description, createdAt, updatedAt];
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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

class HourlyVacationTableData extends DataClass
    implements Insertable<HourlyVacationTableData> {
  final int? id;
  final DateTime startTime;
  final DateTime endTime;
  final int? totalTime;
  final int? overtimePerMonth;
  final String? description;
  final int vacations;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  HourlyVacationTableData(
      {this.id,
      required this.startTime,
      required this.endTime,
      this.totalTime,
      this.overtimePerMonth,
      this.description,
      required this.vacations,
      this.createdAt,
      this.updatedAt});
  factory HourlyVacationTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return HourlyVacationTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      startTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_time'])!,
      endTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_time'])!,
      totalTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}total_time']),
      overtimePerMonth: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}overtime_per_month']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      vacations: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vacations'])!,
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
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    map['vacations'] = Variable<int>(vacations);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  HourlyVacationTableCompanion toCompanion(bool nullToAbsent) {
    return HourlyVacationTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      startTime: Value(startTime),
      endTime: Value(endTime),
      totalTime: totalTime == null && nullToAbsent
          ? const Value.absent()
          : Value(totalTime),
      overtimePerMonth: overtimePerMonth == null && nullToAbsent
          ? const Value.absent()
          : Value(overtimePerMonth),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      vacations: Value(vacations),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory HourlyVacationTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HourlyVacationTableData(
      id: serializer.fromJson<int?>(json['id']),
      startTime: serializer.fromJson<DateTime>(json['startTime']),
      endTime: serializer.fromJson<DateTime>(json['endTime']),
      totalTime: serializer.fromJson<int?>(json['totalTime']),
      overtimePerMonth: serializer.fromJson<int?>(json['overtimePerMonth']),
      description: serializer.fromJson<String?>(json['description']),
      vacations: serializer.fromJson<int>(json['vacations']),
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
      'description': serializer.toJson<String?>(description),
      'vacations': serializer.toJson<int>(vacations),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  HourlyVacationTableData copyWith(
          {int? id,
          DateTime? startTime,
          DateTime? endTime,
          int? totalTime,
          int? overtimePerMonth,
          String? description,
          int? vacations,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      HourlyVacationTableData(
        id: id ?? this.id,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        totalTime: totalTime ?? this.totalTime,
        overtimePerMonth: overtimePerMonth ?? this.overtimePerMonth,
        description: description ?? this.description,
        vacations: vacations ?? this.vacations,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('HourlyVacationTableData(')
          ..write('id: $id, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('totalTime: $totalTime, ')
          ..write('overtimePerMonth: $overtimePerMonth, ')
          ..write('description: $description, ')
          ..write('vacations: $vacations, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, startTime, endTime, totalTime,
      overtimePerMonth, description, vacations, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HourlyVacationTableData &&
          other.id == this.id &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.totalTime == this.totalTime &&
          other.overtimePerMonth == this.overtimePerMonth &&
          other.description == this.description &&
          other.vacations == this.vacations &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class HourlyVacationTableCompanion
    extends UpdateCompanion<HourlyVacationTableData> {
  final Value<int?> id;
  final Value<DateTime> startTime;
  final Value<DateTime> endTime;
  final Value<int?> totalTime;
  final Value<int?> overtimePerMonth;
  final Value<String?> description;
  final Value<int> vacations;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const HourlyVacationTableCompanion({
    this.id = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.totalTime = const Value.absent(),
    this.overtimePerMonth = const Value.absent(),
    this.description = const Value.absent(),
    this.vacations = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  HourlyVacationTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startTime,
    required DateTime endTime,
    this.totalTime = const Value.absent(),
    this.overtimePerMonth = const Value.absent(),
    this.description = const Value.absent(),
    required int vacations,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : startTime = Value(startTime),
        endTime = Value(endTime),
        vacations = Value(vacations);
  static Insertable<HourlyVacationTableData> custom({
    Expression<int?>? id,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
    Expression<int?>? totalTime,
    Expression<int?>? overtimePerMonth,
    Expression<String?>? description,
    Expression<int>? vacations,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (totalTime != null) 'total_time': totalTime,
      if (overtimePerMonth != null) 'overtime_per_month': overtimePerMonth,
      if (description != null) 'description': description,
      if (vacations != null) 'vacations': vacations,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  HourlyVacationTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime>? startTime,
      Value<DateTime>? endTime,
      Value<int?>? totalTime,
      Value<int?>? overtimePerMonth,
      Value<String?>? description,
      Value<int>? vacations,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return HourlyVacationTableCompanion(
      id: id ?? this.id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      totalTime: totalTime ?? this.totalTime,
      overtimePerMonth: overtimePerMonth ?? this.overtimePerMonth,
      description: description ?? this.description,
      vacations: vacations ?? this.vacations,
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
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (vacations.present) {
      map['vacations'] = Variable<int>(vacations.value);
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
    return (StringBuffer('HourlyVacationTableCompanion(')
          ..write('id: $id, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('totalTime: $totalTime, ')
          ..write('overtimePerMonth: $overtimePerMonth, ')
          ..write('description: $description, ')
          ..write('vacations: $vacations, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $HourlyVacationTableTable extends HourlyVacationTable
    with TableInfo<$HourlyVacationTableTable, HourlyVacationTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HourlyVacationTableTable(this.attachedDatabase, [this._alias]);
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _vacationsMeta = const VerificationMeta('vacations');
  @override
  late final GeneratedColumn<int?> vacations = GeneratedColumn<int?>(
      'vacations', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES vacations_table (id)');
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
        description,
        vacations,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'hourly_vacation_table';
  @override
  String get actualTableName => 'hourly_vacation_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<HourlyVacationTableData> instance,
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('vacations')) {
      context.handle(_vacationsMeta,
          vacations.isAcceptableOrUnknown(data['vacations']!, _vacationsMeta));
    } else if (isInserting) {
      context.missing(_vacationsMeta);
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
  HourlyVacationTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return HourlyVacationTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HourlyVacationTableTable createAlias(String alias) {
    return $HourlyVacationTableTable(attachedDatabase, alias);
  }
}

class OperationalServiceDeficitRecordTableData extends DataClass
    implements Insertable<OperationalServiceDeficitRecordTableData> {
  final int? id;
  final DateTime startDate;
  final DateTime endDate;
  final int durationOfPresence;
  final int? deficitAmount;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  OperationalServiceDeficitRecordTableData(
      {this.id,
      required this.startDate,
      required this.endDate,
      required this.durationOfPresence,
      this.deficitAmount,
      this.description,
      this.createdAt,
      this.updatedAt});
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
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
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
    map['duration_of_presence'] = Variable<int>(durationOfPresence);
    if (!nullToAbsent || deficitAmount != null) {
      map['deficit_amount'] = Variable<int?>(deficitAmount);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
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
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
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
      description: serializer.fromJson<String?>(json['description']),
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
      'durationOfPresence': serializer.toJson<int>(durationOfPresence),
      'deficitAmount': serializer.toJson<int?>(deficitAmount),
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  OperationalServiceDeficitRecordTableData copyWith(
          {int? id,
          DateTime? startDate,
          DateTime? endDate,
          int? durationOfPresence,
          int? deficitAmount,
          String? description,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      OperationalServiceDeficitRecordTableData(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        durationOfPresence: durationOfPresence ?? this.durationOfPresence,
        deficitAmount: deficitAmount ?? this.deficitAmount,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('OperationalServiceDeficitRecordTableData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('durationOfPresence: $durationOfPresence, ')
          ..write('deficitAmount: $deficitAmount, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, startDate, endDate, durationOfPresence,
      deficitAmount, description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OperationalServiceDeficitRecordTableData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.durationOfPresence == this.durationOfPresence &&
          other.deficitAmount == this.deficitAmount &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class OperationalServiceDeficitRecordTableCompanion
    extends UpdateCompanion<OperationalServiceDeficitRecordTableData> {
  final Value<int?> id;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<int> durationOfPresence;
  final Value<int?> deficitAmount;
  final Value<String?> description;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const OperationalServiceDeficitRecordTableCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.durationOfPresence = const Value.absent(),
    this.deficitAmount = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  OperationalServiceDeficitRecordTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startDate,
    required DateTime endDate,
    required int durationOfPresence,
    this.deficitAmount = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : startDate = Value(startDate),
        endDate = Value(endDate),
        durationOfPresence = Value(durationOfPresence);
  static Insertable<OperationalServiceDeficitRecordTableData> custom({
    Expression<int?>? id,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<int>? durationOfPresence,
    Expression<int?>? deficitAmount,
    Expression<String?>? description,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (durationOfPresence != null)
        'duration_of_presence': durationOfPresence,
      if (deficitAmount != null) 'deficit_amount': deficitAmount,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  OperationalServiceDeficitRecordTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime>? startDate,
      Value<DateTime>? endDate,
      Value<int>? durationOfPresence,
      Value<int?>? deficitAmount,
      Value<String?>? description,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return OperationalServiceDeficitRecordTableCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      durationOfPresence: durationOfPresence ?? this.durationOfPresence,
      deficitAmount: deficitAmount ?? this.deficitAmount,
      description: description ?? this.description,
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
    if (durationOfPresence.present) {
      map['duration_of_presence'] = Variable<int>(durationOfPresence.value);
    }
    if (deficitAmount.present) {
      map['deficit_amount'] = Variable<int?>(deficitAmount.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
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
    return (StringBuffer('OperationalServiceDeficitRecordTableCompanion(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('durationOfPresence: $durationOfPresence, ')
          ..write('deficitAmount: $deficitAmount, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
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
        startDate,
        endDate,
        durationOfPresence,
        deficitAmount,
        description,
        createdAt,
        updatedAt
      ];
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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
  final int? disciplinaryOvertime;
  final int? annualOvertime;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  OvertimeTableData(
      {this.id,
      this.disciplinaryOvertime,
      this.annualOvertime,
      this.createdAt,
      this.updatedAt});
  factory OvertimeTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OvertimeTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      disciplinaryOvertime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}disciplinary_overtime']),
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
    if (!nullToAbsent || disciplinaryOvertime != null) {
      map['disciplinary_overtime'] = Variable<int?>(disciplinaryOvertime);
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
      disciplinaryOvertime: disciplinaryOvertime == null && nullToAbsent
          ? const Value.absent()
          : Value(disciplinaryOvertime),
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
      disciplinaryOvertime:
          serializer.fromJson<int?>(json['disciplinaryOvertime']),
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
      'disciplinaryOvertime': serializer.toJson<int?>(disciplinaryOvertime),
      'annualOvertime': serializer.toJson<int?>(annualOvertime),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  OvertimeTableData copyWith(
          {int? id,
          int? disciplinaryOvertime,
          int? annualOvertime,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      OvertimeTableData(
        id: id ?? this.id,
        disciplinaryOvertime: disciplinaryOvertime ?? this.disciplinaryOvertime,
        annualOvertime: annualOvertime ?? this.annualOvertime,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('OvertimeTableData(')
          ..write('id: $id, ')
          ..write('disciplinaryOvertime: $disciplinaryOvertime, ')
          ..write('annualOvertime: $annualOvertime, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, disciplinaryOvertime, annualOvertime, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OvertimeTableData &&
          other.id == this.id &&
          other.disciplinaryOvertime == this.disciplinaryOvertime &&
          other.annualOvertime == this.annualOvertime &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class OvertimeTableCompanion extends UpdateCompanion<OvertimeTableData> {
  final Value<int?> id;
  final Value<int?> disciplinaryOvertime;
  final Value<int?> annualOvertime;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const OvertimeTableCompanion({
    this.id = const Value.absent(),
    this.disciplinaryOvertime = const Value.absent(),
    this.annualOvertime = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  OvertimeTableCompanion.insert({
    this.id = const Value.absent(),
    this.disciplinaryOvertime = const Value.absent(),
    this.annualOvertime = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<OvertimeTableData> custom({
    Expression<int?>? id,
    Expression<int?>? disciplinaryOvertime,
    Expression<int?>? annualOvertime,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (disciplinaryOvertime != null)
        'disciplinary_overtime': disciplinaryOvertime,
      if (annualOvertime != null) 'annual_overtime': annualOvertime,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  OvertimeTableCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? disciplinaryOvertime,
      Value<int?>? annualOvertime,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return OvertimeTableCompanion(
      id: id ?? this.id,
      disciplinaryOvertime: disciplinaryOvertime ?? this.disciplinaryOvertime,
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
    if (disciplinaryOvertime.present) {
      map['disciplinary_overtime'] = Variable<int?>(disciplinaryOvertime.value);
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
          ..write('disciplinaryOvertime: $disciplinaryOvertime, ')
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
  final VerificationMeta _disciplinaryOvertimeMeta =
      const VerificationMeta('disciplinaryOvertime');
  @override
  late final GeneratedColumn<int?> disciplinaryOvertime = GeneratedColumn<int?>(
      'disciplinary_overtime', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES disciplinary_overtime_table (id)');
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
      [id, disciplinaryOvertime, annualOvertime, createdAt, updatedAt];
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
    if (data.containsKey('disciplinary_overtime')) {
      context.handle(
          _disciplinaryOvertimeMeta,
          disciplinaryOvertime.isAcceptableOrUnknown(
              data['disciplinary_overtime']!, _disciplinaryOvertimeMeta));
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

class CaseNoTableData extends DataClass implements Insertable<CaseNoTableData> {
  final int? id;
  final String caseName;
  final String? caseCode;
  final bool isFull;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  CaseNoTableData(
      {this.id,
      required this.caseName,
      this.caseCode,
      required this.isFull,
      this.description,
      this.createdAt,
      this.updatedAt});
  factory CaseNoTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CaseNoTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      caseName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}case_name'])!,
      caseCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}case_code']),
      isFull: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_full'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
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
    map['case_name'] = Variable<String>(caseName);
    if (!nullToAbsent || caseCode != null) {
      map['case_code'] = Variable<String?>(caseCode);
    }
    map['is_full'] = Variable<bool>(isFull);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  CaseNoTableCompanion toCompanion(bool nullToAbsent) {
    return CaseNoTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      caseName: Value(caseName),
      caseCode: caseCode == null && nullToAbsent
          ? const Value.absent()
          : Value(caseCode),
      isFull: Value(isFull),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory CaseNoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CaseNoTableData(
      id: serializer.fromJson<int?>(json['id']),
      caseName: serializer.fromJson<String>(json['caseName']),
      caseCode: serializer.fromJson<String?>(json['caseCode']),
      isFull: serializer.fromJson<bool>(json['isFull']),
      description: serializer.fromJson<String?>(json['description']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'caseName': serializer.toJson<String>(caseName),
      'caseCode': serializer.toJson<String?>(caseCode),
      'isFull': serializer.toJson<bool>(isFull),
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  CaseNoTableData copyWith(
          {int? id,
          String? caseName,
          String? caseCode,
          bool? isFull,
          String? description,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      CaseNoTableData(
        id: id ?? this.id,
        caseName: caseName ?? this.caseName,
        caseCode: caseCode ?? this.caseCode,
        isFull: isFull ?? this.isFull,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('CaseNoTableData(')
          ..write('id: $id, ')
          ..write('caseName: $caseName, ')
          ..write('caseCode: $caseCode, ')
          ..write('isFull: $isFull, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, caseName, caseCode, isFull, description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CaseNoTableData &&
          other.id == this.id &&
          other.caseName == this.caseName &&
          other.caseCode == this.caseCode &&
          other.isFull == this.isFull &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CaseNoTableCompanion extends UpdateCompanion<CaseNoTableData> {
  final Value<int?> id;
  final Value<String> caseName;
  final Value<String?> caseCode;
  final Value<bool> isFull;
  final Value<String?> description;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const CaseNoTableCompanion({
    this.id = const Value.absent(),
    this.caseName = const Value.absent(),
    this.caseCode = const Value.absent(),
    this.isFull = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CaseNoTableCompanion.insert({
    this.id = const Value.absent(),
    required String caseName,
    this.caseCode = const Value.absent(),
    required bool isFull,
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : caseName = Value(caseName),
        isFull = Value(isFull);
  static Insertable<CaseNoTableData> custom({
    Expression<int?>? id,
    Expression<String>? caseName,
    Expression<String?>? caseCode,
    Expression<bool>? isFull,
    Expression<String?>? description,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (caseName != null) 'case_name': caseName,
      if (caseCode != null) 'case_code': caseCode,
      if (isFull != null) 'is_full': isFull,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CaseNoTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? caseName,
      Value<String?>? caseCode,
      Value<bool>? isFull,
      Value<String?>? description,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return CaseNoTableCompanion(
      id: id ?? this.id,
      caseName: caseName ?? this.caseName,
      caseCode: caseCode ?? this.caseCode,
      isFull: isFull ?? this.isFull,
      description: description ?? this.description,
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
    if (caseName.present) {
      map['case_name'] = Variable<String>(caseName.value);
    }
    if (caseCode.present) {
      map['case_code'] = Variable<String?>(caseCode.value);
    }
    if (isFull.present) {
      map['is_full'] = Variable<bool>(isFull.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
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
    return (StringBuffer('CaseNoTableCompanion(')
          ..write('id: $id, ')
          ..write('caseName: $caseName, ')
          ..write('caseCode: $caseCode, ')
          ..write('isFull: $isFull, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CaseNoTableTable extends CaseNoTable
    with TableInfo<$CaseNoTableTable, CaseNoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CaseNoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _caseNameMeta = const VerificationMeta('caseName');
  @override
  late final GeneratedColumn<String?> caseName = GeneratedColumn<String?>(
      'case_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _caseCodeMeta = const VerificationMeta('caseCode');
  @override
  late final GeneratedColumn<String?> caseCode = GeneratedColumn<String?>(
      'case_code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isFullMeta = const VerificationMeta('isFull');
  @override
  late final GeneratedColumn<bool?> isFull = GeneratedColumn<bool?>(
      'is_full', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_full IN (0, 1))');
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
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
      [id, caseName, caseCode, isFull, description, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? 'case_no_table';
  @override
  String get actualTableName => 'case_no_table';
  @override
  VerificationContext validateIntegrity(Insertable<CaseNoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('case_name')) {
      context.handle(_caseNameMeta,
          caseName.isAcceptableOrUnknown(data['case_name']!, _caseNameMeta));
    } else if (isInserting) {
      context.missing(_caseNameMeta);
    }
    if (data.containsKey('case_code')) {
      context.handle(_caseCodeMeta,
          caseCode.isAcceptableOrUnknown(data['case_code']!, _caseCodeMeta));
    }
    if (data.containsKey('is_full')) {
      context.handle(_isFullMeta,
          isFull.isAcceptableOrUnknown(data['is_full']!, _isFullMeta));
    } else if (isInserting) {
      context.missing(_isFullMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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
  CaseNoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CaseNoTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CaseNoTableTable createAlias(String alias) {
    return $CaseNoTableTable(attachedDatabase, alias);
  }
}

class UnitPropertiesTableData extends DataClass
    implements Insertable<UnitPropertiesTableData> {
  final int? id;
  final String unitName;
  final String? unitCode;
  final String? unitCity;
  final String? unitType;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  UnitPropertiesTableData(
      {this.id,
      required this.unitName,
      this.unitCode,
      this.unitCity,
      this.unitType,
      this.description,
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
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
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
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
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
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
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
      description: serializer.fromJson<String?>(json['description']),
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
      'description': serializer.toJson<String?>(description),
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
          String? description,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      UnitPropertiesTableData(
        id: id ?? this.id,
        unitName: unitName ?? this.unitName,
        unitCode: unitCode ?? this.unitCode,
        unitCity: unitCity ?? this.unitCity,
        unitType: unitType ?? this.unitType,
        description: description ?? this.description,
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
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, unitName, unitCode, unitCity, unitType,
      description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UnitPropertiesTableData &&
          other.id == this.id &&
          other.unitName == this.unitName &&
          other.unitCode == this.unitCode &&
          other.unitCity == this.unitCity &&
          other.unitType == this.unitType &&
          other.description == this.description &&
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
  final Value<String?> description;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const UnitPropertiesTableCompanion({
    this.id = const Value.absent(),
    this.unitName = const Value.absent(),
    this.unitCode = const Value.absent(),
    this.unitCity = const Value.absent(),
    this.unitType = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  UnitPropertiesTableCompanion.insert({
    this.id = const Value.absent(),
    required String unitName,
    this.unitCode = const Value.absent(),
    this.unitCity = const Value.absent(),
    this.unitType = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : unitName = Value(unitName);
  static Insertable<UnitPropertiesTableData> custom({
    Expression<int?>? id,
    Expression<String>? unitName,
    Expression<String?>? unitCode,
    Expression<String?>? unitCity,
    Expression<String?>? unitType,
    Expression<String?>? description,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (unitName != null) 'unit_name': unitName,
      if (unitCode != null) 'unit_code': unitCode,
      if (unitCity != null) 'unit_city': unitCity,
      if (unitType != null) 'unit_type': unitType,
      if (description != null) 'description': description,
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
      Value<String?>? description,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return UnitPropertiesTableCompanion(
      id: id ?? this.id,
      unitName: unitName ?? this.unitName,
      unitCode: unitCode ?? this.unitCode,
      unitCity: unitCity ?? this.unitCity,
      unitType: unitType ?? this.unitType,
      description: description ?? this.description,
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
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
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
          ..write('description: $description, ')
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
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
        unitName,
        unitCode,
        unitCity,
        unitType,
        description,
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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

class SectionTableData extends DataClass
    implements Insertable<SectionTableData> {
  final int? id;
  final String locationName;
  final String? sectionCode;
  final String? sectionName;
  final String? sectionNameAbbr;
  final int? unit;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  SectionTableData(
      {this.id,
      required this.locationName,
      this.sectionCode,
      this.sectionName,
      this.sectionNameAbbr,
      this.unit,
      this.description,
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
      unit: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}unit']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
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
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<int?>(unit);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
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
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
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
      unit: serializer.fromJson<int?>(json['unit']),
      description: serializer.fromJson<String?>(json['description']),
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
      'unit': serializer.toJson<int?>(unit),
      'description': serializer.toJson<String?>(description),
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
          int? unit,
          String? description,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      SectionTableData(
        id: id ?? this.id,
        locationName: locationName ?? this.locationName,
        sectionCode: sectionCode ?? this.sectionCode,
        sectionName: sectionName ?? this.sectionName,
        sectionNameAbbr: sectionNameAbbr ?? this.sectionNameAbbr,
        unit: unit ?? this.unit,
        description: description ?? this.description,
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
          ..write('unit: $unit, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, locationName, sectionCode, sectionName,
      sectionNameAbbr, unit, description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionTableData &&
          other.id == this.id &&
          other.locationName == this.locationName &&
          other.sectionCode == this.sectionCode &&
          other.sectionName == this.sectionName &&
          other.sectionNameAbbr == this.sectionNameAbbr &&
          other.unit == this.unit &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SectionTableCompanion extends UpdateCompanion<SectionTableData> {
  final Value<int?> id;
  final Value<String> locationName;
  final Value<String?> sectionCode;
  final Value<String?> sectionName;
  final Value<String?> sectionNameAbbr;
  final Value<int?> unit;
  final Value<String?> description;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const SectionTableCompanion({
    this.id = const Value.absent(),
    this.locationName = const Value.absent(),
    this.sectionCode = const Value.absent(),
    this.sectionName = const Value.absent(),
    this.sectionNameAbbr = const Value.absent(),
    this.unit = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  SectionTableCompanion.insert({
    this.id = const Value.absent(),
    required String locationName,
    this.sectionCode = const Value.absent(),
    this.sectionName = const Value.absent(),
    this.sectionNameAbbr = const Value.absent(),
    this.unit = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : locationName = Value(locationName);
  static Insertable<SectionTableData> custom({
    Expression<int?>? id,
    Expression<String>? locationName,
    Expression<String?>? sectionCode,
    Expression<String?>? sectionName,
    Expression<String?>? sectionNameAbbr,
    Expression<int?>? unit,
    Expression<String?>? description,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (locationName != null) 'location_name': locationName,
      if (sectionCode != null) 'section_code': sectionCode,
      if (sectionName != null) 'section_name': sectionName,
      if (sectionNameAbbr != null) 'section_name_abbr': sectionNameAbbr,
      if (unit != null) 'unit': unit,
      if (description != null) 'description': description,
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
      Value<int?>? unit,
      Value<String?>? description,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return SectionTableCompanion(
      id: id ?? this.id,
      locationName: locationName ?? this.locationName,
      sectionCode: sectionCode ?? this.sectionCode,
      sectionName: sectionName ?? this.sectionName,
      sectionNameAbbr: sectionNameAbbr ?? this.sectionNameAbbr,
      unit: unit ?? this.unit,
      description: description ?? this.description,
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
    if (unit.present) {
      map['unit'] = Variable<int?>(unit.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
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
          ..write('unit: $unit, ')
          ..write('description: $description, ')
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
  final VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<int?> unit = GeneratedColumn<int?>(
      'unit', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES unit_properties_table (id)');
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
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
        unit,
        description,
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
    if (data.containsKey('unit')) {
      context.handle(
          _unitMeta, unit.isAcceptableOrUnknown(data['unit']!, _unitMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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

class TrainingStatusTableData extends DataClass
    implements Insertable<TrainingStatusTableData> {
  final int? id;
  final DateTime? startDate;
  final String placeName;
  final int? period;
  final String? status;
  final String? type;
  final DateTime? endDate;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  TrainingStatusTableData(
      {this.id,
      this.startDate,
      required this.placeName,
      this.period,
      this.status,
      this.type,
      this.endDate,
      this.description,
      this.createdAt,
      this.updatedAt});
  factory TrainingStatusTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TrainingStatusTableData(
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
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
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
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  TrainingStatusTableCompanion toCompanion(bool nullToAbsent) {
    return TrainingStatusTableCompanion(
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
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory TrainingStatusTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrainingStatusTableData(
      id: serializer.fromJson<int?>(json['id']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      placeName: serializer.fromJson<String>(json['placeName']),
      period: serializer.fromJson<int?>(json['period']),
      status: serializer.fromJson<String?>(json['status']),
      type: serializer.fromJson<String?>(json['type']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      description: serializer.fromJson<String?>(json['description']),
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
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  TrainingStatusTableData copyWith(
          {int? id,
          DateTime? startDate,
          String? placeName,
          int? period,
          String? status,
          String? type,
          DateTime? endDate,
          String? description,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      TrainingStatusTableData(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        placeName: placeName ?? this.placeName,
        period: period ?? this.period,
        status: status ?? this.status,
        type: type ?? this.type,
        endDate: endDate ?? this.endDate,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('TrainingStatusTableData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('placeName: $placeName, ')
          ..write('period: $period, ')
          ..write('status: $status, ')
          ..write('type: $type, ')
          ..write('endDate: $endDate, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, startDate, placeName, period, status,
      type, endDate, description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrainingStatusTableData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.placeName == this.placeName &&
          other.period == this.period &&
          other.status == this.status &&
          other.type == this.type &&
          other.endDate == this.endDate &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class TrainingStatusTableCompanion
    extends UpdateCompanion<TrainingStatusTableData> {
  final Value<int?> id;
  final Value<DateTime?> startDate;
  final Value<String> placeName;
  final Value<int?> period;
  final Value<String?> status;
  final Value<String?> type;
  final Value<DateTime?> endDate;
  final Value<String?> description;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const TrainingStatusTableCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.placeName = const Value.absent(),
    this.period = const Value.absent(),
    this.status = const Value.absent(),
    this.type = const Value.absent(),
    this.endDate = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  TrainingStatusTableCompanion.insert({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    required String placeName,
    this.period = const Value.absent(),
    this.status = const Value.absent(),
    this.type = const Value.absent(),
    this.endDate = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : placeName = Value(placeName);
  static Insertable<TrainingStatusTableData> custom({
    Expression<int?>? id,
    Expression<DateTime?>? startDate,
    Expression<String>? placeName,
    Expression<int?>? period,
    Expression<String?>? status,
    Expression<String?>? type,
    Expression<DateTime?>? endDate,
    Expression<String?>? description,
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
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  TrainingStatusTableCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime?>? startDate,
      Value<String>? placeName,
      Value<int?>? period,
      Value<String?>? status,
      Value<String?>? type,
      Value<DateTime?>? endDate,
      Value<String?>? description,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return TrainingStatusTableCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      placeName: placeName ?? this.placeName,
      period: period ?? this.period,
      status: status ?? this.status,
      type: type ?? this.type,
      endDate: endDate ?? this.endDate,
      description: description ?? this.description,
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
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
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
    return (StringBuffer('TrainingStatusTableCompanion(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('placeName: $placeName, ')
          ..write('period: $period, ')
          ..write('status: $status, ')
          ..write('type: $type, ')
          ..write('endDate: $endDate, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $TrainingStatusTableTable extends TrainingStatusTable
    with TableInfo<$TrainingStatusTableTable, TrainingStatusTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TrainingStatusTableTable(this.attachedDatabase, [this._alias]);
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
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
        startDate,
        placeName,
        period,
        status,
        type,
        endDate,
        description,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'training_status_table';
  @override
  String get actualTableName => 'training_status_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<TrainingStatusTableData> instance,
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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
  TrainingStatusTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return TrainingStatusTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TrainingStatusTableTable createAlias(String alias) {
    return $TrainingStatusTableTable(attachedDatabase, alias);
  }
}

class ServiceDeficitRecordTableData extends DataClass
    implements Insertable<ServiceDeficitRecordTableData> {
  final int? id;
  final String? type;
  final int amount;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  ServiceDeficitRecordTableData(
      {this.id,
      this.type,
      required this.amount,
      this.description,
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
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
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
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
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
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
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
      description: serializer.fromJson<String?>(json['description']),
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
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  ServiceDeficitRecordTableData copyWith(
          {int? id,
          String? type,
          int? amount,
          String? description,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      ServiceDeficitRecordTableData(
        id: id ?? this.id,
        type: type ?? this.type,
        amount: amount ?? this.amount,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ServiceDeficitRecordTableData(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('amount: $amount, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, type, amount, description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServiceDeficitRecordTableData &&
          other.id == this.id &&
          other.type == this.type &&
          other.amount == this.amount &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ServiceDeficitRecordTableCompanion
    extends UpdateCompanion<ServiceDeficitRecordTableData> {
  final Value<int?> id;
  final Value<String?> type;
  final Value<int> amount;
  final Value<String?> description;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const ServiceDeficitRecordTableCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.amount = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ServiceDeficitRecordTableCompanion.insert({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    required int amount,
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : amount = Value(amount);
  static Insertable<ServiceDeficitRecordTableData> custom({
    Expression<int?>? id,
    Expression<String?>? type,
    Expression<int>? amount,
    Expression<String?>? description,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (amount != null) 'amount': amount,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ServiceDeficitRecordTableCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? type,
      Value<int>? amount,
      Value<String?>? description,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return ServiceDeficitRecordTableCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      amount: amount ?? this.amount,
      description: description ?? this.description,
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
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
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
          ..write('description: $description, ')
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
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
      [id, type, amount, description, createdAt, updatedAt];
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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
  final int? calculatedDeficitAmount;
  final int? records;
  final int? operationalRecords;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  ServiceDeficitTableData(
      {this.id,
      this.calculatedDeficitAmount,
      this.records,
      this.operationalRecords,
      this.createdAt,
      this.updatedAt});
  factory ServiceDeficitTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ServiceDeficitTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      calculatedDeficitAmount: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}calculated_deficit_amount']),
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
    if (!nullToAbsent || calculatedDeficitAmount != null) {
      map['calculated_deficit_amount'] =
          Variable<int?>(calculatedDeficitAmount);
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
      calculatedDeficitAmount: calculatedDeficitAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(calculatedDeficitAmount),
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
      calculatedDeficitAmount:
          serializer.fromJson<int?>(json['calculatedDeficitAmount']),
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
      'calculatedDeficitAmount':
          serializer.toJson<int?>(calculatedDeficitAmount),
      'records': serializer.toJson<int?>(records),
      'operationalRecords': serializer.toJson<int?>(operationalRecords),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  ServiceDeficitTableData copyWith(
          {int? id,
          int? calculatedDeficitAmount,
          int? records,
          int? operationalRecords,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      ServiceDeficitTableData(
        id: id ?? this.id,
        calculatedDeficitAmount:
            calculatedDeficitAmount ?? this.calculatedDeficitAmount,
        records: records ?? this.records,
        operationalRecords: operationalRecords ?? this.operationalRecords,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ServiceDeficitTableData(')
          ..write('id: $id, ')
          ..write('calculatedDeficitAmount: $calculatedDeficitAmount, ')
          ..write('records: $records, ')
          ..write('operationalRecords: $operationalRecords, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, calculatedDeficitAmount, records,
      operationalRecords, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServiceDeficitTableData &&
          other.id == this.id &&
          other.calculatedDeficitAmount == this.calculatedDeficitAmount &&
          other.records == this.records &&
          other.operationalRecords == this.operationalRecords &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ServiceDeficitTableCompanion
    extends UpdateCompanion<ServiceDeficitTableData> {
  final Value<int?> id;
  final Value<int?> calculatedDeficitAmount;
  final Value<int?> records;
  final Value<int?> operationalRecords;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const ServiceDeficitTableCompanion({
    this.id = const Value.absent(),
    this.calculatedDeficitAmount = const Value.absent(),
    this.records = const Value.absent(),
    this.operationalRecords = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ServiceDeficitTableCompanion.insert({
    this.id = const Value.absent(),
    this.calculatedDeficitAmount = const Value.absent(),
    this.records = const Value.absent(),
    this.operationalRecords = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<ServiceDeficitTableData> custom({
    Expression<int?>? id,
    Expression<int?>? calculatedDeficitAmount,
    Expression<int?>? records,
    Expression<int?>? operationalRecords,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (calculatedDeficitAmount != null)
        'calculated_deficit_amount': calculatedDeficitAmount,
      if (records != null) 'records': records,
      if (operationalRecords != null) 'operational_records': operationalRecords,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ServiceDeficitTableCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? calculatedDeficitAmount,
      Value<int?>? records,
      Value<int?>? operationalRecords,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return ServiceDeficitTableCompanion(
      id: id ?? this.id,
      calculatedDeficitAmount:
          calculatedDeficitAmount ?? this.calculatedDeficitAmount,
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
    if (calculatedDeficitAmount.present) {
      map['calculated_deficit_amount'] =
          Variable<int?>(calculatedDeficitAmount.value);
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
          ..write('calculatedDeficitAmount: $calculatedDeficitAmount, ')
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
  final VerificationMeta _calculatedDeficitAmountMeta =
      const VerificationMeta('calculatedDeficitAmount');
  @override
  late final GeneratedColumn<int?> calculatedDeficitAmount =
      GeneratedColumn<int?>('calculated_deficit_amount', aliasedName, true,
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
        calculatedDeficitAmount,
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
    if (data.containsKey('calculated_deficit_amount')) {
      context.handle(
          _calculatedDeficitAmountMeta,
          calculatedDeficitAmount.isAcceptableOrUnknown(
              data['calculated_deficit_amount']!,
              _calculatedDeficitAmountMeta));
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
  final String membershipType;
  final DateTime dispatchDate;
  final String dispatcher;
  final String serviceCategory;
  final DateTime startDateOfService;
  final DateTime endDateOfService;
  final int legalPeriodOfService;
  final DateTime introductionDate;
  final int? lastPeriodOfService;
  final int? amountOfService;
  final String? description;
  final int? overtime;
  final int? vacations;
  final int? serviceDeficit;
  final int? rank;
  final int? unit;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  SoldierCaseTableData(
      {this.id,
      required this.membershipType,
      required this.dispatchDate,
      required this.dispatcher,
      required this.serviceCategory,
      required this.startDateOfService,
      required this.endDateOfService,
      required this.legalPeriodOfService,
      required this.introductionDate,
      this.lastPeriodOfService,
      this.amountOfService,
      this.description,
      this.overtime,
      this.vacations,
      this.serviceDeficit,
      this.rank,
      this.unit,
      this.createdAt,
      this.updatedAt});
  factory SoldierCaseTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SoldierCaseTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      membershipType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}membership_type'])!,
      dispatchDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dispatch_date'])!,
      dispatcher: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dispatcher'])!,
      serviceCategory: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}service_category'])!,
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
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      overtime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overtime']),
      vacations: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vacations']),
      serviceDeficit: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}service_deficit']),
      rank: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rank']),
      unit: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}unit']),
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
    map['membership_type'] = Variable<String>(membershipType);
    map['dispatch_date'] = Variable<DateTime>(dispatchDate);
    map['dispatcher'] = Variable<String>(dispatcher);
    map['service_category'] = Variable<String>(serviceCategory);
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
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || overtime != null) {
      map['overtime'] = Variable<int?>(overtime);
    }
    if (!nullToAbsent || vacations != null) {
      map['vacations'] = Variable<int?>(vacations);
    }
    if (!nullToAbsent || serviceDeficit != null) {
      map['service_deficit'] = Variable<int?>(serviceDeficit);
    }
    if (!nullToAbsent || rank != null) {
      map['rank'] = Variable<int?>(rank);
    }
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<int?>(unit);
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
      membershipType: Value(membershipType),
      dispatchDate: Value(dispatchDate),
      dispatcher: Value(dispatcher),
      serviceCategory: Value(serviceCategory),
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
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      overtime: overtime == null && nullToAbsent
          ? const Value.absent()
          : Value(overtime),
      vacations: vacations == null && nullToAbsent
          ? const Value.absent()
          : Value(vacations),
      serviceDeficit: serviceDeficit == null && nullToAbsent
          ? const Value.absent()
          : Value(serviceDeficit),
      rank: rank == null && nullToAbsent ? const Value.absent() : Value(rank),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
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
      membershipType: serializer.fromJson<String>(json['membershipType']),
      dispatchDate: serializer.fromJson<DateTime>(json['dispatchDate']),
      dispatcher: serializer.fromJson<String>(json['dispatcher']),
      serviceCategory: serializer.fromJson<String>(json['serviceCategory']),
      startDateOfService:
          serializer.fromJson<DateTime>(json['startDateOfService']),
      endDateOfService: serializer.fromJson<DateTime>(json['endDateOfService']),
      legalPeriodOfService:
          serializer.fromJson<int>(json['legalPeriodOfService']),
      introductionDate: serializer.fromJson<DateTime>(json['introductionDate']),
      lastPeriodOfService:
          serializer.fromJson<int?>(json['lastPeriodOfService']),
      amountOfService: serializer.fromJson<int?>(json['amountOfService']),
      description: serializer.fromJson<String?>(json['description']),
      overtime: serializer.fromJson<int?>(json['overtime']),
      vacations: serializer.fromJson<int?>(json['vacations']),
      serviceDeficit: serializer.fromJson<int?>(json['serviceDeficit']),
      rank: serializer.fromJson<int?>(json['rank']),
      unit: serializer.fromJson<int?>(json['unit']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'membershipType': serializer.toJson<String>(membershipType),
      'dispatchDate': serializer.toJson<DateTime>(dispatchDate),
      'dispatcher': serializer.toJson<String>(dispatcher),
      'serviceCategory': serializer.toJson<String>(serviceCategory),
      'startDateOfService': serializer.toJson<DateTime>(startDateOfService),
      'endDateOfService': serializer.toJson<DateTime>(endDateOfService),
      'legalPeriodOfService': serializer.toJson<int>(legalPeriodOfService),
      'introductionDate': serializer.toJson<DateTime>(introductionDate),
      'lastPeriodOfService': serializer.toJson<int?>(lastPeriodOfService),
      'amountOfService': serializer.toJson<int?>(amountOfService),
      'description': serializer.toJson<String?>(description),
      'overtime': serializer.toJson<int?>(overtime),
      'vacations': serializer.toJson<int?>(vacations),
      'serviceDeficit': serializer.toJson<int?>(serviceDeficit),
      'rank': serializer.toJson<int?>(rank),
      'unit': serializer.toJson<int?>(unit),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  SoldierCaseTableData copyWith(
          {int? id,
          String? membershipType,
          DateTime? dispatchDate,
          String? dispatcher,
          String? serviceCategory,
          DateTime? startDateOfService,
          DateTime? endDateOfService,
          int? legalPeriodOfService,
          DateTime? introductionDate,
          int? lastPeriodOfService,
          int? amountOfService,
          String? description,
          int? overtime,
          int? vacations,
          int? serviceDeficit,
          int? rank,
          int? unit,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      SoldierCaseTableData(
        id: id ?? this.id,
        membershipType: membershipType ?? this.membershipType,
        dispatchDate: dispatchDate ?? this.dispatchDate,
        dispatcher: dispatcher ?? this.dispatcher,
        serviceCategory: serviceCategory ?? this.serviceCategory,
        startDateOfService: startDateOfService ?? this.startDateOfService,
        endDateOfService: endDateOfService ?? this.endDateOfService,
        legalPeriodOfService: legalPeriodOfService ?? this.legalPeriodOfService,
        introductionDate: introductionDate ?? this.introductionDate,
        lastPeriodOfService: lastPeriodOfService ?? this.lastPeriodOfService,
        amountOfService: amountOfService ?? this.amountOfService,
        description: description ?? this.description,
        overtime: overtime ?? this.overtime,
        vacations: vacations ?? this.vacations,
        serviceDeficit: serviceDeficit ?? this.serviceDeficit,
        rank: rank ?? this.rank,
        unit: unit ?? this.unit,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('SoldierCaseTableData(')
          ..write('id: $id, ')
          ..write('membershipType: $membershipType, ')
          ..write('dispatchDate: $dispatchDate, ')
          ..write('dispatcher: $dispatcher, ')
          ..write('serviceCategory: $serviceCategory, ')
          ..write('startDateOfService: $startDateOfService, ')
          ..write('endDateOfService: $endDateOfService, ')
          ..write('legalPeriodOfService: $legalPeriodOfService, ')
          ..write('introductionDate: $introductionDate, ')
          ..write('lastPeriodOfService: $lastPeriodOfService, ')
          ..write('amountOfService: $amountOfService, ')
          ..write('description: $description, ')
          ..write('overtime: $overtime, ')
          ..write('vacations: $vacations, ')
          ..write('serviceDeficit: $serviceDeficit, ')
          ..write('rank: $rank, ')
          ..write('unit: $unit, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      membershipType,
      dispatchDate,
      dispatcher,
      serviceCategory,
      startDateOfService,
      endDateOfService,
      legalPeriodOfService,
      introductionDate,
      lastPeriodOfService,
      amountOfService,
      description,
      overtime,
      vacations,
      serviceDeficit,
      rank,
      unit,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SoldierCaseTableData &&
          other.id == this.id &&
          other.membershipType == this.membershipType &&
          other.dispatchDate == this.dispatchDate &&
          other.dispatcher == this.dispatcher &&
          other.serviceCategory == this.serviceCategory &&
          other.startDateOfService == this.startDateOfService &&
          other.endDateOfService == this.endDateOfService &&
          other.legalPeriodOfService == this.legalPeriodOfService &&
          other.introductionDate == this.introductionDate &&
          other.lastPeriodOfService == this.lastPeriodOfService &&
          other.amountOfService == this.amountOfService &&
          other.description == this.description &&
          other.overtime == this.overtime &&
          other.vacations == this.vacations &&
          other.serviceDeficit == this.serviceDeficit &&
          other.rank == this.rank &&
          other.unit == this.unit &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SoldierCaseTableCompanion extends UpdateCompanion<SoldierCaseTableData> {
  final Value<int?> id;
  final Value<String> membershipType;
  final Value<DateTime> dispatchDate;
  final Value<String> dispatcher;
  final Value<String> serviceCategory;
  final Value<DateTime> startDateOfService;
  final Value<DateTime> endDateOfService;
  final Value<int> legalPeriodOfService;
  final Value<DateTime> introductionDate;
  final Value<int?> lastPeriodOfService;
  final Value<int?> amountOfService;
  final Value<String?> description;
  final Value<int?> overtime;
  final Value<int?> vacations;
  final Value<int?> serviceDeficit;
  final Value<int?> rank;
  final Value<int?> unit;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const SoldierCaseTableCompanion({
    this.id = const Value.absent(),
    this.membershipType = const Value.absent(),
    this.dispatchDate = const Value.absent(),
    this.dispatcher = const Value.absent(),
    this.serviceCategory = const Value.absent(),
    this.startDateOfService = const Value.absent(),
    this.endDateOfService = const Value.absent(),
    this.legalPeriodOfService = const Value.absent(),
    this.introductionDate = const Value.absent(),
    this.lastPeriodOfService = const Value.absent(),
    this.amountOfService = const Value.absent(),
    this.description = const Value.absent(),
    this.overtime = const Value.absent(),
    this.vacations = const Value.absent(),
    this.serviceDeficit = const Value.absent(),
    this.rank = const Value.absent(),
    this.unit = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  SoldierCaseTableCompanion.insert({
    this.id = const Value.absent(),
    required String membershipType,
    required DateTime dispatchDate,
    required String dispatcher,
    required String serviceCategory,
    required DateTime startDateOfService,
    required DateTime endDateOfService,
    required int legalPeriodOfService,
    required DateTime introductionDate,
    this.lastPeriodOfService = const Value.absent(),
    this.amountOfService = const Value.absent(),
    this.description = const Value.absent(),
    this.overtime = const Value.absent(),
    this.vacations = const Value.absent(),
    this.serviceDeficit = const Value.absent(),
    this.rank = const Value.absent(),
    this.unit = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : membershipType = Value(membershipType),
        dispatchDate = Value(dispatchDate),
        dispatcher = Value(dispatcher),
        serviceCategory = Value(serviceCategory),
        startDateOfService = Value(startDateOfService),
        endDateOfService = Value(endDateOfService),
        legalPeriodOfService = Value(legalPeriodOfService),
        introductionDate = Value(introductionDate);
  static Insertable<SoldierCaseTableData> custom({
    Expression<int?>? id,
    Expression<String>? membershipType,
    Expression<DateTime>? dispatchDate,
    Expression<String>? dispatcher,
    Expression<String>? serviceCategory,
    Expression<DateTime>? startDateOfService,
    Expression<DateTime>? endDateOfService,
    Expression<int>? legalPeriodOfService,
    Expression<DateTime>? introductionDate,
    Expression<int?>? lastPeriodOfService,
    Expression<int?>? amountOfService,
    Expression<String?>? description,
    Expression<int?>? overtime,
    Expression<int?>? vacations,
    Expression<int?>? serviceDeficit,
    Expression<int?>? rank,
    Expression<int?>? unit,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (membershipType != null) 'membership_type': membershipType,
      if (dispatchDate != null) 'dispatch_date': dispatchDate,
      if (dispatcher != null) 'dispatcher': dispatcher,
      if (serviceCategory != null) 'service_category': serviceCategory,
      if (startDateOfService != null)
        'start_date_of_service': startDateOfService,
      if (endDateOfService != null) 'end_date_of_service': endDateOfService,
      if (legalPeriodOfService != null)
        'legal_period_of_service': legalPeriodOfService,
      if (introductionDate != null) 'introduction_date': introductionDate,
      if (lastPeriodOfService != null)
        'last_period_of_service': lastPeriodOfService,
      if (amountOfService != null) 'amount_of_service': amountOfService,
      if (description != null) 'description': description,
      if (overtime != null) 'overtime': overtime,
      if (vacations != null) 'vacations': vacations,
      if (serviceDeficit != null) 'service_deficit': serviceDeficit,
      if (rank != null) 'rank': rank,
      if (unit != null) 'unit': unit,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  SoldierCaseTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? membershipType,
      Value<DateTime>? dispatchDate,
      Value<String>? dispatcher,
      Value<String>? serviceCategory,
      Value<DateTime>? startDateOfService,
      Value<DateTime>? endDateOfService,
      Value<int>? legalPeriodOfService,
      Value<DateTime>? introductionDate,
      Value<int?>? lastPeriodOfService,
      Value<int?>? amountOfService,
      Value<String?>? description,
      Value<int?>? overtime,
      Value<int?>? vacations,
      Value<int?>? serviceDeficit,
      Value<int?>? rank,
      Value<int?>? unit,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return SoldierCaseTableCompanion(
      id: id ?? this.id,
      membershipType: membershipType ?? this.membershipType,
      dispatchDate: dispatchDate ?? this.dispatchDate,
      dispatcher: dispatcher ?? this.dispatcher,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      startDateOfService: startDateOfService ?? this.startDateOfService,
      endDateOfService: endDateOfService ?? this.endDateOfService,
      legalPeriodOfService: legalPeriodOfService ?? this.legalPeriodOfService,
      introductionDate: introductionDate ?? this.introductionDate,
      lastPeriodOfService: lastPeriodOfService ?? this.lastPeriodOfService,
      amountOfService: amountOfService ?? this.amountOfService,
      description: description ?? this.description,
      overtime: overtime ?? this.overtime,
      vacations: vacations ?? this.vacations,
      serviceDeficit: serviceDeficit ?? this.serviceDeficit,
      rank: rank ?? this.rank,
      unit: unit ?? this.unit,
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
    if (membershipType.present) {
      map['membership_type'] = Variable<String>(membershipType.value);
    }
    if (dispatchDate.present) {
      map['dispatch_date'] = Variable<DateTime>(dispatchDate.value);
    }
    if (dispatcher.present) {
      map['dispatcher'] = Variable<String>(dispatcher.value);
    }
    if (serviceCategory.present) {
      map['service_category'] = Variable<String>(serviceCategory.value);
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
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (overtime.present) {
      map['overtime'] = Variable<int?>(overtime.value);
    }
    if (vacations.present) {
      map['vacations'] = Variable<int?>(vacations.value);
    }
    if (serviceDeficit.present) {
      map['service_deficit'] = Variable<int?>(serviceDeficit.value);
    }
    if (rank.present) {
      map['rank'] = Variable<int?>(rank.value);
    }
    if (unit.present) {
      map['unit'] = Variable<int?>(unit.value);
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
          ..write('membershipType: $membershipType, ')
          ..write('dispatchDate: $dispatchDate, ')
          ..write('dispatcher: $dispatcher, ')
          ..write('serviceCategory: $serviceCategory, ')
          ..write('startDateOfService: $startDateOfService, ')
          ..write('endDateOfService: $endDateOfService, ')
          ..write('legalPeriodOfService: $legalPeriodOfService, ')
          ..write('introductionDate: $introductionDate, ')
          ..write('lastPeriodOfService: $lastPeriodOfService, ')
          ..write('amountOfService: $amountOfService, ')
          ..write('description: $description, ')
          ..write('overtime: $overtime, ')
          ..write('vacations: $vacations, ')
          ..write('serviceDeficit: $serviceDeficit, ')
          ..write('rank: $rank, ')
          ..write('unit: $unit, ')
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
  final VerificationMeta _membershipTypeMeta =
      const VerificationMeta('membershipType');
  @override
  late final GeneratedColumn<String?> membershipType = GeneratedColumn<String?>(
      'membership_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dispatchDateMeta =
      const VerificationMeta('dispatchDate');
  @override
  late final GeneratedColumn<DateTime?> dispatchDate =
      GeneratedColumn<DateTime?>('dispatch_date', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _dispatcherMeta = const VerificationMeta('dispatcher');
  @override
  late final GeneratedColumn<String?> dispatcher = GeneratedColumn<String?>(
      'dispatcher', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _serviceCategoryMeta =
      const VerificationMeta('serviceCategory');
  @override
  late final GeneratedColumn<String?> serviceCategory =
      GeneratedColumn<String?>('service_category', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
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
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _overtimeMeta = const VerificationMeta('overtime');
  @override
  late final GeneratedColumn<int?> overtime = GeneratedColumn<int?>(
      'overtime', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES overtime_table (id)');
  final VerificationMeta _vacationsMeta = const VerificationMeta('vacations');
  @override
  late final GeneratedColumn<int?> vacations = GeneratedColumn<int?>(
      'vacations', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES vacations_table (id)');
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
  final VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<int?> unit = GeneratedColumn<int?>(
      'unit', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES unit_properties_table (id)');
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
        membershipType,
        dispatchDate,
        dispatcher,
        serviceCategory,
        startDateOfService,
        endDateOfService,
        legalPeriodOfService,
        introductionDate,
        lastPeriodOfService,
        amountOfService,
        description,
        overtime,
        vacations,
        serviceDeficit,
        rank,
        unit,
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
    if (data.containsKey('membership_type')) {
      context.handle(
          _membershipTypeMeta,
          membershipType.isAcceptableOrUnknown(
              data['membership_type']!, _membershipTypeMeta));
    } else if (isInserting) {
      context.missing(_membershipTypeMeta);
    }
    if (data.containsKey('dispatch_date')) {
      context.handle(
          _dispatchDateMeta,
          dispatchDate.isAcceptableOrUnknown(
              data['dispatch_date']!, _dispatchDateMeta));
    } else if (isInserting) {
      context.missing(_dispatchDateMeta);
    }
    if (data.containsKey('dispatcher')) {
      context.handle(
          _dispatcherMeta,
          dispatcher.isAcceptableOrUnknown(
              data['dispatcher']!, _dispatcherMeta));
    } else if (isInserting) {
      context.missing(_dispatcherMeta);
    }
    if (data.containsKey('service_category')) {
      context.handle(
          _serviceCategoryMeta,
          serviceCategory.isAcceptableOrUnknown(
              data['service_category']!, _serviceCategoryMeta));
    } else if (isInserting) {
      context.missing(_serviceCategoryMeta);
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('overtime')) {
      context.handle(_overtimeMeta,
          overtime.isAcceptableOrUnknown(data['overtime']!, _overtimeMeta));
    }
    if (data.containsKey('vacations')) {
      context.handle(_vacationsMeta,
          vacations.isAcceptableOrUnknown(data['vacations']!, _vacationsMeta));
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
    if (data.containsKey('unit')) {
      context.handle(
          _unitMeta, unit.isAcceptableOrUnknown(data['unit']!, _unitMeta));
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
  final String caseStatus;
  final bool divisionStatus;
  final bool isArchived;
  final String? archiveCaseNo;
  final int caseNo;
  final int? section;
  final int? trainingStatus;
  final int? healthStatus;
  final int? soldierCase;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  SoldierTableData(
      {this.id,
      this.imagePath,
      this.personnelCode,
      this.latestStatus,
      required this.caseStatus,
      required this.divisionStatus,
      required this.isArchived,
      this.archiveCaseNo,
      required this.caseNo,
      this.section,
      this.trainingStatus,
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
      caseStatus: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}case_status'])!,
      divisionStatus: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}division_status'])!,
      isArchived: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_archived'])!,
      archiveCaseNo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}archive_case_no']),
      caseNo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}case_no'])!,
      section: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section']),
      trainingStatus: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}training_status']),
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
    map['case_status'] = Variable<String>(caseStatus);
    map['division_status'] = Variable<bool>(divisionStatus);
    map['is_archived'] = Variable<bool>(isArchived);
    if (!nullToAbsent || archiveCaseNo != null) {
      map['archive_case_no'] = Variable<String?>(archiveCaseNo);
    }
    map['case_no'] = Variable<int>(caseNo);
    if (!nullToAbsent || section != null) {
      map['section'] = Variable<int?>(section);
    }
    if (!nullToAbsent || trainingStatus != null) {
      map['training_status'] = Variable<int?>(trainingStatus);
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
      caseStatus: Value(caseStatus),
      divisionStatus: Value(divisionStatus),
      isArchived: Value(isArchived),
      archiveCaseNo: archiveCaseNo == null && nullToAbsent
          ? const Value.absent()
          : Value(archiveCaseNo),
      caseNo: Value(caseNo),
      section: section == null && nullToAbsent
          ? const Value.absent()
          : Value(section),
      trainingStatus: trainingStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(trainingStatus),
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
      caseStatus: serializer.fromJson<String>(json['caseStatus']),
      divisionStatus: serializer.fromJson<bool>(json['divisionStatus']),
      isArchived: serializer.fromJson<bool>(json['isArchived']),
      archiveCaseNo: serializer.fromJson<String?>(json['archiveCaseNo']),
      caseNo: serializer.fromJson<int>(json['caseNo']),
      section: serializer.fromJson<int?>(json['section']),
      trainingStatus: serializer.fromJson<int?>(json['trainingStatus']),
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
      'caseStatus': serializer.toJson<String>(caseStatus),
      'divisionStatus': serializer.toJson<bool>(divisionStatus),
      'isArchived': serializer.toJson<bool>(isArchived),
      'archiveCaseNo': serializer.toJson<String?>(archiveCaseNo),
      'caseNo': serializer.toJson<int>(caseNo),
      'section': serializer.toJson<int?>(section),
      'trainingStatus': serializer.toJson<int?>(trainingStatus),
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
          String? caseStatus,
          bool? divisionStatus,
          bool? isArchived,
          String? archiveCaseNo,
          int? caseNo,
          int? section,
          int? trainingStatus,
          int? healthStatus,
          int? soldierCase,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      SoldierTableData(
        id: id ?? this.id,
        imagePath: imagePath ?? this.imagePath,
        personnelCode: personnelCode ?? this.personnelCode,
        latestStatus: latestStatus ?? this.latestStatus,
        caseStatus: caseStatus ?? this.caseStatus,
        divisionStatus: divisionStatus ?? this.divisionStatus,
        isArchived: isArchived ?? this.isArchived,
        archiveCaseNo: archiveCaseNo ?? this.archiveCaseNo,
        caseNo: caseNo ?? this.caseNo,
        section: section ?? this.section,
        trainingStatus: trainingStatus ?? this.trainingStatus,
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
          ..write('caseStatus: $caseStatus, ')
          ..write('divisionStatus: $divisionStatus, ')
          ..write('isArchived: $isArchived, ')
          ..write('archiveCaseNo: $archiveCaseNo, ')
          ..write('caseNo: $caseNo, ')
          ..write('section: $section, ')
          ..write('trainingStatus: $trainingStatus, ')
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
      caseStatus,
      divisionStatus,
      isArchived,
      archiveCaseNo,
      caseNo,
      section,
      trainingStatus,
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
          other.caseStatus == this.caseStatus &&
          other.divisionStatus == this.divisionStatus &&
          other.isArchived == this.isArchived &&
          other.archiveCaseNo == this.archiveCaseNo &&
          other.caseNo == this.caseNo &&
          other.section == this.section &&
          other.trainingStatus == this.trainingStatus &&
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
  final Value<String> caseStatus;
  final Value<bool> divisionStatus;
  final Value<bool> isArchived;
  final Value<String?> archiveCaseNo;
  final Value<int> caseNo;
  final Value<int?> section;
  final Value<int?> trainingStatus;
  final Value<int?> healthStatus;
  final Value<int?> soldierCase;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const SoldierTableCompanion({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.personnelCode = const Value.absent(),
    this.latestStatus = const Value.absent(),
    this.caseStatus = const Value.absent(),
    this.divisionStatus = const Value.absent(),
    this.isArchived = const Value.absent(),
    this.archiveCaseNo = const Value.absent(),
    this.caseNo = const Value.absent(),
    this.section = const Value.absent(),
    this.trainingStatus = const Value.absent(),
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
    required String caseStatus,
    required bool divisionStatus,
    required bool isArchived,
    this.archiveCaseNo = const Value.absent(),
    required int caseNo,
    this.section = const Value.absent(),
    this.trainingStatus = const Value.absent(),
    this.healthStatus = const Value.absent(),
    this.soldierCase = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : caseStatus = Value(caseStatus),
        divisionStatus = Value(divisionStatus),
        isArchived = Value(isArchived),
        caseNo = Value(caseNo);
  static Insertable<SoldierTableData> custom({
    Expression<int?>? id,
    Expression<String?>? imagePath,
    Expression<String?>? personnelCode,
    Expression<String?>? latestStatus,
    Expression<String>? caseStatus,
    Expression<bool>? divisionStatus,
    Expression<bool>? isArchived,
    Expression<String?>? archiveCaseNo,
    Expression<int>? caseNo,
    Expression<int?>? section,
    Expression<int?>? trainingStatus,
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
      if (caseStatus != null) 'case_status': caseStatus,
      if (divisionStatus != null) 'division_status': divisionStatus,
      if (isArchived != null) 'is_archived': isArchived,
      if (archiveCaseNo != null) 'archive_case_no': archiveCaseNo,
      if (caseNo != null) 'case_no': caseNo,
      if (section != null) 'section': section,
      if (trainingStatus != null) 'training_status': trainingStatus,
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
      Value<String>? caseStatus,
      Value<bool>? divisionStatus,
      Value<bool>? isArchived,
      Value<String?>? archiveCaseNo,
      Value<int>? caseNo,
      Value<int?>? section,
      Value<int?>? trainingStatus,
      Value<int?>? healthStatus,
      Value<int?>? soldierCase,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return SoldierTableCompanion(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      personnelCode: personnelCode ?? this.personnelCode,
      latestStatus: latestStatus ?? this.latestStatus,
      caseStatus: caseStatus ?? this.caseStatus,
      divisionStatus: divisionStatus ?? this.divisionStatus,
      isArchived: isArchived ?? this.isArchived,
      archiveCaseNo: archiveCaseNo ?? this.archiveCaseNo,
      caseNo: caseNo ?? this.caseNo,
      section: section ?? this.section,
      trainingStatus: trainingStatus ?? this.trainingStatus,
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
    if (caseStatus.present) {
      map['case_status'] = Variable<String>(caseStatus.value);
    }
    if (divisionStatus.present) {
      map['division_status'] = Variable<bool>(divisionStatus.value);
    }
    if (isArchived.present) {
      map['is_archived'] = Variable<bool>(isArchived.value);
    }
    if (archiveCaseNo.present) {
      map['archive_case_no'] = Variable<String?>(archiveCaseNo.value);
    }
    if (caseNo.present) {
      map['case_no'] = Variable<int>(caseNo.value);
    }
    if (section.present) {
      map['section'] = Variable<int?>(section.value);
    }
    if (trainingStatus.present) {
      map['training_status'] = Variable<int?>(trainingStatus.value);
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
          ..write('caseStatus: $caseStatus, ')
          ..write('divisionStatus: $divisionStatus, ')
          ..write('isArchived: $isArchived, ')
          ..write('archiveCaseNo: $archiveCaseNo, ')
          ..write('caseNo: $caseNo, ')
          ..write('section: $section, ')
          ..write('trainingStatus: $trainingStatus, ')
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
  final VerificationMeta _caseStatusMeta = const VerificationMeta('caseStatus');
  @override
  late final GeneratedColumn<String?> caseStatus = GeneratedColumn<String?>(
      'case_status', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _divisionStatusMeta =
      const VerificationMeta('divisionStatus');
  @override
  late final GeneratedColumn<bool?> divisionStatus = GeneratedColumn<bool?>(
      'division_status', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (division_status IN (0, 1))');
  final VerificationMeta _isArchivedMeta = const VerificationMeta('isArchived');
  @override
  late final GeneratedColumn<bool?> isArchived = GeneratedColumn<bool?>(
      'is_archived', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_archived IN (0, 1))');
  final VerificationMeta _archiveCaseNoMeta =
      const VerificationMeta('archiveCaseNo');
  @override
  late final GeneratedColumn<String?> archiveCaseNo = GeneratedColumn<String?>(
      'archive_case_no', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _caseNoMeta = const VerificationMeta('caseNo');
  @override
  late final GeneratedColumn<int?> caseNo = GeneratedColumn<int?>(
      'case_no', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES case_no_table (id)');
  final VerificationMeta _sectionMeta = const VerificationMeta('section');
  @override
  late final GeneratedColumn<int?> section = GeneratedColumn<int?>(
      'section', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES section_table (id)');
  final VerificationMeta _trainingStatusMeta =
      const VerificationMeta('trainingStatus');
  @override
  late final GeneratedColumn<int?> trainingStatus = GeneratedColumn<int?>(
      'training_status', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES training_status_table (id)');
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
        caseStatus,
        divisionStatus,
        isArchived,
        archiveCaseNo,
        caseNo,
        section,
        trainingStatus,
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
    if (data.containsKey('case_status')) {
      context.handle(
          _caseStatusMeta,
          caseStatus.isAcceptableOrUnknown(
              data['case_status']!, _caseStatusMeta));
    } else if (isInserting) {
      context.missing(_caseStatusMeta);
    }
    if (data.containsKey('division_status')) {
      context.handle(
          _divisionStatusMeta,
          divisionStatus.isAcceptableOrUnknown(
              data['division_status']!, _divisionStatusMeta));
    } else if (isInserting) {
      context.missing(_divisionStatusMeta);
    }
    if (data.containsKey('is_archived')) {
      context.handle(
          _isArchivedMeta,
          isArchived.isAcceptableOrUnknown(
              data['is_archived']!, _isArchivedMeta));
    } else if (isInserting) {
      context.missing(_isArchivedMeta);
    }
    if (data.containsKey('archive_case_no')) {
      context.handle(
          _archiveCaseNoMeta,
          archiveCaseNo.isAcceptableOrUnknown(
              data['archive_case_no']!, _archiveCaseNoMeta));
    }
    if (data.containsKey('case_no')) {
      context.handle(_caseNoMeta,
          caseNo.isAcceptableOrUnknown(data['case_no']!, _caseNoMeta));
    } else if (isInserting) {
      context.missing(_caseNoMeta);
    }
    if (data.containsKey('section')) {
      context.handle(_sectionMeta,
          section.isAcceptableOrUnknown(data['section']!, _sectionMeta));
    }
    if (data.containsKey('training_status')) {
      context.handle(
          _trainingStatusMeta,
          trainingStatus.isAcceptableOrUnknown(
              data['training_status']!, _trainingStatusMeta));
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
      requiredDuringInsert: true,
      $customConstraints: 'UNIQUE');
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

class RelativeContactsInfoTableData extends DataClass
    implements Insertable<RelativeContactsInfoTableData> {
  final int? id;
  final String nameAndFamily;
  final String phoneNumber;
  final String? workAddress;
  final String? homeAddress;
  final String? description;
  final int? contactInfo;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  RelativeContactsInfoTableData(
      {this.id,
      required this.nameAndFamily,
      required this.phoneNumber,
      this.workAddress,
      this.homeAddress,
      this.description,
      this.contactInfo,
      this.createdAt,
      this.updatedAt});
  factory RelativeContactsInfoTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return RelativeContactsInfoTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nameAndFamily: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name_and_family'])!,
      phoneNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone_number'])!,
      workAddress: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}work_address']),
      homeAddress: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}home_address']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      contactInfo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}contact_info']),
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
    map['name_and_family'] = Variable<String>(nameAndFamily);
    map['phone_number'] = Variable<String>(phoneNumber);
    if (!nullToAbsent || workAddress != null) {
      map['work_address'] = Variable<String?>(workAddress);
    }
    if (!nullToAbsent || homeAddress != null) {
      map['home_address'] = Variable<String?>(homeAddress);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || contactInfo != null) {
      map['contact_info'] = Variable<int?>(contactInfo);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    return map;
  }

  RelativeContactsInfoTableCompanion toCompanion(bool nullToAbsent) {
    return RelativeContactsInfoTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nameAndFamily: Value(nameAndFamily),
      phoneNumber: Value(phoneNumber),
      workAddress: workAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(workAddress),
      homeAddress: homeAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(homeAddress),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      contactInfo: contactInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(contactInfo),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory RelativeContactsInfoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RelativeContactsInfoTableData(
      id: serializer.fromJson<int?>(json['id']),
      nameAndFamily: serializer.fromJson<String>(json['nameAndFamily']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      workAddress: serializer.fromJson<String?>(json['workAddress']),
      homeAddress: serializer.fromJson<String?>(json['homeAddress']),
      description: serializer.fromJson<String?>(json['description']),
      contactInfo: serializer.fromJson<int?>(json['contactInfo']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'nameAndFamily': serializer.toJson<String>(nameAndFamily),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'workAddress': serializer.toJson<String?>(workAddress),
      'homeAddress': serializer.toJson<String?>(homeAddress),
      'description': serializer.toJson<String?>(description),
      'contactInfo': serializer.toJson<int?>(contactInfo),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  RelativeContactsInfoTableData copyWith(
          {int? id,
          String? nameAndFamily,
          String? phoneNumber,
          String? workAddress,
          String? homeAddress,
          String? description,
          int? contactInfo,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      RelativeContactsInfoTableData(
        id: id ?? this.id,
        nameAndFamily: nameAndFamily ?? this.nameAndFamily,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        workAddress: workAddress ?? this.workAddress,
        homeAddress: homeAddress ?? this.homeAddress,
        description: description ?? this.description,
        contactInfo: contactInfo ?? this.contactInfo,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('RelativeContactsInfoTableData(')
          ..write('id: $id, ')
          ..write('nameAndFamily: $nameAndFamily, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('workAddress: $workAddress, ')
          ..write('homeAddress: $homeAddress, ')
          ..write('description: $description, ')
          ..write('contactInfo: $contactInfo, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nameAndFamily, phoneNumber, workAddress,
      homeAddress, description, contactInfo, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RelativeContactsInfoTableData &&
          other.id == this.id &&
          other.nameAndFamily == this.nameAndFamily &&
          other.phoneNumber == this.phoneNumber &&
          other.workAddress == this.workAddress &&
          other.homeAddress == this.homeAddress &&
          other.description == this.description &&
          other.contactInfo == this.contactInfo &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class RelativeContactsInfoTableCompanion
    extends UpdateCompanion<RelativeContactsInfoTableData> {
  final Value<int?> id;
  final Value<String> nameAndFamily;
  final Value<String> phoneNumber;
  final Value<String?> workAddress;
  final Value<String?> homeAddress;
  final Value<String?> description;
  final Value<int?> contactInfo;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const RelativeContactsInfoTableCompanion({
    this.id = const Value.absent(),
    this.nameAndFamily = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.workAddress = const Value.absent(),
    this.homeAddress = const Value.absent(),
    this.description = const Value.absent(),
    this.contactInfo = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  RelativeContactsInfoTableCompanion.insert({
    this.id = const Value.absent(),
    required String nameAndFamily,
    required String phoneNumber,
    this.workAddress = const Value.absent(),
    this.homeAddress = const Value.absent(),
    this.description = const Value.absent(),
    this.contactInfo = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : nameAndFamily = Value(nameAndFamily),
        phoneNumber = Value(phoneNumber);
  static Insertable<RelativeContactsInfoTableData> custom({
    Expression<int?>? id,
    Expression<String>? nameAndFamily,
    Expression<String>? phoneNumber,
    Expression<String?>? workAddress,
    Expression<String?>? homeAddress,
    Expression<String?>? description,
    Expression<int?>? contactInfo,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nameAndFamily != null) 'name_and_family': nameAndFamily,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (workAddress != null) 'work_address': workAddress,
      if (homeAddress != null) 'home_address': homeAddress,
      if (description != null) 'description': description,
      if (contactInfo != null) 'contact_info': contactInfo,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  RelativeContactsInfoTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? nameAndFamily,
      Value<String>? phoneNumber,
      Value<String?>? workAddress,
      Value<String?>? homeAddress,
      Value<String?>? description,
      Value<int?>? contactInfo,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return RelativeContactsInfoTableCompanion(
      id: id ?? this.id,
      nameAndFamily: nameAndFamily ?? this.nameAndFamily,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      workAddress: workAddress ?? this.workAddress,
      homeAddress: homeAddress ?? this.homeAddress,
      description: description ?? this.description,
      contactInfo: contactInfo ?? this.contactInfo,
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
    if (nameAndFamily.present) {
      map['name_and_family'] = Variable<String>(nameAndFamily.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (workAddress.present) {
      map['work_address'] = Variable<String?>(workAddress.value);
    }
    if (homeAddress.present) {
      map['home_address'] = Variable<String?>(homeAddress.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (contactInfo.present) {
      map['contact_info'] = Variable<int?>(contactInfo.value);
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
    return (StringBuffer('RelativeContactsInfoTableCompanion(')
          ..write('id: $id, ')
          ..write('nameAndFamily: $nameAndFamily, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('workAddress: $workAddress, ')
          ..write('homeAddress: $homeAddress, ')
          ..write('description: $description, ')
          ..write('contactInfo: $contactInfo, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $RelativeContactsInfoTableTable extends RelativeContactsInfoTable
    with
        TableInfo<$RelativeContactsInfoTableTable,
            RelativeContactsInfoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RelativeContactsInfoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameAndFamilyMeta =
      const VerificationMeta('nameAndFamily');
  @override
  late final GeneratedColumn<String?> nameAndFamily = GeneratedColumn<String?>(
      'name_and_family', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String?> phoneNumber = GeneratedColumn<String?>(
      'phone_number', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _workAddressMeta =
      const VerificationMeta('workAddress');
  @override
  late final GeneratedColumn<String?> workAddress = GeneratedColumn<String?>(
      'work_address', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _homeAddressMeta =
      const VerificationMeta('homeAddress');
  @override
  late final GeneratedColumn<String?> homeAddress = GeneratedColumn<String?>(
      'home_address', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _contactInfoMeta =
      const VerificationMeta('contactInfo');
  @override
  late final GeneratedColumn<int?> contactInfo = GeneratedColumn<int?>(
      'contact_info', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES contact_info_table (id)');
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
        nameAndFamily,
        phoneNumber,
        workAddress,
        homeAddress,
        description,
        contactInfo,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'relative_contacts_info_table';
  @override
  String get actualTableName => 'relative_contacts_info_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<RelativeContactsInfoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name_and_family')) {
      context.handle(
          _nameAndFamilyMeta,
          nameAndFamily.isAcceptableOrUnknown(
              data['name_and_family']!, _nameAndFamilyMeta));
    } else if (isInserting) {
      context.missing(_nameAndFamilyMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
    }
    if (data.containsKey('work_address')) {
      context.handle(
          _workAddressMeta,
          workAddress.isAcceptableOrUnknown(
              data['work_address']!, _workAddressMeta));
    }
    if (data.containsKey('home_address')) {
      context.handle(
          _homeAddressMeta,
          homeAddress.isAcceptableOrUnknown(
              data['home_address']!, _homeAddressMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('contact_info')) {
      context.handle(
          _contactInfoMeta,
          contactInfo.isAcceptableOrUnknown(
              data['contact_info']!, _contactInfoMeta));
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
  RelativeContactsInfoTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return RelativeContactsInfoTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RelativeContactsInfoTableTable createAlias(String alias) {
    return $RelativeContactsInfoTableTable(attachedDatabase, alias);
  }
}

abstract class _$SoldierDatabase extends GeneratedDatabase {
  _$SoldierDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $AnnualOvertimeTableTable annualOvertimeTable =
      $AnnualOvertimeTableTable(this);
  late final $AuditTableTable auditTable = $AuditTableTable(this);
  late final $ContactInfoTableTable contactInfoTable =
      $ContactInfoTableTable(this);
  late final $DailyAbsenceOvertimeTableTable dailyAbsenceOvertimeTable =
      $DailyAbsenceOvertimeTableTable(this);
  late final $VacationsTableTable vacationsTable = $VacationsTableTable(this);
  late final $DailyVacationTableTable dailyVacationTable =
      $DailyVacationTableTable(this);
  late final $ViolationsOvertimeTableTable violationsOvertimeTable =
      $ViolationsOvertimeTableTable(this);
  late final $DisciplinaryOvertimeTableTable disciplinaryOvertimeTable =
      $DisciplinaryOvertimeTableTable(this);
  late final $EducationalInfoTableTable educationalInfoTable =
      $EducationalInfoTableTable(this);
  late final $FurtherInfoTableTable furtherInfoTable =
      $FurtherInfoTableTable(this);
  late final $HealthStatusTableTable healthStatusTable =
      $HealthStatusTableTable(this);
  late final $HourlyVacationTableTable hourlyVacationTable =
      $HourlyVacationTableTable(this);
  late final $OperationalServiceDeficitRecordTableTable
      operationalServiceDeficitRecordTable =
      $OperationalServiceDeficitRecordTableTable(this);
  late final $OvertimeTableTable overtimeTable = $OvertimeTableTable(this);
  late final $CaseNoTableTable caseNoTable = $CaseNoTableTable(this);
  late final $UnitPropertiesTableTable unitPropertiesTable =
      $UnitPropertiesTableTable(this);
  late final $SectionTableTable sectionTable = $SectionTableTable(this);
  late final $TrainingStatusTableTable trainingStatusTable =
      $TrainingStatusTableTable(this);
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
  late final $RelativeContactsInfoTableTable relativeContactsInfoTable =
      $RelativeContactsInfoTableTable(this);
  late final AnnualOvertimeDAO annualOvertimeDAO =
      AnnualOvertimeDAO(this as SoldierDatabase);
  late final AuditDAO auditDAO = AuditDAO(this as SoldierDatabase);
  late final ContactInfoDAO contactInfoDAO =
      ContactInfoDAO(this as SoldierDatabase);
  late final DailyAbsenceOvertimeDAO dailyAbsenceOvertimeDAO =
      DailyAbsenceOvertimeDAO(this as SoldierDatabase);
  late final DailyVacationDAO dailyVacationDAO =
      DailyVacationDAO(this as SoldierDatabase);
  late final DisciplinaryOvertimeDAO disciplinaryOvertimeDAO =
      DisciplinaryOvertimeDAO(this as SoldierDatabase);
  late final EducationalInfoDAO educationalInfoDAO =
      EducationalInfoDAO(this as SoldierDatabase);
  late final FurtherInfoDAO furtherInfoDAO =
      FurtherInfoDAO(this as SoldierDatabase);
  late final HealthStatusDAO healthStatusDAO =
      HealthStatusDAO(this as SoldierDatabase);
  late final HourlyVacationDAO hourlyVacationDAO =
      HourlyVacationDAO(this as SoldierDatabase);
  late final OperationalServiceDeficitRecordDAO
      operationalServiceDeficitRecordDAO =
      OperationalServiceDeficitRecordDAO(this as SoldierDatabase);
  late final OvertimeDAO overtimeDAO = OvertimeDAO(this as SoldierDatabase);
  late final PersonalInfoDAO personalInfoDAO =
      PersonalInfoDAO(this as SoldierDatabase);
  late final RankDAO rankDAO = RankDAO(this as SoldierDatabase);
  late final RelativeContactsInfoDAO relativeContactsInfoDAO =
      RelativeContactsInfoDAO(this as SoldierDatabase);
  late final SectionDAO sectionDAO = SectionDAO(this as SoldierDatabase);
  late final ServiceDeficitRecordDAO serviceDeficitRecordDAO =
      ServiceDeficitRecordDAO(this as SoldierDatabase);
  late final ServiceDeficitDAO serviceDeficitDAO =
      ServiceDeficitDAO(this as SoldierDatabase);
  late final SoldierCaseDAO soldierCaseDAO =
      SoldierCaseDAO(this as SoldierDatabase);
  late final SoldierDAO soldierDAO = SoldierDAO(this as SoldierDatabase);
  late final TrainingStatusDAO trainingStatusDAO =
      TrainingStatusDAO(this as SoldierDatabase);
  late final UnitPropertiesDAO unitPropertiesDAO =
      UnitPropertiesDAO(this as SoldierDatabase);
  late final VacationsDAO vacationsDAO = VacationsDAO(this as SoldierDatabase);
  late final ViolationsOvertimeDAO violationsOvertimeDAO =
      ViolationsOvertimeDAO(this as SoldierDatabase);
  late final CaseNoDAO caseNoDAO = CaseNoDAO(this as SoldierDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        annualOvertimeTable,
        auditTable,
        contactInfoTable,
        dailyAbsenceOvertimeTable,
        vacationsTable,
        dailyVacationTable,
        violationsOvertimeTable,
        disciplinaryOvertimeTable,
        educationalInfoTable,
        furtherInfoTable,
        healthStatusTable,
        hourlyVacationTable,
        operationalServiceDeficitRecordTable,
        overtimeTable,
        caseNoTable,
        unitPropertiesTable,
        sectionTable,
        trainingStatusTable,
        serviceDeficitRecordTable,
        serviceDeficitTable,
        rankTable,
        soldierCaseTable,
        soldierTable,
        personalInfoTable,
        relativeContactsInfoTable
      ];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$AnnualOvertimeDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
}
mixin _$AuditDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $AuditTableTable get auditTable => attachedDatabase.auditTable;
}
mixin _$CaseNoDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $CaseNoTableTable get caseNoTable => attachedDatabase.caseNoTable;
}
mixin _$ContactInfoDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ContactInfoTableTable get contactInfoTable =>
      attachedDatabase.contactInfoTable;
  $FurtherInfoTableTable get furtherInfoTable =>
      attachedDatabase.furtherInfoTable;
  $EducationalInfoTableTable get educationalInfoTable =>
      attachedDatabase.educationalInfoTable;
  $CaseNoTableTable get caseNoTable => attachedDatabase.caseNoTable;
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
  $TrainingStatusTableTable get trainingStatusTable =>
      attachedDatabase.trainingStatusTable;
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
  $DisciplinaryOvertimeTableTable get disciplinaryOvertimeTable =>
      attachedDatabase.disciplinaryOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $VacationsTableTable get vacationsTable => attachedDatabase.vacationsTable;
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
mixin _$DailyAbsenceOvertimeDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
}
mixin _$DailyVacationDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $VacationsTableTable get vacationsTable => attachedDatabase.vacationsTable;
  $DailyVacationTableTable get dailyVacationTable =>
      attachedDatabase.dailyVacationTable;
}
mixin _$DisciplinaryOvertimeDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
  $DisciplinaryOvertimeTableTable get disciplinaryOvertimeTable =>
      attachedDatabase.disciplinaryOvertimeTable;
}
mixin _$EducationalInfoDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $EducationalInfoTableTable get educationalInfoTable =>
      attachedDatabase.educationalInfoTable;
  $FurtherInfoTableTable get furtherInfoTable =>
      attachedDatabase.furtherInfoTable;
  $ContactInfoTableTable get contactInfoTable =>
      attachedDatabase.contactInfoTable;
  $CaseNoTableTable get caseNoTable => attachedDatabase.caseNoTable;
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
  $TrainingStatusTableTable get trainingStatusTable =>
      attachedDatabase.trainingStatusTable;
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
  $DisciplinaryOvertimeTableTable get disciplinaryOvertimeTable =>
      attachedDatabase.disciplinaryOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $VacationsTableTable get vacationsTable => attachedDatabase.vacationsTable;
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
mixin _$FurtherInfoDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $FurtherInfoTableTable get furtherInfoTable =>
      attachedDatabase.furtherInfoTable;
  $ContactInfoTableTable get contactInfoTable =>
      attachedDatabase.contactInfoTable;
  $EducationalInfoTableTable get educationalInfoTable =>
      attachedDatabase.educationalInfoTable;
  $CaseNoTableTable get caseNoTable => attachedDatabase.caseNoTable;
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
  $TrainingStatusTableTable get trainingStatusTable =>
      attachedDatabase.trainingStatusTable;
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
  $DisciplinaryOvertimeTableTable get disciplinaryOvertimeTable =>
      attachedDatabase.disciplinaryOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $VacationsTableTable get vacationsTable => attachedDatabase.vacationsTable;
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
mixin _$HealthStatusDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
}
mixin _$HourlyVacationDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $VacationsTableTable get vacationsTable => attachedDatabase.vacationsTable;
  $HourlyVacationTableTable get hourlyVacationTable =>
      attachedDatabase.hourlyVacationTable;
}
mixin _$OvertimeDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
  $DisciplinaryOvertimeTableTable get disciplinaryOvertimeTable =>
      attachedDatabase.disciplinaryOvertimeTable;
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
  $CaseNoTableTable get caseNoTable => attachedDatabase.caseNoTable;
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
  $TrainingStatusTableTable get trainingStatusTable =>
      attachedDatabase.trainingStatusTable;
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
  $DisciplinaryOvertimeTableTable get disciplinaryOvertimeTable =>
      attachedDatabase.disciplinaryOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $VacationsTableTable get vacationsTable => attachedDatabase.vacationsTable;
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
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
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
  $CaseNoTableTable get caseNoTable => attachedDatabase.caseNoTable;
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
  $TrainingStatusTableTable get trainingStatusTable =>
      attachedDatabase.trainingStatusTable;
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
  $DisciplinaryOvertimeTableTable get disciplinaryOvertimeTable =>
      attachedDatabase.disciplinaryOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $VacationsTableTable get vacationsTable => attachedDatabase.vacationsTable;
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
mixin _$SoldierDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $CaseNoTableTable get caseNoTable => attachedDatabase.caseNoTable;
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
  $TrainingStatusTableTable get trainingStatusTable =>
      attachedDatabase.trainingStatusTable;
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
  $DisciplinaryOvertimeTableTable get disciplinaryOvertimeTable =>
      attachedDatabase.disciplinaryOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $VacationsTableTable get vacationsTable => attachedDatabase.vacationsTable;
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
  $FurtherInfoTableTable get furtherInfoTable =>
      attachedDatabase.furtherInfoTable;
  $ContactInfoTableTable get contactInfoTable =>
      attachedDatabase.contactInfoTable;
  $EducationalInfoTableTable get educationalInfoTable =>
      attachedDatabase.educationalInfoTable;
  $PersonalInfoTableTable get personalInfoTable =>
      attachedDatabase.personalInfoTable;
}
mixin _$TrainingStatusDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $TrainingStatusTableTable get trainingStatusTable =>
      attachedDatabase.trainingStatusTable;
  $CaseNoTableTable get caseNoTable => attachedDatabase.caseNoTable;
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
  $HealthStatusTableTable get healthStatusTable =>
      attachedDatabase.healthStatusTable;
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
  $DisciplinaryOvertimeTableTable get disciplinaryOvertimeTable =>
      attachedDatabase.disciplinaryOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $VacationsTableTable get vacationsTable => attachedDatabase.vacationsTable;
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
mixin _$UnitPropertiesDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
  $SectionTableTable get sectionTable => attachedDatabase.sectionTable;
}
mixin _$VacationsDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ViolationsOvertimeTableTable get violationsOvertimeTable =>
      attachedDatabase.violationsOvertimeTable;
  $DailyAbsenceOvertimeTableTable get dailyAbsenceOvertimeTable =>
      attachedDatabase.dailyAbsenceOvertimeTable;
  $DisciplinaryOvertimeTableTable get disciplinaryOvertimeTable =>
      attachedDatabase.disciplinaryOvertimeTable;
  $AnnualOvertimeTableTable get annualOvertimeTable =>
      attachedDatabase.annualOvertimeTable;
  $OvertimeTableTable get overtimeTable => attachedDatabase.overtimeTable;
  $VacationsTableTable get vacationsTable => attachedDatabase.vacationsTable;
  $ServiceDeficitRecordTableTable get serviceDeficitRecordTable =>
      attachedDatabase.serviceDeficitRecordTable;
  $OperationalServiceDeficitRecordTableTable
      get operationalServiceDeficitRecordTable =>
          attachedDatabase.operationalServiceDeficitRecordTable;
  $ServiceDeficitTableTable get serviceDeficitTable =>
      attachedDatabase.serviceDeficitTable;
  $RankTableTable get rankTable => attachedDatabase.rankTable;
  $UnitPropertiesTableTable get unitPropertiesTable =>
      attachedDatabase.unitPropertiesTable;
  $SoldierCaseTableTable get soldierCaseTable =>
      attachedDatabase.soldierCaseTable;
  $DailyVacationTableTable get dailyVacationTable =>
      attachedDatabase.dailyVacationTable;
  $HourlyVacationTableTable get hourlyVacationTable =>
      attachedDatabase.hourlyVacationTable;
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
mixin _$RelativeContactsInfoDAOMixin on DatabaseAccessor<SoldierDatabase> {
  $ContactInfoTableTable get contactInfoTable =>
      attachedDatabase.contactInfoTable;
  $RelativeContactsInfoTableTable get relativeContactsInfoTable =>
      attachedDatabase.relativeContactsInfoTable;
}
