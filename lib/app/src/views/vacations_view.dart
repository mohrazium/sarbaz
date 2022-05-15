part of views;

class VacationsView extends GetView<VacationsController> {
  const VacationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        initState: (_) {},
        builder: (_) => GroupBox(
            haveShadow: true,
            width: double.maxFinite,
            color: Colorize.backgroundColorShade200,
            child: Column(
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          color: Colorize.primaryColorShade100,
                          child: const Padding(
                              padding: EdgeInsets.all(kPadding),
                              child: Center(
                                child: Text(
                                  Strings.vacationRecords,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kPadding),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GroupBox(
                            isExpandable: true,
                            padding: const EdgeInsets.fromLTRB(kPadding, 0, 0, 0),
                            color: Colorize.backgroundColorShade600,
                            width: kTextFieldWidth * 1.2,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              _getVacationDays(Strings.eligibleVacationTotal, controller.model.value.eligibleTotal),
                              _getVacationDays(Strings.eligibleVacationBalance, controller.model.value.eligibleBalance),
                              _getVacationDays(Strings.eligibleVacationUsed, controller.model.value.eligibleUsed),
                            ]),
                          ),
                          GroupBox(
                            isExpandable: true,
                            color: Colorize.backgroundColorShade600,
                            padding: const EdgeInsets.fromLTRB(kPadding, 0, 0, 0),
                            width: kTextFieldWidth * 1.2,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              _getVacationDays(Strings.sickVacationTotal, controller.model.value.sickTotal),
                              _getVacationDays(Strings.sickVacationBalance, controller.model.value.sickBalance),
                              _getVacationDays(Strings.sickVacationUsed, controller.model.value.sickUsed)
                            ]),
                          ),
                          GroupBox(
                            color: Colorize.backgroundColorShade600,
                            isExpandable: true,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              _getVacationDays(Strings.incentiveVacationTotal, controller.model.value.incentiveTotal),
                              _getVacationDays(
                                  Strings.incentiveVacationBalance, controller.model.value.incentiveBalance),
                              _getVacationDays(Strings.incentiveVacationUsed, controller.model.value.incentiveUsed),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }

  Widget _getVacationDays(String title, double? days) {
    return Padding(
        padding: const EdgeInsets.all(kPadding / 2),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "$title:",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "${days != null ? days.toStringAsFixed(1).toString() : 0.0} ${Strings.day}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ]));
  }
}
