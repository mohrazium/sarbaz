part of views;

class VacationsView extends GetView<VacationsController> {
  const VacationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return GetX(
    // init: controller,
    // initState: (_) {
    //   controller.model.value = VacationsModel(
    //       amountOfEligible: 12, amountOfIncentive: 35, amountOfSick: 20);
    // },
    // builder: (_) =>
    return GroupBox(
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
                      SizedBox(
                        width: kTextFieldWidth,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _getVacationDays(Strings.eligibleVacationTotal,
                                  controller.model.value.eligibleTotal),
                              _getVacationDays(Strings.eligibleVacationBalance,
                                  controller.model.value.eligibleBalance),
                              _getVacationDays(Strings.eligibleVacationUsed,
                                  controller.model.value.eligibleUsed),
                            ]),
                      ),
                      SizedBox(
                        width: kTextFieldWidth,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _getVacationDays(Strings.sickVacationTotal,
                                  controller.model.value.sickTotal),
                              _getVacationDays(Strings.sickVacationBalance,
                                  controller.model.value.sickBalance),
                              _getVacationDays(Strings.sickVacationUsed,
                                  controller.model.value.sickUsed)
                            ]),
                      ),
                      SizedBox(
                        width: kTextFieldWidth,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _getVacationDays(Strings.incentiveVacationTotal,
                                  controller.model.value.incentiveTotal),
                              _getVacationDays(Strings.incentiveVacationBalance,
                                  controller.model.value.incentiveBalance),
                              _getVacationDays(Strings.incentiveVacationUsed,
                                  controller.model.value.incentiveUsed),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Row _getVacationDays(String title, double? days) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "$title:",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "${days != null ? days.toStringAsFixed(0).toString() : 0} ${Strings.day}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ]);
  }
}
