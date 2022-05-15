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
            headerContent:const Center(
              child:  Text(
                Strings.vacation,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            footerChild: Tooltip(
              message: Strings.saveNewVacation,
              child: ElevatedButton(
                onPressed: controller.readOnly.isTrue ? () => controller.onClearFormPressed() : null,
                child: const Icon(
                  EvaIcons.fileAddOutline,
                  size: kPadding * 1.6,
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(56, 45),
                  maximumSize: const Size(56, 45),
                ),
              ),
            ),
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
                            validator: (val) => controller.dateValidator(isRequired: true, value: val),
                            prefixIcon: IconButton(
                                onPressed: () => controller.onStartDateCalenderPressed(context),
                                icon: const Icon(EvaIcons.calendar)),
                          ),

                          //! Vacation type field
                          TextBox(
                            titleText: Strings.vacationType,
                            controller: controller.vacationTypeController,
                            readOnly: controller.readOnly.value,
                            isRequired: true,
                            prefixIcon: PopupMenuButton<String>(
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(width: 1.0, style: BorderStyle.none),
                                borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
                              ),
                              icon: const Icon(Icons.arrow_drop_down),
                              onSelected: (String value) {
                                controller.vacationTypeController.text = value;
                              },
                              itemBuilder: (BuildContext context) {
                                return Strings.vacationsTypeList.map<PopupMenuItem<String>>((String value) {
                                  return PopupMenuItem(
                                      child: SizedBox(width: kTextFieldWidth / 1.2, child: Text(value)), value: value);
                                }).toList();
                              },
                            ),
                            inputFormatters: [FilteringTextInputFormatter.allow("")],
                            validator: (val) => controller.requiredFieldValidator(value: val),
                            onChanged: (val) => controller.onChangeAmountOfVacation(val),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          //! End date field
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
                            validator: (val) => controller.endDateAfterStartDateValidator(
                              isRequired: true,
                              endDate: val,
                              startDate: controller.startDateController.text,
                            ),
                            prefixIcon: IconButton(
                                onPressed: () => controller.onEndDateCalenderPressed(context),
                                icon: const Icon(EvaIcons.calendar)),
                          ),

                          //! Days count field
                          TextBox(
                            titleText: Strings.daysCount,
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
