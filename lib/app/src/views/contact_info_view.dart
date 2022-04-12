part of views;

class ContactInfoView extends GetView<ContactInfoController> {
  const ContactInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        builder: (_) => FormCard(
            globalFormKey: controller.contactInfoFormGlobalKey,
            readyOnly: controller.readOnly.value,
            onConfirmButtonPressed: () => controller.onConfirmButtonPressed(),
            createdAt: controller.model.value.createdAt,
            updatedAt: controller.model.value.updatedAt,
            onCancelButtonPressed: () => controller.onCancelButtonPressed(),
            headerContent: const Center(
                child: Text(
              Strings.contactInfo,
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
                          //! Mobile number field
                          TextFieldCustom(
                            maxLength: 11,
                            titleText: Strings.mobileNumber,
                            controller: controller.mobileNumberController,
                            readOnly: controller.readOnly.value,
                            keyboardType: TextInputType.number,
                            isRequired: true,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            validator: (val) => controller.mobileNumberValidator(
                              value: val,
                              errorMessage: Strings.wrongMobileNumber,
                            ),
                          ),

                          //! Province field
                          TextFieldCustom(
                            titleText: Strings.livingProvince,
                            controller: controller.provinceController,
                            readOnly: controller.readOnly.value,
                          ),

                          //! Postal code field
                          TextFieldCustom(
                            titleText: Strings.postalCode,
                            controller: controller.postalCodeController,
                            readOnly: controller.readOnly.value,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          //! Phone number field
                          TextFieldCustom(
                            titleText: Strings.phoneNumber,
                            controller: controller.phoneNumberController,
                            readOnly: controller.readOnly.value,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),

                          //! City field
                          TextFieldCustom(
                            titleText: Strings.livingCity,
                            controller: controller.cityController,
                            readOnly: controller.readOnly.value,
                          ),

                          //! Distance field
                          TextFieldCustom(
                            titleText: Strings.distance,
                            controller: controller.distanceController,
                            readOnly: controller.readOnly.value,
                            keyboardType: TextInputType.number,
                            isRequired: true,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            validator: (val) =>
                                controller.requiredFieldValidator(value: val),
                          ),
                        ],
                      ),
                    ]),
                TextFieldCustom(
                  width: 600,
                  titleText: Strings.address,
                  controller: controller.addressController,
                  readOnly: controller.readOnly.value,
                  isRequired: true,
                  validator: (val) =>
                      controller.requiredFieldValidator(value: val),
                ),
                const RelativeContactInfoView()
              ],
            )));
  }
}
