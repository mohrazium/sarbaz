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
                onConfirmButtonPressed: () =>
                    controller.onConfirmButtonPressed(),
                onCancelButtonPressed: () => controller.onCancelButtonPressed(),
                headerContent: const Center(
                    child: Text(
                  Strings.personalInfo,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                columns: [
                  Column(
                    children: [
                      //! National code field
                      TextFieldCustom(
                        keyboardType: TextInputType.number,
                        titleText: Strings.nationalCode,
                        maxLength: 10,
                        controller: controller.nationalCodeController,
                        readOnly: controller.readOnly.value,
                        validator: (val) => controller.validateNationalIdentity(
                            value: val,
                            errorMessage: Strings.wrongNationalIdentity),
                        onChanged: (val) =>
                            controller.onChangedNationalCodeField(val),
                      ),

                      //! First name field
                      TextFieldCustom(
                        titleText: Strings.firstName,
                        controller: controller.firstNameController,
                        readOnly: controller.readOnly.value,
                        validator: (val) => controller.validateIsNotEmpty(
                          value: val,
                          errorMessage: Strings.requiredField,
                        ),
                      ),

//! Father name field
                      TextFieldCustom(
                        titleText: Strings.fatherName,
                        controller: controller.fatherNameController,
                        readOnly: controller.readOnly.value,
                        validator: (val) => controller.validateIsNotEmpty(
                          value: val,
                          errorMessage: Strings.requiredField,
                        ),
                      ),
                      //! Place of birth field
                      TextFieldCustom(
                        titleText: Strings.placeOfBirth,
                        controller: controller.placeOfBirthController,
                        readOnly: controller.readOnly.value,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      //! National id field
                      TextFieldCustom(
                        keyboardType: TextInputType.number,
                        titleText: Strings.nationalIdentity,
                        maxLength: 10,
                        controller: controller.nationalIdentityController,
                        readOnly: controller.readOnly.value,
                      ),

                      //! Last name field
                      TextFieldCustom(
                        titleText: Strings.lastName,
                        controller: controller.lastNameController,
                        readOnly: controller.readOnly.value,
                        validator: (val) => controller.validateIsNotEmpty(
                          value: val,
                          errorMessage: Strings.requiredField,
                        ),
                      ),

                      //! Date of birth field
                      TextFieldCustom(
                        titleText: Strings.dateOfBirth,
                        controller: controller.dateOfBirthController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: IconButton(
                            icon: const Icon(
                              EvaIcons.calendar,
                              color: Colorize.primaryColorShade300,
                            ),
                            onPressed: () =>
                                controller.onCalenderPressed(context)),
                      ),

                      //! Place of birth name field
                      TextFieldCustom(
                        titleText: Strings.placeOfIssue,
                        controller: controller.placeOfIssueController,
                        readOnly: controller.readOnly.value,
                      ),
                    ],
                  ),
                ]));
  }
}
