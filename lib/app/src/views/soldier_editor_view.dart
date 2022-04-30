part of views;

late double calculatedSize = 0;

class SoldierEditorView extends GetView<SoldierEditorController> {
  const SoldierEditorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getStaggeredAxis(context);

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
              SizedBox(
                width: MediaQuery.of(context).size.width - 600,
                // height: MediaQuery.of(context).size.height - 400,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Center(child: VacationsView()),
                      controller.gridColumns.value == 1
                          ? Column(children: [
                              const Center(child: DailyVacationView()),
                              GroupBox(
                                  height: 300,
                                  haveShadow: true,
                                  child: SoldiersDataTable(
                                    dataSource: SoldiersDataSource(soldierDataList: []),
                                  )),
                            ])
                          : LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                              return SizedBox(
                                width: constraints.maxWidth,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Center(child: DailyVacationView()),
                                    GroupBox(
                                        width: constraints.maxWidth - 550,
                                        haveShadow: true,
                                        child: SoldiersDataTable(
                                          dataSource: SoldiersDataSource(soldierDataList: []),
                                        )),
                                  ],
                                ),
                              );
                            }),
                    ]),
              ),
            ],
          );

          var loadingView = SizedBox(
            child: Center(
              child: GroupBox(
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(strokeWidth: 6),
                      const SizedBox(height: kSpacing),
                      Text(
                        Strings.loading,
                        style: Get.textTheme.bodyLarge,
                      ),
                    ],
                  )),
            ),
          );

          return Stack(children: [
            AnimatedOpacity(
                opacity: controller.isLoadedView.isTrue ? 0.0 : 1.0,
                duration: const Duration(milliseconds: 500),
                child: loadingView),
            AnimatedOpacity(
                opacity: controller.isLoadedView.isTrue ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 500),
                child: innerView),
          ]);
        });
  }
}
