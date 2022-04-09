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
              Center(child: ContactInfoView()),
              Center(
                child: EducationalInfoView(),
              )
            ]),
            
      ],
    );
  }

//  int getStaggeredAxis(context) {
//     final currentWidth = MediaQuery.of(context).size.width;

//     if (currentWidth <= 1220) {
//       return 1;
//     } else if (currentWidth > 1220 &&
//         currentWidth >= 1280 &&
//         currentWidth < 1810) {
//       return 2;
//     } else if (currentWidth > 1810) {
//       return 3;
//     }
//     return 1;
//   }
  int getStaggeredAxis(context) => MediaQuery.of(context).size.width ~/ 610;
}
