part of views;

class SoldierCaseEditorView extends GetView<SoldierCaseEditorController> {
  const SoldierCaseEditorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InnerView(
        menu: MenuBar(
          onSelected: controller.onSelectedMainMenu,
          menuBarButtons: [
            MenuBarButtonData(
              activeIcon: EvaIcons.people,
              icon: EvaIcons.peopleOutline,
              label: Strings.personalInfo,
            ),
            MenuBarButtonData(
              activeIcon: EvaIcons.people,
              icon: EvaIcons.peopleOutline,
              label: Strings.soldiersSection,
              // totalNotif: 100,
            ),
          ],
        ),
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
              ])
        ],
      ),
    );
  }

  int getStaggeredAxis(context) {
    final currentWidth = MediaQuery.of(context).size.width;

    if (currentWidth <= 1220) {
      return 1;
    } else if (currentWidth > 1220 &&
        currentWidth >= 1280 &&
        currentWidth < 1810) {
      return 2;
    } else if (currentWidth > 1810) {
      return 3;
    }
    return 1;
  }
}
