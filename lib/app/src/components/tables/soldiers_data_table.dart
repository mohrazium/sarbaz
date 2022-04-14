part of components;

const int _rowsPerPage = 15;
const double _dataPagerHeight = 60;
List<SoldiersDataCellModel> soldiersList = List.empty(growable: true);
List<SoldiersDataCellModel> _paginatedSoldiers = List.empty(growable: true);



class SoldiersDataTable extends StatefulWidget {
  final List<SoldiersDataCellModel> soldiers;
  final DataGridController? controller;
  final DataGridCellTapCallback? onCellTap;
  final DataGridCellDoubleTapCallback? onCellDoubleTap;

  final DataGridCellTapCallback? onCellSecondaryTap;
  final DataGridCellLongPressCallback? onCellLongPress;

  const SoldiersDataTable({
    Key? key,
    required this.soldiers,
    this.controller,
    this.onCellTap,
    this.onCellSecondaryTap,
    this.onCellLongPress,
    this.onCellDoubleTap,
  }) : super(key: key);

  @override
  _SoldiersDataTableState createState() => _SoldiersDataTableState();
}

class _SoldiersDataTableState extends State<SoldiersDataTable> {
  late final BridgeController bridgeController;
  @override
  void initState() {
    super.initState();
    bridgeController = Get.find<BridgeController>();
    soldiersList = widget.soldiers;
    bridgeController.setSoldiersDataSource(soldiersList);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height - 200,
        child: LayoutBuilder(builder: (context, constraint) {
          return Column(children: [
            SizedBox(
                height: constraint.maxHeight - _dataPagerHeight,
                width: constraint.maxWidth,
                child: _buildDataGrid(
                    constraint: constraint,
                    dataSource: bridgeController.soldiersDataSource.value)),
            SizedBox(
                height: _dataPagerHeight,
                child: SfDataPager(
                  delegate: bridgeController.soldiersDataSource.value,
                  pageCount: soldiersList.length >= 20
                      ? soldiersList.length / _rowsPerPage
                      : 1,
                  direction: Axis.horizontal,
                ))
          ]);
        }));
  }

  _buildDataGrid(
      {required BoxConstraints constraint,
      required SoldiersDataSource dataSource}) {
    return SfDataGridTheme(
      data: SfDataGridThemeData(
        rowHoverColor: Colorize.primaryColor.shade200,
        selectionColor: Colorize.primaryColor.shade400,
        headerColor: Colorize.primaryColor,
        sortIconColor: Colorize.backgroundColorShade400,
      ),
      child: SfDataGrid(
        selectionMode: SelectionMode.singleDeselect,
        navigationMode: GridNavigationMode.row,
        controller: widget.controller,
        allowSorting: true,
        source: dataSource,
        columnWidthMode: ColumnWidthMode.fill,
        onCellTap: widget.onCellTap,
        onCellDoubleTap: widget.onCellDoubleTap,
        onCellLongPress: widget.onCellLongPress,
        onCellSecondaryTap: widget.onCellSecondaryTap,
        selectionManager: CustomSelectionManager(),
        columns: <GridColumn>[
          GridColumn(
              columnName: 'caseNo',
              label: Container(
                  decoration: const BoxDecoration(
                      color: Colorize.primaryColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(kBorderRadius))),
                  padding: const EdgeInsets.all(kPadding),
                  alignment: Alignment.center,
                  child: const Text(Strings.caseNo,
                      style: TextStyle(
                        color: Colorize.backgroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .8,
                        fontSize: 15,
                      )))),
          GridColumn(
              columnName: 'personnelCode',
              label: Container(
                  decoration: const BoxDecoration(
                      color: Colorize.primaryColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(kBorderRadius))),
                  padding: const EdgeInsets.all(kPadding),
                  alignment: Alignment.center,
                  child: const Text(Strings.personnelCode,
                      style: TextStyle(
                        color: Colorize.backgroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .8,
                        fontSize: 15,
                      )))),
          GridColumn(
              columnName: 'nationalCode',
              label: Container(
                  color: Colorize.primaryColor,
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text(Strings.nationalCode,
                      style: TextStyle(
                        color: Colorize.backgroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .8,
                        fontSize: 15,
                      )))),
          GridColumn(
              columnName: 'firstName',
              label: Container(
                  color: Colorize.primaryColor,
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text(
                    Strings.firstName,
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
              columnName: 'lastName',
              label: Container(
                  color: Colorize.primaryColor,
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text(Strings.lastName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colorize.backgroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .8,
                        fontSize: 15,
                      )))),
          GridColumn(
              columnName: 'fatherName',
              label: Container(
                  color: Colorize.primaryColor,
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text(Strings.fatherName,
                      style: TextStyle(
                        color: Colorize.backgroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .8,
                        fontSize: 15,
                      )))),
          GridColumn(
              columnName: 'mobileNumber',
              label: Container(
                  color: Colorize.primaryColor,
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text(Strings.mobileNumber,
                      style: TextStyle(
                        color: Colorize.backgroundColor,
                        fontFamily: Fonts.sahelFontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .8,
                        fontSize: 15,
                      )))),
          GridColumn(
              columnName: 'latestStatus',
              label: Container(
                  decoration: const BoxDecoration(
                      color: Colorize.primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kBorderRadius))),
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text(Strings.latestStatusOfSoldier,
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
              label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text("id"))),
        ],
      ),
    );
  }
}

class SoldiersDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  SoldiersDataSource({required List<SoldiersDataCellModel> soldierDataList}) {
    var len = soldierDataList.length;
    _paginatedSoldiers =
        soldiersList.getRange(0, len >= 19 ? 19 : len).toList(growable: false);
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
          if (dataGridCell.columnName == Strings.caseNo) {
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
          } else if (dataGridCell.columnName == Strings.personnelCode) {
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
          } else if (dataGridCell.columnName == Strings.nationalCode) {
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
          } else if (dataGridCell.columnName == Strings.firstName) {
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
          } else if (dataGridCell.columnName == Strings.lastName) {
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
          } else if (dataGridCell.columnName == Strings.fatherName) {
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
          } else if (dataGridCell.columnName == Strings.latestStatusOfSoldier) {
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
          } else if (dataGridCell.columnName == Strings.mobileNumber) {
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
          } else {
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
          }
        }).toList());
  }

  @override
  Future<bool> handlePageChange(int oldPageIndex, int newPageIndex) async {
    int startIndex = newPageIndex * _rowsPerPage;
    int endIndex = startIndex + _rowsPerPage;
    if (startIndex < soldiersList.length && endIndex <= soldiersList.length) {
      _paginatedSoldiers =
          soldiersList.getRange(startIndex, endIndex).toList(growable: false);
      buildPaginatedDataGridRows();
      notifyListeners();
    } else {
      _paginatedSoldiers = [];
    }

    return true;
  }

  void buildPaginatedDataGridRows() {
    dataGridRows = _paginatedSoldiers.map<DataGridRow>((dataGridRow) {
      return DataGridRow(cells: [
        DataGridCell(
            columnName: Strings.caseNo, value: dataGridRow.caseNo ?? "-"),
        DataGridCell(
            columnName: Strings.personnelCode,
            value: dataGridRow.personnelCode ?? "-"),
        DataGridCell(
            columnName: Strings.nationalCode, value: dataGridRow.nationalCode??"-"),
        DataGridCell(
            columnName: Strings.firstName, value: dataGridRow.firstName??"-"),
        DataGridCell(columnName: Strings.lastName, value: dataGridRow.lastName),
        DataGridCell(
            columnName: Strings.fatherName,
            value: dataGridRow.fatherName ?? "-"),
        DataGridCell(
            columnName: Strings.mobileNumber,
            value: dataGridRow.mobileNumber ?? "-"),
        DataGridCell(
            columnName: Strings.latestStatusOfSoldier,
            value: dataGridRow.soldierStatus ?? "-"),
        DataGridCell(columnName: "id", value: "${dataGridRow.id ?? 0}"),
      ]);
    }).toList(growable: false);
  }
}

class CustomSelectionManager extends RowSelectionManager {
  @override
  void handleKeyEvent(RawKeyEvent keyEvent) {
    if (keyEvent.logicalKey == LogicalKeyboardKey.enter) {
      return;
    }

    super.handleKeyEvent(keyEvent);
  }
}
