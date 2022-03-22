part of views;

class SoldierCaseEditorView extends GetView<SoldierCaseEditorController> {
  const SoldierCaseEditorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InnerView(
      tabMenus: [
        TabMenu(
          icon: EvaIcons.peopleOutline,
          label: Strings.personalInfo,
        ),
        // TabMenu(
        //   icon: EvaIcons.peopleOutline,
        //   label: Strings.soldiersSection,
        // ),
      ],
      viewHeader: Center(
          child: Obx(() => HeaderText(
                controller.getHeaderText(),
              ))),
      children: [
        StaggeredGrid.count(
            crossAxisCount: getStaggeredAxis(context),
            mainAxisSpacing: 3,
            crossAxisSpacing: 4,
            children: const [
              Center(child: PersonalInfoView()),
              Center(child: FurtherInfoView()),
            ]),
      ],
    );
  }

  int getStaggeredAxis(context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return currentWidth ~/ 610;
  }
}
