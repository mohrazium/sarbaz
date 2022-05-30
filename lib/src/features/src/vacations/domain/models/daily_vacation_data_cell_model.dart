class DailyVacationDataCellModel {
  final String? id;
  final String? rowCount;
  final String? vacationType;
  final String? amount;
  final String? startDate;
  final String? endDate;
  final String? description;
  DailyVacationDataCellModel({
    this.id,
    this.rowCount,
    this.vacationType,
    this.amount,
    this.startDate,
    this.endDate,
    this.description,
  });

  @override
  String toString() {
    return 'DailyVacationDataCellModel(id: $id, count: $rowCount, vacationType: $vacationType, amount: $amount, startDate: $startDate, endDate: $endDate, description: $description)';
  }
}
