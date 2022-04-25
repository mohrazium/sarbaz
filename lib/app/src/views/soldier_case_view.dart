part of views;

class SoldierCaseView extends GetView<SoldierCaseController> {
  const SoldierCaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        builder: (_) => FormCard(
            haveShadow: true,
            globalFormKey: controller.soldierCaseFormGlobalKey,
            readyOnly: controller.readOnly.value,
            onConfirmButtonPressed: () => controller.onConfirmButtonPressed(),
            createdAt: controller.model.value.createdAt,
            updatedAt: controller.model.value.updatedAt,
            onCancelButtonPressed: () => controller.onCancelButtonPressed(),
            headerContent: const Center(
                child: Text(
              Strings.introAndDispatchForm,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      //! Dispatcher field
                      TextBox(
                        titleText: Strings.dispatcher,
                        controller: controller.dispatcherController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (v) =>
                            controller.requiredFieldValidator(value: v),
                      ),

                      //! Intro date field
                      TextBox(
                        titleText: Strings.introDate,
                        controller: controller.introductionDateController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (val) =>
                            controller.requiredFieldValidator(value: val),
                        prefixIcon: IconButton(
                            onPressed: () =>
                                controller.onIntroCalenderPressed(context),
                            icon: const Icon(EvaIcons.calendar)),
                      ),

                      //! Start date field
                      TextBox(
                        titleText: Strings.startDateOfService,
                        controller: controller.startDateOfServiceController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (val) =>
                            controller.requiredFieldValidator(value: val),
                        prefixIcon: IconButton(
                            onPressed: () => controller
                                .onStartServiceDateCalenderPressed(context),
                            icon: const Icon(EvaIcons.calendar)),
                        onChanged: (val) =>
                            controller.onChangeCalculateEndDate(val),
                      ),
                      //! Service category field
                      TextBox(
                        titleText: Strings.serviceCategory,
                        controller: controller.serviceCategoryController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (v) =>
                            controller.requiredFieldValidator(value: v),
                      ),
                      //! Last period field
                      TextBox(
                        titleText: Strings.lastPeriodOfService,
                        controller: controller.lastPeriodOfServiceController,
                        readOnly: controller.readOnly.value,
                        onChanged: (val) =>
                            controller.onChangeCalculateEndDate(val),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      //! Dispatch date field
                      TextBox(
                        titleText: Strings.dispatchDate,
                        controller: controller.dispatchController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (val) =>
                            controller.requiredFieldValidator(value: val),
                        prefixIcon: IconButton(
                            onPressed: () =>
                                controller.onDispatchCalenderPressed(context),
                            icon: const Icon(EvaIcons.calendar)),
                      ),

                      //! Legal period field
                      TextBox(
                        titleText: Strings.legalPeriod,
                        controller: controller.legalPeriodOfServiceController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (val) =>
                            controller.requiredFieldValidator(value: val),
                        keyboardType: TextInputType.number,
                        onChanged: (val) =>
                            controller.onChangeCalculateEndDate(val),
                      ),

                      //! End date field
                      TextBox(
                        titleText: Strings.endDateOfService,
                        controller: controller.endDateOfServiceController,
                        readOnly: true,
                        isRequired: true,
                      ),
                      //! Rank field
                      TextBox(
                        titleText: Strings.militaryRank,
                        controller: controller.rankController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (val) =>
                            controller.requiredFieldValidator(value: val),
                        onChanged: (val) => controller.onRankChanged(val),
                        prefixIcon: PopupMenuButton<String>(
                          shape: const RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1.0, style: BorderStyle.none),
                            borderRadius: BorderRadius.all(
                                Radius.circular(kBorderRadius)),
                          ),
                          icon: const Icon(Icons.arrow_drop_down),
                          onSelected: (String value) {
                            controller.selectRank(value);
                          },
                          itemBuilder: (BuildContext context) {
                            return controller.ranks.value
                                .map<PopupMenuItem<String>>((RankModel value) {
                              return PopupMenuItem(
                                  padding: EdgeInsets.zero,
                                  child: GroupBox(
                                    padding: const EdgeInsets.all(kPadding / 6),
                                    margin: const EdgeInsets.all(kPadding / 4),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(
                                          width: kSpacing / 10,
                                        ),
                                        Text(value.gradeCode.toString()),
                                        Text(value.name),
                                        Image.asset(
                                          ImagesConstants.ranksMarkImage.values
                                              .elementAt(value.gradeCode - 1),
                                          height: 56,
                                          width: 56,
                                        ),
                                      ],
                                    ),
                                  ),
                                  value: value.id.toString());
                            }).toList();
                          },
                        ),
                      ),
                      //! Amount of service field
                      TextBox(
                        titleText: Strings.amountOfService,
                        controller: controller.amountOfServiceController,
                        readOnly: true,
                      ),
                    ],
                  ),
                ])));
  }
}
