part of views;

late double calculatedSize = 0;

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
                  icon: Iconsax.activity,
                  label: Strings.vacationRecords,
                ),
              ],
              viewHeader: Center(
                  child: HeaderText(
                controller.getHeaderText(),
              )),
              children: [
                StaggeredGrid.count(
                    crossAxisCount: controller.gridColumns.value,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 4,
                    children: const [
                      Center(child: PersonalInfoView()),
                      Center(child: FurtherInfoView()),
                      Center(child: ContactInfoView()),
                      Center(
                        child: EducationalInfoView(),
                      )
                    ]),
                StaggeredGrid.count(
                    crossAxisCount: controller.gridColumns.value,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 4,
                    children: const [
                      Center(child: SoldierView()),
                      Center(child: TrainingStatusView()),
                      Center(child: SoldierCaseView()),
                    ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Center(child: VacationsView()),
                      controller.gridColumns.value == 1
                          ? Column(children: const [
                              Center(child: DailyVacationView()),
                              GroupBox(haveShadow: true, child: DailyVacationsView()),
                            ])
                          : SizedBox(
                              width: constraints.maxWidth,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Center(child: DailyVacationView()),
                                  GroupBox(
                                      width: constraints.maxWidth - 590,
                                      haveShadow: true,
                                      child: const DailyVacationsView()),
                                ],
                              ),
                            ),
                    ]),
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
