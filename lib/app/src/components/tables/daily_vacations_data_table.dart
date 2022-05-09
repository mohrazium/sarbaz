part of components;

int _dailyVacationsDataRowsPerPage = 4;

List<DailyVacationDataCellModel> _paginatedDailyVacations = List.empty(growable: false);

class DailyVacationsDataTable extends StatelessWidget {
  final DailyVacationDataSource dataSource;
  final DataGridController? controller;
  final DataGridCellTapCallback? onCellTap;
  final DataGridCellDoubleTapCallback? onCellDoubleTap;

  final DataGridCellTapCallback? onCellSecondaryTap;
  final DataGridCellLongPressCallback? onCellLongPress;

  const DailyVacationsDataTable({
    Key? key,
    required this.dataSource,
    this.controller,
    this.onCellTap,
    this.onCellDoubleTap,
    this.onCellSecondaryTap,
    this.onCellLongPress,
  }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height - 200,
        child: LayoutBuilder(builder: (context, constraint) {
          return Column(children: [
            SizedBox(
                height: constraint.maxHeight - _dataPagerHeight,
                width: constraint.maxWidth,
                child: _buildDataGrid(constraint: constraint, dataSource: dataSource)),
            SizedBox(
                height: _dataPagerHeight,
                child: SfDataPager(
                  delegate: dataSource,
                  pageCount: dataSource.dailyVacationDataList.length >= 4
                      ? (dataSource.dailyVacationDataList.length / _dailyVacationsDataRowsPerPage).ceilToDouble()
                      : 1,
                  direction: Axis.horizontal,
                  // onPageNavigationEnd: (i) => setState((() {
                  //   print("nav $i");
                  // })),
                  // onRowsPerPageChanged: (i) => setState((() {
                  //   print("per$i");
                  //   _dailyVacationsDataRowsPerPage = i ?? 4;
                  // })),
                ))
          ]);
        }));
  }

  _buildDataGrid({required BoxConstraints constraint, required DailyVacationDataSource dataSource}) {
    return SfDataGridTheme(
      data: SfDataGridThemeData(
        columnResizeIndicatorStrokeWidth: 1,
        rowHoverColor: Colorize.primaryColor.shade200,
        selectionColor: Colorize.primaryColor.shade400,
        headerColor: Colorize.primaryColor,
        sortIconColor: Colorize.backgroundColorShade400,
      ),
      child: SfDataGrid(
        selectionMode: SelectionMode.singleDeselect,
        navigationMode: GridNavigationMode.row,
        controller: controller,
        allowSorting: true,
        source: dataSource,
        columnWidthMode: ColumnWidthMode.fill,
        onCellTap: onCellTap,
        onCellDoubleTap: onCellDoubleTap,
        onCellLongPress: onCellLongPress,
        onCellSecondaryTap: onCellSecondaryTap,
        selectionManager: CustomSelectionManager(),
        onQueryRowHeight: (details) {
          return details.getIntrinsicRowHeight(details.rowIndex);
        },
        columns: <GridColumn>[
          GridColumn(
              columnName: 'rowCount',
              label: Container(
                  decoration: const BoxDecoration(
                      color: Colorize.primaryColor,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(kBorderRadius))),
                  padding: const EdgeInsets.all(kPadding),
                  alignment: Alignment.center,
                  child: const Text(Strings.rowCount,
                      softWrap: true,
                      style: TextStyle(
                        color: Colorize.backgroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .8,
                        fontSize: 15,
                      )))),
          GridColumn(
              columnName: 'vacationType',
              label: Container(
                  decoration: const BoxDecoration(
                      color: Colorize.primaryColor,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(kBorderRadius))),
                  padding: const EdgeInsets.all(kPadding),
                  alignment: Alignment.center,
                  child: const Text(Strings.vacationType,
                      softWrap: true,
                      style: TextStyle(
                        color: Colorize.backgroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .8,
                        fontSize: 15,
                      )))),
          GridColumn(
              columnName: 'daysCount',
              label: Container(
                  color: Colorize.primaryColor,
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text(Strings.daysCount,
                      softWrap: true,
                      style: TextStyle(
                        color: Colorize.backgroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .8,
                        fontSize: 15,
                      )))),
          GridColumn(
              columnName: 'startDate',
              label: Container(
                  color: Colorize.primaryColor,
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text(
                    Strings.startDate,
                    style: TextStyle(
                      color: Colorize.backgroundColor,
                      fontFamily: Fonts.sahelFontFamily,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .8,
                      fontSize: 15,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
              columnName: 'endDate',
              label: Container(
                  color: Colorize.primaryColor,
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text(Strings.endDate,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                        color: Colorize.backgroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .8,
                        fontSize: 15,
                      )))),
          GridColumn(
              columnName: 'id',
              visible: false,
              label:
                  Container(padding: const EdgeInsets.all(8.0), alignment: Alignment.center, child: const Text("id"))),
        ],
      ),
    );
  }
}

class DailyVacationDataSource extends DataGridSource {
  final List<DailyVacationDataCellModel> dailyVacationDataList;
  DailyVacationDataSource({required this.dailyVacationDataList}) {
    var len = dailyVacationDataList.length;
    _paginatedDailyVacations = dailyVacationDataList.getRange(0, len >= 4 ? 4 : len).toList(growable: false);
    buildPaginatedDataGridRows();
  }

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    Color getRowBackgroundColor() {
      final int index = effectiveRows.indexOf(row);
      if (index % 2 != 0) {
        return Colorize.primaryColorShade100;
      }

      return Colors.transparent;
    }

    return DataGridRowAdapter(
        color: getRowBackgroundColor(),
        cells: row.getCells().map<Widget>((dataGridCell) {
          if (dataGridCell.columnName == Strings.rowCount) {
            return Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Center(
                  child: Text(convertEnToFa(dataGridCell.value),
                      softWrap: true,
                      style: const TextStyle(
                        color: Colorize.foregroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.normal,
                        letterSpacing: .8,
                        fontSize: 15,
                      )),
                ));
          } else if (dataGridCell.columnName == Strings.vacationType) {
            return Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Center(
                  child: Text(convertEnToFa(dataGridCell.value),
                      style: const TextStyle(
                        color: Colorize.foregroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.normal,
                        letterSpacing: .8,
                        fontSize: 15,
                      )),
                ));
          } else if (dataGridCell.columnName == Strings.daysCount) {
            return Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Center(
                  child: Text(convertEnToFa(dataGridCell.value),
                      softWrap: true,
                      style: const TextStyle(
                        color: Colorize.foregroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.normal,
                        letterSpacing: .8,
                        fontSize: 15,
                      )),
                ));
          } else if (dataGridCell.columnName == Strings.startDate) {
            return Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Center(
                  child: Text(convertEnToFa(dataGridCell.value),
                      softWrap: true,
                      style: const TextStyle(
                        color: Colorize.foregroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.normal,
                        letterSpacing: .8,
                        fontSize: 15,
                      )),
                ));
          } else if (dataGridCell.columnName == Strings.endDate) {
            return Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Center(
                  child: Text(convertEnToFa(dataGridCell.value),
                      softWrap: true,
                      style: const TextStyle(
                        color: Colorize.foregroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.normal,
                        letterSpacing: .8,
                        fontSize: 15,
                      )),
                ));
          } else {
            return Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Center(
                  child: Text(convertEnToFa(dataGridCell.value),
                      softWrap: true,
                      style: const TextStyle(
                        color: Colorize.foregroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.normal,
                        letterSpacing: .8,
                        fontSize: 15,
                      )),
                ));
          }
        }).toList());
  }

  @override
  Future<bool> handlePageChange(int oldPageIndex, int newPageIndex) async {

    int startIndex = newPageIndex * _dailyVacationsDataRowsPerPage;
    int endIndex = startIndex + _dailyVacationsDataRowsPerPage;

    if (startIndex < dailyVacationDataList.length && endIndex <= dailyVacationDataList.length) {
      _paginatedDailyVacations = dailyVacationDataList.getRange(startIndex, endIndex).toList(growable: false);
      buildPaginatedDataGridRows();
      notifyListeners();
    } else {
      _paginatedDailyVacations = dailyVacationDataList.getRange(startIndex, dailyVacationDataList.length).toList(growable: false);
      buildPaginatedDataGridRows();
      notifyListeners();
    }
    return true;
  }

  void buildPaginatedDataGridRows() {
    dataGridRows = _paginatedDailyVacations.map<DataGridRow>((dataGridRow) {
      return DataGridRow(cells: [
        DataGridCell(columnName: Strings.rowCount, value: dataGridRow.rowCount ?? ""),
        DataGridCell(columnName: Strings.vacationType, value: dataGridRow.vacationType ?? ""),
        DataGridCell(columnName: Strings.daysCount, value: dataGridRow.amount ?? ""),
        DataGridCell(columnName: Strings.startDate, value: dataGridRow.startDate),
        DataGridCell(columnName: Strings.endDate, value: dataGridRow.endDate ?? ""),
        DataGridCell(columnName: "id", value: "${dataGridRow.id ?? 0}"),
      ]);
    }).toList(growable: false);
  }
}
