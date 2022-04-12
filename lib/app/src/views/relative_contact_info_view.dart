part of views;

class RelativeContactInfoView extends GetView<RelativeContactsInfoController> {
  const RelativeContactInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        initState: ((state) {
          controller.initForm();
        }),
        init: controller,
        builder: (builder) {
          return Column(children: [
            const SizedBox(
              height: kSpacing,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 40),
                ),
                onPressed: !controller.contactController.readOnly.value
                    ? () => _buildPopupEditor(context)
                    : null,
                icon: const Icon(EvaIcons.personAdd),
                label: const SizedBox(
                    width: 200,
                    child: Center(child: Text(Strings.newRelativeContact)))),
            const SizedBox(
              height: kSpacing,
            ),
            GroupBox(
                padding: const EdgeInsets.all(0),
                height: 150,
                child: ListView(
                    shrinkWrap: true,
                    children: controller.contactsWidgetList.value)),
          ]);
        });
  }

  void _buildPopupEditor(ctx) {
    mdiController.addWindow(
        height: 566,
        width: 500,
        windowIdentifier: controller.mdiEditorId,
        context: ctx,
        title: Strings.newRelativeContact,
        body: GetX(
            init: controller,
            builder: (builder) {
              return FormCard(
                globalFormKey: controller.relativeContactInfoFormGlobalKey,
                readyOnly: controller.contactController.readOnly.value,
                onConfirmButtonPressed: () =>
                    controller.onConfirmButtonPressed(),
                createdAt: controller.model.value.createdAt,
                updatedAt: controller.model.value.updatedAt,
                onCancelButtonPressed: () {
                  controller.onCancelButtonPressed();
                  mdiController.closeWindow(controller.mdiEditorId);
                },
                headerContent: const Center(
                    child: Text(
                  Strings.contactInfo,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //! Name and family field
                          TextFieldCustom(
                            titleText: Strings.nameAndFamily,
                            controller: controller.nameAndFamilyController,
                            readOnly:
                                controller.contactController.readOnly.value,
                            isRequired: true,
                            validator: (val) =>
                                controller.requiredFieldValidator(value: val),
                          ),
                          //! Mobile number field
                          TextFieldCustom(
                            titleText: Strings.mobileNumber,
                            controller: controller.mobileNumberController,
                            maxLength: 11,
                            readOnly:
                                controller.contactController.readOnly.value,
                            isRequired: true,
                            keyboardType: TextInputType.number,
                            validator: (val) => controller.mobileNumberValidator(
                                value: val,
                                errorMessage: Strings.wrongMobileNumber),
                          ),
                        ]),
                    //! Home address field
                    TextFieldCustom(
                      width: 500,
                      titleText: Strings.homeAddress,
                      controller: controller.homeAddressController,
                      readOnly: controller.contactController.readOnly.value,
                    ),
                    //! Work address field
                    TextFieldCustom(
                      width: 500,
                      titleText: Strings.workAddress,
                      controller: controller.workAddressController,
                      readOnly: controller.contactController.readOnly.value,
                    ),
                    //! Description field
                    TextFieldCustom(
                      width: 500,
                      titleText: Strings.description,
                      controller: controller.descriptionController,
                      readOnly: controller.contactController.readOnly.value,
                    ),
                    const SizedBox(
                      height: kSpacing,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: controller.isEditorOpen.value,
                            onChanged: (val) =>
                                controller.onCheckBoxChange(val)),
                        const Text(Strings.keepOpenForm),
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}
