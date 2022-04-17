part of views;

class TrainingStatusView extends GetView<TrainingStatusController> {
  const TrainingStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        builder: (_) => FormCard(
            globalFormKey: controller.trainingStatusFormGlobalKey,
            readyOnly: controller.readOnly.value,
            onConfirmButtonPressed: () => controller.onConfirmButtonPressed(),
            createdAt: controller.model.value.createdAt,
            updatedAt: controller.model.value.updatedAt,
            onCancelButtonPressed: () => controller.onCancelButtonPressed(),
            headerContent: const Center(
                child: Text(
              Strings.trainingStatus,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          //! Place field
                          TextFieldCustom(
                            titleText: Strings.placeOfTraining,
                            controller: controller.placeNameController,
                            readOnly: controller.readOnly.value,
                            isRequired: true,
                            validator: (v) =>
                                controller.requiredFieldValidator(value: v),
                          ),

                          //! Start date field
                          TextFieldCustom(
                            titleText: Strings.startDate,
                            controller: controller.startDateController,
                            readOnly: controller.readOnly.value,
                            prefixIcon: IconButton(
                                onPressed: () =>
                                    controller.onCalenderPressed(context, true),
                                icon: const Icon(EvaIcons.calendar)),
                          ),

                          //! Training status field
                          TextFieldCustom(
                            titleText: Strings.trainingStatus,
                            controller: controller.statusController,
                            readOnly: controller.readOnly.value,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          //! Type of training field
                          TextFieldCustom(
                            titleText: Strings.typeOfTraining,
                            controller: controller.typeController,
                            readOnly: controller.readOnly.value,
                          ),
                          //! End date field
                          TextFieldCustom(
                            titleText: Strings.endDate,
                            controller: controller.endDateController,
                            readOnly: controller.readOnly.value,
                            prefixIcon: IconButton(
                                onPressed: () => controller.onCalenderPressed(
                                    context, false),
                                icon: const Icon(EvaIcons.calendar)),
                          ),
                          //! Period field
                          TextFieldCustom(
                            titleText: Strings.trainingPeriod,
                            controller: controller.periodController,
                            keyboardType: TextInputType.number,
                            readOnly: true,
                          ),
                        ],
                      ),
                    ]),
                //! Descriptions field
                TextFieldCustom(
                  width: 600,
                  titleText: Strings.description,
                  controller: controller.descriptionController,
                  readOnly: controller.readOnly.value,
                ),
              ],
            )));
  }
}
