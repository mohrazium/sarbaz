part of views;

class PersonalInfoView extends GetView<PersonalInfoController> {
  const PersonalInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        builder: (_) => FormCard(
            globalFormKey: controller.personalInfoFormGlobalKey,
            readyOnly: controller.readOnly.value,
            onConfirmButtonPressed: () => controller.onConfirmButtonPressed(),
            onCancelButtonPressed: () => controller.onCancelButtonPressed(),
            createdAt: controller.model.value.createdAt,
            updatedAt: controller.model.value.updatedAt,
            headerContent: const Center(
                child: Text(
              Strings.personalInfo,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      //! National code field
                      TextBox(
                        keyboardType: TextInputType.number,
                        titleText: Strings.nationalCode,
                        maxLength: 10,
                        controller: controller.nationalCodeController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (val) => controller.nationalIdentityValidator(
                            value: val,
                            errorMessage: Strings.wrongNationalIdentity),
                        onChanged: (val) =>
                            controller.onChangedNationalCodeField(val),
                      ),

                      //! First name field
                      TextBox(
                        titleText: Strings.firstName,
                        controller: controller.firstNameController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (val) =>
                            controller.requiredFieldValidator(value: val),
                        onChanged: (val) =>
                            controller.onChangedFirstAndLastNameField(val),
                      ),

                      //! Father name field
                      TextBox(
                        titleText: Strings.fatherName,
                        controller: controller.fatherNameController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (val) =>
                            controller.requiredFieldValidator(value: val),
                      ),
                      //! Place of birth field
                      TextBox(
                        titleText: Strings.placeOfBirth,
                        controller: controller.placeOfBirthController,
                        readOnly: controller.readOnly.value,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      //! National id field
                      TextBox(
                        keyboardType: TextInputType.number,
                        titleText: Strings.nationalIdentity,
                        maxLength: 10,
                        controller: controller.nationalIdentityController,
                        readOnly: controller.readOnly.value,
                      ),

                      //! Last name field
                      TextBox(
                        titleText: Strings.lastName,
                        controller: controller.lastNameController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        validator: (val) =>
                            controller.requiredFieldValidator(value: val),
                        onChanged: (val) =>
                            controller.onChangedFirstAndLastNameField(val),
                      ),

                      //! Date of birth field
                      TextBox(
                          titleText: Strings.dateOfBirth,
                          controller: controller.dateOfBirthController,
                          readOnly: controller.readOnly.value,
                          inputFormatters: [
                            MaskedInputFormatter(
                              "0000/00/00",
                              allowedCharMatcher: RegExp('[0-9]'),
                            ),
                          ],
                          prefixIcon: IconButton(
                              icon: const Icon(
                                EvaIcons.calendar,
                                color: Colorize.primaryColorShade300,
                              ),
                              onPressed: () =>
                                  controller.onCalenderPressed(context)),
                          validator: (val) =>
                              controller.dateValidator(value: val)),

                      //! Place of birth name field
                      TextBox(
                        titleText: Strings.placeOfIssue,
                        controller: controller.placeOfIssueController,
                        readOnly: controller.readOnly.value,
                      ),
                    ],
                  ),
                ])));
  }
}
