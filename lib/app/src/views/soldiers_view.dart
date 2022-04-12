part of views;

class SoldiersView extends GetView<SoldiersController> {
  const SoldiersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            height: kSpacing * 4,
            margin: const EdgeInsets.all(kPadding / 3),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Expanded(child: SearchField(
                    controller: TextEditingController(),
                  )),
                  const SizedBox(width: kSpacing),
                  FilledButton(
                      onPressed: () {},
                      icon: EvaIcons.search,
                      label: Strings.search)
                ]),
          ),
          Expanded(
            child: GroupBox(
              padding: const EdgeInsets.all(kPadding),
              child: GetX(
                  init: controller,
                  builder: (_) {
                    return SoldiersDataTable(
                      personalInfos: controller.personalInfoList.value,
                      onCellTap: ((details) => controller.onCellTap(details)),
                      onCellDoubleTap: (details) =>
                          controller.onCellDoubleTap(details),
                    );
                  }),
            ),
          )
        ]);
  }
}
