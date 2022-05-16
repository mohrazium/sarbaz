part of views;

class DailyVacationsView extends GetView<DailyVacationsController> {
  const DailyVacationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GetX(
          init: controller,
          initState: (s) {
            controller.initForm();
          },
          builder: (_) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: kSpacing / 2),
                    SizedBox(
                      width: constraints.maxWidth - 280,
                      child: SearchField(
                        controller: controller.searchFieldController,
                        onSearch: (val) =>
                            controller.onSearchVacationChanged(val),
                      ),
                    ),
                    const SizedBox(width: kSpacing / 2),
                    FilledButton(
                      icon: EvaIcons.searchOutline,
                      onPressed: () => controller.onSearchVacationPressed(),
                      label: Strings.search,
                    ),
                    const SizedBox(width: kSpacing / 2),
                    Tooltip(
                      message: Strings.editVacation,
                      child: ElevatedButton(
                        onPressed: () => controller.onEditVacationPressed(),
                        child: const Icon(
                          EvaIcons.editOutline,
                          size: kPadding * 1.6,
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(56, 45),
                          maximumSize: const Size(56, 45),
                        ),
                      ),
                    ),
                    const SizedBox(width: kSpacing / 2),
                    Tooltip(
                      message: Strings.deleteVacation,
                      child: ElevatedButton(
                        onPressed: () => controller.onDeleteVacationPressed(),
                        child: const Icon(
                          EvaIcons.trashOutline,
                          size: kPadding * 1.6,
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(56, 45),
                          maximumSize: const Size(56, 45),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: kSpacing * 17.9,
                  child: DailyVacationsDataTable(
                    dataSource: controller.dailyVacationDataSource.value,
                    onCellTap: (details) => controller.onCellTap(details),
                    onCellDoubleTap: (details) =>
                        controller.onCellDoubleTap(details),
                  ),
                ),
              ],
            );
          });
    });
  }
}
