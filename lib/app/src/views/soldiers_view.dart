part of views;

class SoldiersView extends GetView<SoldiersController> {
  const SoldiersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: HeaderText(Strings.soldiersList),
            ),
          ),
          Column(
            children: [
              GroupBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FilledButton(
                        icon: EvaIcons.plus,
                        onPressed: () {},
                        label: Strings.newSoldier,
                      ),
                      const Spacer(),
                      FilledButton(
                        icon: EvaIcons.plus,
                        onPressed: () {},
                        label: Strings.edit,
                      ),
                      const Spacer(),
                      FilledButton(
                        icon: EvaIcons.plus,
                        onPressed: () {},
                        label: Strings.delete,
                      ),
                      const Spacer(),
                      FilledButton(
                        icon: EvaIcons.plus,
                        onPressed: () {},
                        label: Strings.delete,
                      ),
                      const Spacer(),
                      SizedBox(width: 200, child: SearchField())
                    ]),
              ),
              GroupBox(
                child: GetX(
                    init: controller,
                    builder: (_) {
                      controller.fakeList();
                      return SoldiersDataTable(data: controller.personalInfos);
                    }),
              ),
            ],
          )
        ]);
  }
}
