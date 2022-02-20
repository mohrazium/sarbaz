part of views;

class SoldiersView extends GetView<SoldiersController> {
  const SoldiersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(kSpacing),
          child: Container(
              decoration: const BoxDecoration(
                  color: Colorize.kShadowColor,
                  borderRadius:
                      BorderRadius.all(Radius.circular(kBorderRadius))),
              child: Padding(
                padding: const EdgeInsets.all(kSpacing),
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
              )),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(kSpacing),
        //   child: Container(
        //       decoration: const BoxDecoration(
        //           color: Colorize.kShadowColor,
        //           borderRadius:
        //               BorderRadius.all(Radius.circular(kBorderRadius))),
        //       child: const SoldiersDataTable(data: [],)),
        // ),
      ],
    );
  }
}
