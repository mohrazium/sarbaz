part of views;

class SoldierEditorView extends GetView<SoldierEditorController> {
  const SoldierEditorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getStaggeredAxis(context);
    return GetX(
        init: controller,
        builder: (_) => InnerView(
              tabMenus: [
                TabMenu(
                  icon: EvaIcons.peopleOutline,
                  label: Strings.personalInfo,
                ),
                TabMenu(
                  icon: Iconsax.activity,
                  label: Strings.serviceInfo,
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
              ],
            ));
  }
}
