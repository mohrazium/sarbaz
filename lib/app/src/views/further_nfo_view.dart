part of views;

class FurtherInfoView extends GetView<PersonalInfoController> {
  const FurtherInfoView({Key? key}) : super(key: key);

  // final int? id;
  // final String nationalCode;
  // final String? nationalIdentity;
  // final String firstName;
  // final String lastName;
  // final String? fatherName;
  // final DateTime? dateOfBirth;
  // final String? placeOfBirth;
  // final String? placeOfIssue;
  // final FurtherInfoModel? furtherInfo;
  // final ContactInfoModel? contactInfo;
  // final EducationalInfoModel? educationalInfo;
  // final SoldierModel? soldier;
  // final DateTime? createdAt;
  // final DateTime? updatedAt;

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        builder: (_) => FormCard(
                isEdit: controller.isEdit.value,
                onConfirmButtonPressed: controller.onConfirmButtonPressed,
                onCancelButtonPressed: controller.onCancelButtonPressed,
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
                        validator: (val) => controller.validateIsNotEmpty(
                          value: val,
                          errorMessage: Strings.requiredField,
                        ),
                      ),

                      //! Last name field
                      TextFieldCustom(
                        titleText: Strings.lastName,
                        controller: controller.lastNameController,
                        validator: (val) => controller.validateIsNotEmpty(
                          value: val,
                          errorMessage: Strings.requiredField,
                        ),
                      ),

                      //! Place of birth name field
                      TextFieldCustom(
                        titleText: Strings.placeOfBirth,
                        controller: controller.placeOfBirthController,
                      ),
                      TextFieldCustom(
                        titleText: Strings.placeOfBirth,
                        controller: controller.placeOfBirthController,
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
                        controller: controller.nationalCodeController,
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
                        validator: (val) => controller.validateIsNotEmpty(
                          value: val,
                          errorMessage: Strings.requiredField,
                        ),
                      ),

                      //! Last name field
                      TextFieldCustom(
                        titleText: Strings.lastName,
                        controller: controller.lastNameController,
                        validator: (val) => controller.validateIsNotEmpty(
                          value: val,
                          errorMessage: Strings.requiredField,
                        ),
                      ),

                      //! Place of birth name field
                      TextFieldCustom(
                        titleText: Strings.placeOfBirth,
                        controller: controller.placeOfBirthController,
                      ),TextFieldCustom(
                        titleText: Strings.placeOfBirth,
                        controller: controller.placeOfBirthController,
                      ),TextFieldCustom(
                        titleText: Strings.placeOfBirth,
                        controller: controller.placeOfBirthController,
                      ),
                    ],
                  ),
                ]));

    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    //     ConstrainedBox(
    //       constraints: const BoxConstraints(minWidth: 200, maxWidth: 1000),
    //       child: GroupBox(
    //         color: Colorize.backgroundColorShade200,
    //         padding: const EdgeInsets.only(top: kPadding),
    //         child: Column(
    //           children: [
    //             Column(
    //               children: [
    //                 Column(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   crossAxisAlignment: CrossAxisAlignment.stretch,
    //                   mainAxisSize: MainAxisSize.min,
    //                   children: [
    //                     Container(
    //                         color: Colorize.primaryColorShade100,
    //                         child: const Padding(
    //                             padding: EdgeInsets.all(kPadding),
    //                             child:
    //                                 Center(child: Text(Strings.personalInfo)))),
    //                     Padding(
    //                       padding: const EdgeInsets.all(kPadding),
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                         crossAxisAlignment: CrossAxisAlignment.center,
    //                         children: [
    //                           Column(
    //                             children: [
    //                               SizedBox(
    //                                 height: kTextFieldHeight,
    //                                 width: kTextFieldWidth,
    //                                 child: TextFormField(
    //                                   onChanged: (val) async {
    //                                     var res = await controller
    //                                         .checkPersonalInfoDuplication(val);
    //                                     if (res) {
    //                                       MessageDailog.show(
    //                                           title: "توجه",
    //                                           message:
    //                                               "این کد ملی قبلا ثبت شده است!",
    //                                           messageDailogButtons:
    //                                               MessageDailogButtons.OK,
    //                                           messageDialogType:
    //                                               MessageDialogType.ERROR,
    //                                           okPressed: () {
    //                                             controller
    //                                                 .nationalIdentityController
    //                                                 .clear();
    //                                           });
    //                                     }
    //                                   },
    //                                   keyboardType: TextInputType.number,
    //                                   controller:
    //                                       controller.nationalIdentityController,
    //                                   validator: (val) =>
    //                                       controller.validateNationalIdentity(
    //                                     value: val,
    //                                     errorMessage:
    //                                         Strings.wrongNationalIdentity,
    //                                   ),
    //                                   autovalidateMode:
    //                                       AutovalidateMode.onUserInteraction,
    //                                   inputFormatters: [
    //                                     FilteringTextInputFormatter.digitsOnly,
    //                                     LengthLimitingTextInputFormatter(10),
    //                                   ],
    //                                   decoration: const InputDecoration(
    //                                       labelText: Strings.nationalIdentity),
    //                                 ),
    //                               ),
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     controller:
    //                                         controller.lastNameController,
    //                                     validator: (val) =>
    //                                         controller.validateIsNotEmpty(
    //                                       value: val,
    //                                       errorMessage: Strings.requiredField,
    //                                     ),
    //                                     autovalidateMode:
    //                                         AutovalidateMode.onUserInteraction,
    //                                     decoration: const InputDecoration(
    //                                         labelText: Strings.lastName),
    //                                     inputFormatters: [
    //                                       LengthLimitingTextInputFormatter(15),
    //                                     ],
    //                                   )),
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     validator: (val) =>
    //                                         controller.validateIsNotEmpty(
    //                                       value: val,
    //                                       errorMessage: Strings.requiredField,
    //                                     ),
    //                                     autovalidateMode:
    //                                         AutovalidateMode.onUserInteraction,
    //                                     decoration: InputDecoration(
    //                                       labelText: Strings.maritalStatus,
    //                                       prefixIcon: PopupMenuButton<String>(
    //                                         icon: const Icon(
    //                                             Icons.arrow_drop_down),
    //                                         onSelected: (String value) {
    //                                           controller.maritalStatusController
    //                                               .text = value;
    //                                           controller
    //                                               .keepSelectedMaritalStatus();
    //                                         },
    //                                         itemBuilder:
    //                                             (BuildContext context) {
    //                                           return Strings.maritalStatusList
    //                                               .map<PopupMenuItem<String>>(
    //                                                   (String value) {
    //                                             return PopupMenuItem(
    //                                                 child: Text(value),
    //                                                 value: value);
    //                                           }).toList();
    //                                         },
    //                                       ),
    //                                     ),
    //                                     controller:
    //                                         controller.maritalStatusController,
    //                                     inputFormatters: [
    //                                       LengthLimitingTextInputFormatter(10),
    //                                     ],
    //                                     onChanged: (value) => controller
    //                                             .maritalStatusController.text =
    //                                         controller
    //                                             .selectedMaritalStatus.value,
    //                                   )),
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     inputFormatters: [
    //                                       LengthLimitingTextInputFormatter(15)
    //                                     ],
    //                                     decoration: const InputDecoration(
    //                                         labelText: Strings.filedOfStudy),
    //                                     controller:
    //                                         controller.filedOfStudyController,
    //                                   )),
    //                             ],
    //                           ),
    //                           Column(
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: [
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     inputFormatters: [
    //                                       LengthLimitingTextInputFormatter(10)
    //                                     ],
    //                                     decoration: const InputDecoration(
    //                                         labelText: Strings.nickName),
    //                                     controller:
    //                                         controller.nickNameController,
    //                                   )),
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     inputFormatters: [
    //                                       LengthLimitingTextInputFormatter(15)
    //                                     ],
    //                                     controller:
    //                                         controller.fatherNameController,
    //                                     decoration: const InputDecoration(
    //                                         labelText: Strings.fatherName),
    //                                     validator: (val) =>
    //                                         controller.validateIsNotEmpty(
    //                                       value: val,
    //                                       errorMessage: Strings.requiredField,
    //                                     ),
    //                                     autovalidateMode:
    //                                         AutovalidateMode.onUserInteraction,
    //                                   )),
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     inputFormatters: [
    //                                       FilteringTextInputFormatter
    //                                           .digitsOnly,
    //                                       LengthLimitingTextInputFormatter(2)
    //                                     ],
    //                                     controller: controller
    //                                         .numberOfChildrenController,
    //                                     decoration: const InputDecoration(
    //                                         labelText:
    //                                             Strings.numberOfChildren),
    //                                   )),
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     inputFormatters: [
    //                                       FilteringTextInputFormatter
    //                                           .digitsOnly,
    //                                       LengthLimitingTextInputFormatter(11)
    //                                     ],
    //                                     controller:
    //                                         controller.mobileNumberController,
    //                                     validator: (value) =>
    //                                         controller.validateMobileNumber(
    //                                             value: value,
    //                                             errorMessage:
    //                                                 "شماره موبایل نامعتبر است."),
    //                                     autovalidateMode:
    //                                         AutovalidateMode.onUserInteraction,
    //                                     decoration: const InputDecoration(
    //                                         labelText: Strings.mobileNumber),
    //                                   )),
    //                             ],
    //                           ),
    //                           Column(
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: [
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     inputFormatters: [
    //                                       LengthLimitingTextInputFormatter(10)
    //                                     ],
    //                                     decoration: const InputDecoration(
    //                                         labelText: Strings.nickName),
    //                                     controller:
    //                                         controller.nickNameController,
    //                                   )),
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     inputFormatters: [
    //                                       LengthLimitingTextInputFormatter(15)
    //                                     ],
    //                                     controller:
    //                                         controller.fatherNameController,
    //                                     decoration: const InputDecoration(
    //                                         labelText: Strings.fatherName),
    //                                     validator: (val) =>
    //                                         controller.validateIsNotEmpty(
    //                                       value: val,
    //                                       errorMessage: Strings.requiredField,
    //                                     ),
    //                                     autovalidateMode:
    //                                         AutovalidateMode.onUserInteraction,
    //                                   )),
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     inputFormatters: [
    //                                       FilteringTextInputFormatter
    //                                           .digitsOnly,
    //                                       LengthLimitingTextInputFormatter(2)
    //                                     ],
    //                                     controller: controller
    //                                         .numberOfChildrenController,
    //                                     decoration: const InputDecoration(
    //                                         labelText:
    //                                             Strings.numberOfChildren),
    //                                   )),
    //                               SizedBox(
    //                                   height: kTextFieldHeight,
    //                                   width: kTextFieldWidth,
    //                                   child: TextFormField(
    //                                     inputFormatters: [
    //                                       FilteringTextInputFormatter
    //                                           .digitsOnly,
    //                                       LengthLimitingTextInputFormatter(11)
    //                                     ],
    //                                     controller:
    //                                         controller.mobileNumberController,
    //                                     validator: (value) =>
    //                                         controller.validateMobileNumber(
    //                                             value: value,
    //                                             errorMessage:
    //                                                 "شماره موبایل نامعتبر است."),
    //                                     autovalidateMode:
    //                                         AutovalidateMode.onUserInteraction,
    //                                     decoration: const InputDecoration(
    //                                         labelText: Strings.mobileNumber),
    //                                   )),
    //                             ],
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 _buildButtons(),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }

  Widget _buildButtons() {
    Widget _buildConfirmButton({bool isEdit = false}) {
      return ElevatedButton.icon(
        icon: Icon(
          isEdit ? EvaIcons.edit : EvaIcons.checkmark,
          size: 24,
        ),
        onPressed: () => controller.onConfirmButtonClick(),
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(120, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          elevation: 0,
        ),
        label: Text(isEdit ? Strings.edit : Strings.save),
      );
    }

    Widget _buildCancelButton() {
      return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(120, 40),
          primary: Colors.grey[300],
          onPrimary: Colors.grey[850],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          elevation: 0,
        ),
        child: const Text(Strings.cancel),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: GetX(
          init: controller,
          builder: (_) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _buildConfirmButton(isEdit: controller.isEdit.value),
                const SizedBox(
                  width: 10,
                ),
                _buildCancelButton()
              ],
            );
          }),
    );
  }
}


/*  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: kTextFieldHeight,
                                        width: kTextFieldWidth,
                                        child: TextFormField(
                                          controller: controller.firstNameController,
                                          decoration: const InputDecoration(
                                              labelText: Strings.firstName),
                                          validator: (val) =>
                                              controller.validateIsNotEmpty(
                                            value: val,
                                            errorMessage: Strings.requiredField,
                                          ),
                                          autovalidateMode:
                                              AutovalidateMode.onUserInteraction,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(20)
                                          ],
                                        )),
                                    SizedBox(
                                        height: kTextFieldHeight,
                                        width: kTextFieldWidth,
                                        child: TextFormField(
                                          controller: controller.dateOfBirthController,
                                          onTap: () async {
                                            // controller.dateOfBirthController.text =
                                            // await DatePickerWidget.getPicker(context);
                                          },
                                          decoration: const InputDecoration(
                                              labelText: Strings.dateOfBirth),
                                          validator: (val) =>
                                              controller.validateIsNotEmpty(
                                            value: val,
                                            errorMessage: Strings.requiredField,
                                          ),
                                          autovalidateMode:
                                              AutovalidateMode.onUserInteraction,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(10)
                                          ],
                                        )),
                                    SizedBox(
                                        height: kTextFieldHeight,
                                        width: kTextFieldWidth,
                                        child: TextFormField(
                                          enabled: true,
                                          controller:
                                              controller.levelOfEducationController,
                                          decoration: InputDecoration(
                                              labelText: Strings.levelOfEducation,
                                              prefixIcon: PopupMenuButton<String>(
                                                icon: const Icon(Icons.arrow_drop_down),
                                                onSelected: (String value) {
                                                  controller.levelOfEducationController
                                                      .text = value;

                                                  controller
                                                      .keepSelectedLevelOfEducation();
                                                },
                                                itemBuilder: (BuildContext context) {
                                                  return Strings.levelOfEducationList
                                                      .map<PopupMenuItem<String>>(
                                                          (String value) {
                                                    return PopupMenuItem(
                                                        child: Text(value),
                                                        value: value);
                                                  }).toList();
                                                },
                                              )),
                                          validator: (val) =>
                                              controller.validateIsNotEmpty(
                                            value: val,
                                            errorMessage: Strings.requiredField,
                                          ),
                                          autovalidateMode:
                                              AutovalidateMode.onUserInteraction,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(10)
                                          ],
                                          onChanged: (val) => controller
                                                  .levelOfEducationController.text =
                                              controller.selectedLevelOfEducation.value,
                                        )),
                                    SizedBox(
                                        height: kTextFieldHeight,
                                        width: kTextFieldWidth,
                                        child: TextFormField(
                                          controller:
                                              controller.telephoneNumberController,
                                          decoration: const InputDecoration(
                                              labelText: Strings.telephoneNumber),
                                          inputFormatters: [
                                            FilteringTextInputFormatter.digitsOnly,
                                            LengthLimitingTextInputFormatter(20)
                                          ],
                                        )),
                                  ],
                                ),*/

/*Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: kTextFieldHeight,
                                    width: kTextFieldWidth,
                                    child: TextFormField(
                                      controller: controller.distanceController,
                                      decoration: const InputDecoration(
                                          labelText: Strings.distance),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                        LengthLimitingTextInputFormatter(5)
                                      ],
                                    )),
                                SizedBox(
                                    width: 460,
                                    child: TextFormField(
                                      controller: controller.addressController,
                                      decoration: const InputDecoration(
                                          labelText: Strings.address),
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(500)
                                      ],
                                    )),
                              ]),*/