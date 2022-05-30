import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/constants/constants.dart';
import 'package:sarbaz/src/localization/localization.dart';

import '../../../../personals.dart';
import '../../../../vacations.dart';
import '../../presentation.dart';

double calculatedSize = 0;

class SoldierEditorView extends GetView<SoldierEditorController> {
  const SoldierEditorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getStaggeredAxis(context);
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return GetX(
          init: controller,
          builder: (_) {
            var innerView = InnerView(
              tabMenus: [
                TabMenu(
                  icon: EvaIcons.peopleOutline,
                  label: Strings.personalInfo,
                ),
                TabMenu(
                  icon: EvaIcons.folderOutline,
                  label: Strings.serviceInfo,
                ),
                TabMenu(
                  icon: EvaIcons.activity,
                  label: Strings.vacationRecords,
                ),
              ],
              viewHeader: Center(
                  child: HeaderText(
                controller.getHeaderText(),
              )),
              children: [
                PersonalPage(crossAxisCount: controller.gridColumns.value),
                SoldiersPage(crossAxisCount: controller.gridColumns.value),
                VacationsPage(
                  crossAxisCount: controller.gridColumns.value,
                  maxWidth: constraints.maxWidth,
                ),
              ],
            );

            var loadingView = SizedBox(
              child: Center(
                child: GroupBox(
                    height: 200,
                    width: 200,
                    child: LayoutBuilder(
                      builder: (ctx, size) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: size.maxWidth - 100,
                              height: size.maxHeight - 100,
                              child: controller.isLoadedView.isFalse
                                  ? Center(
                                      child: LoadingAnimationWidget.discreteCircle(
                                          color: Colorize.primaryColor,
                                          secondRingColor: Colorize.accentColor,
                                          size: 65))
                                  : Container()),
                          const SizedBox(height: kSpacing),
                          Text(
                            Strings.loading,
                            style: Get.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    )),
              ),
            );

            return Stack(children: [
              AnimatedOpacity(
                  opacity: controller.isLoadedView.isTrue ? 0.0 : 1.0,
                  duration: const Duration(milliseconds: 500),
                  child: loadingView),
              AnimatedOpacity(
                  opacity: controller.isLoadedView.isFalse ? 0.0 : 1.0,
                  duration: const Duration(milliseconds: 500),
                  child: innerView),
            ]);
          });
    });
  }
}
