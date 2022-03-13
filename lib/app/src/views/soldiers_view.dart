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
              padding: EdgeInsets.all(8.0),
              child: HeaderText(Strings.soldiersList),
            ),
          ),
          SizedBox(
            height: kSpacing * 5,
            child: Expanded(
              child: GroupBox(
                margin: const EdgeInsets.all(kPadding),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FilledButton(
                        icon: EvaIcons.plus,
                        onPressed: () {
                          print("refresh clicked");
                          controller.loadAllPersons();
                        },
                        label: Strings.newSoldier,
                      ),
                      const SizedBox(width: kSpacing),
                      FilledButton(
                        icon: EvaIcons.plus,
                        onPressed: () {},
                        label: Strings.edit,
                      ),
                      const SizedBox(width: kSpacing),
                      FilledButton(
                        icon: EvaIcons.plus,
                        onPressed: () {},
                        label: Strings.delete,
                      ),
                      const SizedBox(width: kSpacing),
                      FilledButton(
                        icon: EvaIcons.plus,
                        onPressed: () {},
                        label: Strings.delete,
                      ),
                      const SizedBox(width: kSpacing),
                      Expanded(child: SearchField())
                    ]),
              ),
            ),
          ),
          Expanded(
            child: GroupBox(
              child: GetX(
                  init: controller,
                  builder: (_) {
                    return SoldiersDataTable(
                        data: controller.personnelList.value);
                  }),
            ),
          )
        ]);
  }
}
