part of views;

class FurtherInfoView extends GetView<FurtherInfoController> {
  const FurtherInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        builder: (_) => FormCard(
                globalFormKey: controller.furtherInfoFormGlobalKey,
                readyOnly: controller.readOnly.value,
                onConfirmButtonPressed: () =>
                    controller.onConfirmButtonPressed(),
                onCancelButtonPressed: () => controller.onCancelButtonPressed(),
                headerContent: const Center(
                    child: Text(
                  Strings.furtherInfo,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                columns: [
                  Column(
                    children: [
                      //! Marital state field
                      TextFieldCustom(
                        titleText: Strings.maritalState,
                        controller: controller.maritalStateController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getMaritalList(),
                        validator: (val) => controller.validateIsNotEmpty(
                          value: val,
                          errorMessage: Strings.requiredField,
                        ),
                      ),

                      //! Number of children field
                      TextFieldCustom(
                        maxLength: 2,
                        titleText: Strings.numberOfChildren,
                        controller: controller.numberOfChildrenController,
                        readOnly: controller.readOnly.value,
                        keyboardType: TextInputType.number,
                        // validator: (val) =>
                        //     controller.validateNumberOfChildren(val),
                        //TODO:FIX number of childs is valid for single person.
                      ),

                      //! Sect field
                      TextFieldCustom(
                        titleText: Strings.sect,
                        controller: controller.sectController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getSectList(),
                      ),

                      //! Weight field
                      TextFieldCustom(
                        titleText: Strings.weight,
                        controller: controller.weightController,
                        readOnly: controller.readOnly.value,
                        maxLength: 6,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                      ),

                      //! Eye color field
                      TextFieldCustom(
                        titleText: Strings.eyesColor,
                        controller: controller.eyesColorController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getEyeColorTypeList(),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      //! Date of marriage field
                      TextFieldCustom(
                        titleText: Strings.dateOfMarriage,
                        controller: controller.dateOfMarriageController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: IconButton(
                            icon: const Icon(
                              EvaIcons.calendar,
                              color: Colorize.primaryColorShade300,
                            ),
                            onPressed: () =>
                                controller.onCalenderPressed(context)),
                        inputFormatters: [
                          MaskedInputFormatter(
                            "0000/00/00",
                            allowedCharMatcher: RegExp('[0-9]'),
                          ),
                        ],
                        //TODO: FIX marital date to be before today date and is single or not otherwise is not valid.
                      ),

                      //! Religion field
                      TextFieldCustom(
                        titleText: Strings.religion,
                        controller: controller.religionController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getReligionList(),
                      ),

                      //! Height field
                      TextFieldCustom(
                        titleText: Strings.height,
                        controller: controller.heightController,
                        readOnly: controller.readOnly.value,
                        maxLength: 3,
                        keyboardType: TextInputType.number,
                      ),

                      //! Hair color field
                      TextFieldCustom(
                        titleText: Strings.hairColor,
                        controller: controller.hairColorController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getHairColorTypeList(),
                      ),

                      //! Blood color field
                      TextFieldCustom(
                        titleText: Strings.bloodType,
                        controller: controller.bloodTypeController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getBloodTypeList(),
                      ),
                    ],
                  ),
                ]));
  }
}
