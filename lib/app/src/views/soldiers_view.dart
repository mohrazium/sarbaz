part of views;

class SoldiersView extends GetView<SoldiersController> {
  const SoldiersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        initState: (s) {
          controller.loadAll();
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
                  height: kSpacing * 5,
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
                        Expanded(
                            child: SearchField(
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
                    child: SoldiersDataTable(
                      soldiers: controller.soldiersList.value,
                      onCellTap: ((details) => controller.onCellTap(details)),
                      onCellDoubleTap: (details) =>
                          controller.onCellDoubleTap(details),
                    ),
                  ),
                )
              ]);
        });
  }
}
