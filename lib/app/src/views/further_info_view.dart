part of views;

class FurtherInfoView extends GetView<FurtherInfoController> {
  const FurtherInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        builder: (_) => FormCard(
            haveShadow: true,
            globalFormKey: controller.furtherInfoFormGlobalKey,
            readyOnly: controller.readOnly.value,
            onConfirmButtonPressed: () => controller.onConfirmButtonPressed(),
            createdAt: controller.model.value.createdAt,
            updatedAt: controller.model.value.updatedAt,
            onCancelButtonPressed: () => controller.onCancelButtonPressed(),
            headerContent: const Center(
                child: Text(
              Strings.furtherInfo,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      //! Marital state field
                      TextBox(
                        titleText: Strings.maritalState,
                        controller: controller.maritalStateController,
                        readOnly: controller.readOnly.value,
                        isRequired: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              Strings.maritalStateSingle),
                          FilteringTextInputFormatter.allow(
                              Strings.maritalStateMarried),
                        ],
                        prefixIcon: controller.getMaritalList(),
                        validator: (val) =>
                            controller.requiredFieldValidator(value: val),
                      ),

                      //! Number of children field
                      TextBox(
                        maxLength: 2,
                        titleText: Strings.numberOfChildren,
                        controller: controller.numberOfChildrenController,
                        readOnly: controller.readOnly.value,
                        enabled: controller.isEnableNumberOfChildrenFiled.value,
                        keyboardType: TextInputType.number,
                        // validator: (val) =>
                        //     controller.validateNumberOfChildren(val),
                        //TODO:FIX number of childs is valid for single person.
                      ),

                      //! Sect field
                      TextBox(
                        titleText: Strings.sect,
                        controller: controller.sectController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getSectList(),
                      ),

                      //! Weight field
                      TextBox(
                        titleText: Strings.weight,
                        controller: controller.weightController,
                        readOnly: controller.readOnly.value,
                        maxLength: 6,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                      ),

                      //! Eye color field
                      TextBox(
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
                      TextBox(
                          titleText: Strings.dateOfMarriage,
                          controller: controller.dateOfMarriageController,
                          readOnly: controller.readOnly.value,
                          enabled: controller.isEnableDateOfMarriageFiled.value,
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
                          validator: (val) =>
                              controller.dateValidator(value: val)
                          //TODO: FIX marital date to be before today date and is single or not otherwise is not valid.
                          ),

                      //! Religion field
                      TextBox(
                        titleText: Strings.religion,
                        controller: controller.religionController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getReligionList(),
                      ),

                      //! Height field
                      TextBox(
                        titleText: Strings.height,
                        controller: controller.heightController,
                        readOnly: controller.readOnly.value,
                        maxLength: 3,
                        keyboardType: TextInputType.number,
                      ),

                      //! Hair color field
                      TextBox(
                        titleText: Strings.hairColor,
                        controller: controller.hairColorController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getHairColorTypeList(),
                      ),

                      //! Blood color field
                      TextBox(
                        titleText: Strings.bloodType,
                        controller: controller.bloodTypeController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getBloodTypeList(),
                      ),
                    ],
                  ),
                ])));
  }
}
