import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/constants/constants.dart';
import 'package:sarbaz/src/localization/localization.dart';

import '../../presentation.dart';

class SoldiersView extends GetView<SoldiersController> {
  const SoldiersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        initState: (s) {
          controller.searchSoldier("");
        },
        builder: (_) {
          return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(kPadding),
                    child: HeaderText(Strings.soldiersList),
                  ),
                ),
                GroupBox(
                  padding: const EdgeInsets.all(kPadding),
                  
                  margin: const EdgeInsets.all(kPadding),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FilledButton(
                            icon: EvaIcons.plus,
                            onPressed: () => controller.onNewSoldierPressed(),
                            label: Strings.newSoldier,
                          ),
                          const SizedBox(
                            width: kSpacing,
                          ),
                          FilledButton(
                            icon: EvaIcons.plus,
                            onPressed: () => controller.onEditSoldierPressed(),
                            label: Strings.edit,
                          ),
                          const SizedBox(width: kSpacing),
                          FilledButton(
                            icon: EvaIcons.plus,
                            onPressed: () => controller.onDeleteSoldierPressed(),
                            label: Strings.delete,
                          ),
                          const SizedBox(width: kSpacing),
                          FilledButton(
                            icon: EvaIcons.refresh,
                            onPressed: () => controller.onRefreshSoldiersPressed(),
                            label: Strings.refresh,
                          ),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                              child: SearchField(
                            onSearch: (val) => controller.searchSoldier(val),
                            controller: controller.searchFieldController,
                          )),
                          const SizedBox(width: kSpacing),
                          FilledButton(onPressed: () {}, icon: EvaIcons.search, label: Strings.search)
                        ]),
                  ]),
                ),
                Expanded(
                  child: GroupBox(
                    padding: const EdgeInsets.all(kPadding),
                    child: SoldiersDataTable(
                      dataSource: controller.soldiersDataSource.value,
                      onCellTap: (details) => controller.onCellTap(details),
                      onCellDoubleTap: (details) => controller.onCellDoubleTap(details),
                    ),
                  ),
                )
              ]);
        });
  }
}
