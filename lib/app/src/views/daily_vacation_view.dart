part of views;

class DailyVacationView extends GetView<DailyVacationController> {
  const DailyVacationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        builder: (_) => FormCard(
            haveShadow: true,
            globalFormKey: controller.dailyVacationFormGlobalKey,
            readyOnly: controller.readOnly.value,
            onConfirmButtonPressed: () => controller.onConfirmButtonPressed(),
            createdAt: controller.model.value.createdAt,
            updatedAt: controller.model.value.updatedAt,
            onCancelButtonPressed: () => controller.onCancelButtonPressed(),
            headerContent: const Center(
                child: Text(
              Strings.vacation,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          //! Start date field
                          TextBox(
                            titleText: Strings.startDate,
                            controller: controller.startDateController,
                            readOnly: controller.readOnly.value,
                            isRequired: true,
                            inputFormatters: [
                              MaskedInputFormatter(
                                "0000/00/00",
                                allowedCharMatcher: RegExp('[0-9]'),
                              ),
                            ],
                            validator: (val) => controller.requiredFieldValidator(value: val),
                            prefixIcon: IconButton(
                                onPressed: () => controller.onStartDateCalenderPressed(context),
                                icon: const Icon(EvaIcons.calendar)),
                          ),

                          //! Start date field
                          TextBox(
                            titleText: Strings.vacationType,
                            controller: controller.vacationTypeController,
                            readOnly: controller.readOnly.value,
                            isRequired: true,
                            inputFormatters: [
                              MaskedInputFormatter(
                                "0000/00/00",
                                allowedCharMatcher: RegExp('[0-9]'),
                              ),
                            ],
                            validator: (val) => controller.requiredFieldValidator(value: val),
                            onChanged: (val) => controller.onChangeAmountOfVacation(val),
                          ),

                          //! Last period field
                          TextBox(
                            titleText: Strings.lastPeriodOfService,
                            controller: controller.vacationTypeController,
                            readOnly: controller.readOnly.value,
                            onChanged: (val) => controller.onChangeAmountOfVacation(val),
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          //! End date period field
                          TextBox(
                            titleText: Strings.endDate,
                            controller: controller.endDateController,
                            readOnly: controller.readOnly.value,
                            isRequired: true,
                            inputFormatters: [
                              MaskedInputFormatter(
                                "0000/00/00",
                                allowedCharMatcher: RegExp('[0-9]'),
                              ),
                            ],
                            validator: (val) => controller.requiredFieldValidator(value: val),
                            prefixIcon: IconButton(
                                onPressed: () => controller.onEndDateCalenderPressed(context),
                                icon: const Icon(EvaIcons.calendar)),
                          ),

                          //! End date field
                          TextBox(
                            titleText: Strings.endDateOfService,
                            controller: controller.endDateController,
                            inputFormatters: [
                              MaskedInputFormatter(
                                "0000/00/00",
                                allowedCharMatcher: RegExp('[0-9]'),
                              ),
                            ],
                            readOnly: true,
                            isRequired: true,
                          ),

                          //! Amount of service field
                          TextBox(
                            titleText: Strings.amountOfService,
                            controller: controller.amountController,
                            readOnly: true,
                          ),
                        ],
                      ),
                    ]),
                //! Description field
                TextBox(
                  titleText: Strings.description,
                  controller: controller.descriptionController,
                  readOnly: controller.readOnly.value,
                  width: double.maxFinite,
                  maxLines: 3,
                ),
              ],
            )));
  }
}
