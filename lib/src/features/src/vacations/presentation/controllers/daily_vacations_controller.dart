import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/config/config.dart';
import 'package:sarbaz/src/localization/localization.dart';
import 'package:sarbaz/src/utils/utils.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../application.dart';
import '../../domain.dart';
import '../views/daily_vacations_data_table.dart';
import 'daily_vacation_controller.dart';

class DailyVacationsController extends GetxController with DateConverterMixin {
  final BaseController _baseController;
  final DailyVacationService _dailyVacationService;

  Rx<DailyVacationDataSource> dailyVacationDataSource = Rx(DailyVacationDataSource(dailyVacationDataList: []));
  late final DataGridController dataGridController;

  final List<DailyVacationDataCellModel> _loadedVacations = List.empty(growable: true);

  late DataGridCellTapDetails? cellTapDetails;

  late final TextEditingController searchFieldController;

  DailyVacationsController(this._dailyVacationService, this._baseController);

  @override
  Future<void> onInit() async {
    super.onInit();
    searchFieldController = TextEditingController();
    dataGridController = DataGridController();
    cellTapDetails = null;
  }

  @override
  void onReady() {
    super.onReady();
    _loadAll();
    logger.info('$runtimeType as been ready.');
  }

  @override
  void dispose() {
    super.dispose();
    searchFieldController.dispose();
  }

  Future<void> initForm() async {
    await _loadAll();
    searchVacation(null);
  }

  Future<void> _loadAll() async {
    final vacationId = await _baseController.getCurrentVacationsId();
    _loadedVacations.clear();
    if (vacationId != 0) {
      await _dailyVacationService.findAllByVacationsId(vacationId).then((values) {
        if (values != null) {
          _loadedVacations.clear();
          _loadedVacations.addAll(values
              .asMap()
              .entries
              .map((daily) => DailyVacationDataCellModel(
                    rowCount: (daily.key + 1).toString(),
                    id: daily.value.id.toString(),
                    startDate: toShamsi(daily.value.startDate),
                    endDate: toShamsi(daily.value.endDate),
                    amount: daily.value.amount.toString(),
                    description: daily.value.description,
                    vacationType: daily.value.vacationType,
                  ))
              .toList());
        }
      }).catchError((onError) {
        DialogHelper.showCrashReport(onError.toString());
      }).whenComplete(() => DialogHelper.hideLoading());
    }
  }

  void searchVacation(String? key) {
    if (key == null || key.isEmpty) {
      dailyVacationDataSource(DailyVacationDataSource(dailyVacationDataList: []));
      dailyVacationDataSource(DailyVacationDataSource(dailyVacationDataList: _loadedVacations));
    } else {
      dailyVacationDataSource.value = DailyVacationDataSource(dailyVacationDataList: []);
      dailyVacationDataSource(DailyVacationDataSource(
          dailyVacationDataList: _loadedVacations.where((vacation) {
        getStartDate() {
          var startDate = vacation.startDate ?? "";
          return startDate.isNotEmpty ? startDate.contains(key) : false;
        }

        getEndDate() {
          var endDate = vacation.endDate ?? "";
          return endDate.isNotEmpty ? endDate.contains(key) : false;
        }

        getAmount() {
          var amount = vacation.amount ?? "";
          return amount.isNotEmpty ? amount.contains(key) : false;
        }

        getType() {
          var type = vacation.vacationType ?? "";
          return type.isNotEmpty ? type.contains(key) : false;
        }

        getDescription() {
          var des = vacation.description ?? "";
          return des.isNotEmpty ? des.contains(key) : false;
        }

        return getStartDate() || getEndDate() || getType() || getDescription() || getAmount();
      }).toList()));
    }
    DialogHelper.hideLoading();
  }

  void onCellDoubleTap(DataGridCellDoubleTapDetails details) {
    int id = int.parse(
        dailyVacationDataSource.value.dataGridRows[details.rowColumnIndex.rowIndex - 1].getCells().last.value);
    _baseController.dailyVacationId(id);
    Get.find<DailyVacationController>().initForm();
  }

  void onEditVacationPressed() {
    try {
      int id = int.parse(dailyVacationDataSource.value.dataGridRows[cellTapDetails!.rowColumnIndex.rowIndex - 1]
          .getCells()
          .last
          .value);
      _baseController.dailyVacationId(id);
      Get.find<DailyVacationController>().initForm();
    } catch (e) {
      DialogHelper.showMessageBox(
          title: Strings.editVacation,
          message: Strings.pleaseSelectAnItemFromList,
          dialogType: DialogType.INFO,
          dialogButtons: DialogButtons.OK);
    }
  }

  void onDeleteVacationPressed() {
    try {
      DialogHelper.showMessageBox(
          title: Strings.deleteVacation,
          message: Strings.areYouSureToDelete,
          dialogType: DialogType.WARNING,
          dialogButtons: DialogButtons.YES_NO,
          onYesPressed: () {
            _removeVacation();
          });
    } catch (e) {
      DialogHelper.showMessageBox(
          title: Strings.editVacation,
          message: Strings.pleaseSelectAnItemFromList,
          dialogType: DialogType.INFO,
          dialogButtons: DialogButtons.OK);
    }
  }

  void onCellTap(DataGridCellTapDetails details) {
    cellTapDetails = details;
  }

  void onSearchVacationChanged(String? val) {
    searchVacation(val);
  }

  void onSearchVacationPressed() async {
    await _loadAll();
    searchVacation(searchFieldController.text.trim());
  }

  Future<void> _removeVacation() async {
    int id = int.parse(
        dailyVacationDataSource.value.dataGridRows[cellTapDetails!.rowColumnIndex.rowIndex - 1].getCells().last.value);
    final res =
        await _dailyVacationService.deleteById(id, _baseController.personalInfoId.value).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    }).catchError((onError) {
      DialogHelper.showCrashReport(onError.toString());
    });

    if (res) {
      _baseController.dailyVacationId(0);
      _baseController.initSoldierEditorForms(_baseController.personalInfoId.value);
    }
  }
}
