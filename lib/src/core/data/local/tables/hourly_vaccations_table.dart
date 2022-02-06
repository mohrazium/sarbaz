// import 'dart:convert';

// import 'package:floor/floor.dart';
// import 'package:flutter/material.dart';

// import 'package:sarbaz/src/core/data/local/tables/tables.dart';

// @Entity(
//   tableName: 'hourly_vaccations_table',
//   primaryKeys: ['id'],
//   foreignKeys: [
//     ForeignKey(
//         entity: SoldierInfoTable,
//         parentColumns: ['id'],
//         childColumns: ['soldier_info_id'],
//         onDelete: ForeignKeyAction.cascade,
//         onUpdate: ForeignKeyAction.cascade),
//   ],
// )
// class HourlyVaccationsTable extends Audit {
//   @PrimaryKey(autoGenerate: true)
//   final int? id;
//   @ColumnInfo(name: "date")
//   final String date;
//   @ColumnInfo(name: "start_time")
//   final String startTime;
//   @ColumnInfo(name: "end_time")
//   final String endTime;
//   @ColumnInfo(name: "total_time")
//   final String totalTime;
//   @ColumnInfo(name: "soldier_info_id")
//   final int soldierInfoId;

import 'package:drift/drift.dart';

import 'tables.dart';

class HourlyVaccationsTable extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime()();
  IntColumn get totalTime => integer()();
  TextColumn get vacctionType => text()();
  IntColumn get soldierInfoId => integer().references(SoldierInfoTable, #id)();
}

// //  var format = DateFormat("HH:mm:ss",);

// // var one = format.parse("08:23:00");
// // var two = format.parse("10:56:00");

// // print(two.difference(one));

// // TimeOfDay _startTime = TimeOfDay(
//   //     hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));
