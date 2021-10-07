import 'package:floor/floor.dart';
import 'package:sarbaz/src/core/config/constants/constants.dart';

class Audit {
  @PrimaryKey()
  final int? id;

  @ColumnInfo(name: DbConstants.createTime)
  final String? createTime;

  @ColumnInfo(name: DbConstants.updateTime)
  final String? updateTime;

  Audit({
    this.id,
    this.updateTime,
    String? createTime,
  }) : this.createTime = createTime ?? DateTime.now().toString();

  List<Object> get props => [];
}
