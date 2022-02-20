// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_datagrid/datagrid.dart';
// import 'package:syncfusion_flutter_core/theme.dart';

// const int _rowsPerPage = 20;
// const double _dataPagerHeight = 60;
// List<SoldierInfoModel> soldiersInfo = <SoldierInfoModel>[];
// List<SoldierInfoModel> _paginatedSoldiersInfo = <SoldierInfoModel>[];

// class SoldiersModelDataCell {
//   final String? personalCode;
//   final String firstName;
//   final String lastName;
//   final String fatherName;
//   final String nationalIdentity;
//   final String mobileNumber;
//   final String soldierStatus;
//   bool isSelected;
//   SoldiersModelDataCell(
//       this.personalCode,
//       this.firstName,
//       this.lastName,
//       this.fatherName,
//       this.nationalIdentity,
//       this.mobileNumber,
//       this.soldierStatus,
//       this.isSelected);
// }

// class SoldiersDataTable extends StatefulWidget {
//   final List<SoldierInfoModel> data;
//   const SoldiersDataTable({
//     Key? key,
//     required this.data,
//   }) : super(key: key);

//   @override
//   _SoldiersDataTableState createState() => _SoldiersDataTableState();
// }

// class _SoldiersDataTableState extends State<SoldiersDataTable> {
//   late SoldiersInfoDataSource soldiersInfoDataSource;
//   @override
//   void initState() {
//     super.initState();
//     soldiersInfo = widget.data;
//     soldiersInfoDataSource = SoldiersInfoDataSource(soldiersInfo: soldiersInfo);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         height: MediaQuery.of(context).size.height - 200,
//         child: LayoutBuilder(builder: (context, constraint) {
//           return Column(children: [
//             SizedBox(
//                 height: constraint.maxHeight - _dataPagerHeight,
//                 width: constraint.maxWidth,
//                 child: _buildDataGrid(constraint)),
//             SizedBox(
//                 height: _dataPagerHeight,
//                 child: SfDataPager(
//                   delegate: soldiersInfoDataSource,
//                   pageCount: soldiersInfo.length / _rowsPerPage,
//                   direction: Axis.horizontal,
//                 ))
//           ]);
//         }));
//   }

//   _buildDataGrid(BoxConstraints constraint) {
//     return SfDataGridTheme(
//       data: SfDataGridThemeData(
//           rowHoverColor: Colors.yellow,
//           selectionColor: Colors.green,
//           headerColor: const Color(0xff009889)),
//       child: SfDataGrid(
//         source: soldiersInfoDataSource,
//         columnWidthMode: ColumnWidthMode.fill,
//         columns: <GridColumn>[
//           GridColumn(
//               columnName: 'id',
//               label: Container(
//                   padding: const EdgeInsets.all(16.0),
//                   alignment: Alignment.center,
//                   child: const Text(
//                     'ID',
//                   ))),
//           GridColumn(
//               columnName: 'name',
//               label: Container(
//                   padding: const EdgeInsets.all(8.0),
//                   alignment: Alignment.center,
//                   child: const Text('Name'))),
//           GridColumn(
//               columnName: 'designation',
//               label: Container(
//                   padding: const EdgeInsets.all(8.0),
//                   alignment: Alignment.center,
//                   child: const Text(
//                     'Designation',
//                     overflow: TextOverflow.ellipsis,
//                   ))),
//           GridColumn(
//               columnName: 'salary',
//               label: Container(
//                   padding: const EdgeInsets.all(8.0),
//                   alignment: Alignment.center,
//                   child: const Text('Salary'))),
//         ],
//       ),
//     );
//   }
// }

// class SoldiersInfoDataSource extends DataGridSource {
//   /// Creates the employee data source class with required details.
//   SoldiersInfoDataSource({required List<SoldierInfoModel> soldiersInfo}) {
//     _paginatedSoldiersInfo =
//         soldiersInfo.getRange(0, 19).toList(growable: false);
//     buildPaginatedDataGridRows();
//   }

//   List<DataGridRow> dataGridRows = [];

//   @override
//   List<DataGridRow> get rows => dataGridRows;

//   @override
//   DataGridRowAdapter? buildRow(DataGridRow row) {
//     return DataGridRowAdapter(
//         cells: row.getCells().map<Widget>((dataGridCell) {
//       if (dataGridCell.columnName == Strings.personalCode) {
//         return Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           alignment: Alignment.centerLeft,
//           child: Text(
//             dataGridCell.value.toString(),
//             overflow: TextOverflow.ellipsis,
//           ),
//         );
//       } else if (dataGridCell.columnName == Strings.nationalIdentity) {
//         return Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             alignment: Alignment.centerRight,
//             child: Text(
//               dataGridCell.value.toString(),
//               overflow: TextOverflow.ellipsis,
//             ));
//       } else if (dataGridCell.columnName == Strings.firstName) {
//         return Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             alignment: Alignment.centerRight,
//             child: Text(
//               dataGridCell.value.toString(),
//               overflow: TextOverflow.ellipsis,
//             ));
//       } else if (dataGridCell.columnName == Strings.lastName) {
//         return Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             alignment: Alignment.centerRight,
//             child: Text(
//               dataGridCell.value.toString(),
//               overflow: TextOverflow.ellipsis,
//             ));
//       } else if (dataGridCell.columnName == Strings.fatherName) {
//         return Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             alignment: Alignment.centerRight,
//             child: Text(
//               dataGridCell.value.toString(),
//               overflow: TextOverflow.ellipsis,
//             ));
//       } else if (dataGridCell.columnName == Strings.mobileNumber) {
//         return Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             alignment: Alignment.centerRight,
//             child: Text(
//               dataGridCell.value.toString(),
//               overflow: TextOverflow.ellipsis,
//             ));
//       } else {
//         return Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             alignment: Alignment.center,
//             child: Text(
//               dataGridCell.value.toString(),
//               overflow: TextOverflow.ellipsis,
//             ));
//       }
//     }).toList());
//   }

//   @override
//   Future<bool> handlePageChange(int oldPageIndex, int newPageIndex) async {
//     int startIndex = newPageIndex * _rowsPerPage;
//     int endIndex = startIndex + _rowsPerPage;
//     if (startIndex < soldiersInfo.length && endIndex <= soldiersInfo.length) {
//       _paginatedSoldiersInfo =
//           soldiersInfo.getRange(startIndex, endIndex).toList(growable: false);
//       buildPaginatedDataGridRows();
//       notifyListeners();
//     } else {
//       _paginatedSoldiersInfo = [];
//     }

//     return true;
//   }

//   void buildPaginatedDataGridRows() {
//     dataGridRows = _paginatedSoldiersInfo.map<DataGridRow>((dataGridRow) {
//       return DataGridRow(cells: [
//         DataGridCell(
//             columnName: Strings.personalCode, value: dataGridRow.personalCode),
//         DataGridCell(
//             columnName: Strings.nationalIdentity,
//             value: dataGridRow.personalInfo.nationalIdentity),
//         DataGridCell(
//             columnName: Strings.firstName,
//             value: dataGridRow.personalInfo.firstName),
//         DataGridCell(
//             columnName: Strings.lastName,
//             value: dataGridRow.personalInfo.lastName),
//         DataGridCell(
//             columnName: Strings.fatherName,
//             value: dataGridRow.personalInfo.fatherName),
//         DataGridCell(
//             columnName: Strings.mobileNumber,
//             value: dataGridRow.personalInfo.mobileNumber),
//         DataGridCell(
//             columnName: Strings.latestStatus, value: dataGridRow.latestStatus),
//       ]);
//     }).toList(growable: false);
//   }
// }
