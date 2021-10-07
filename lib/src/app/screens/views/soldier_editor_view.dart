import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sarbaz/src/app/controllers/controllers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sarbaz/src/app/screens/dialogs/dialogs.dart';
import 'package:sarbaz/src/app/screens/themes/themes.dart';
import 'package:sarbaz/src/app/screens/widgets/date_picker_widget.dart';
import 'package:sarbaz/src/core/config/constants/constants.dart';

class SoldierEditorView extends GetView<SoldierEditorController> {
  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context)!;
    //final controller = Get.put(SoldierController);
    return GetBuilder<SoldierEditorController>(
      init: SoldierEditorController(),
      builder: (_) => Form(
        key: controller.soldierEditorFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        strings.personalInfo,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                    Container(height: 2.0, color: Colors.black26),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 220,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 80,
                                  child: TextFormField(
                                    onChanged: (val) async {
                                      var res = await controller
                                          .checkPersonalInfoDuplication();
                                      if (res) {
                                        MessageDailogs.show(
                                            title: "توجه",
                                            message:
                                                "این کد ملی قبلا ثبت شده است!",
                                            messageDailogButtons:
                                                MessageDailogButtons.OK,
                                            messageDialogType:
                                                MessageDialogType.ERROR,
                                            okPressed: () {
                                              controller
                                                  .nationalIdentityController
                                                  .clear();
                                            });
                                      }
                                    },
                                    keyboardType: TextInputType.number,
                                    controller:
                                        controller.nationalIdentityController,
                                    validator: (val) =>
                                        controller.validateNationalIdentity(
                                      value: val,
                                      errorMessage:
                                          strings.wrongNationalIdentity,
                                    ),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(10),
                                    ],
                                    decoration: InputDecoration(
                                        labelText: strings.nationalIdentity),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        controller:
                                            controller.lastNameController,
                                        validator: (val) =>
                                            controller.validateIsNotEmpty(
                                          value: val,
                                          errorMessage: strings.requiredField,
                                        ),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        decoration: InputDecoration(
                                            labelText: strings.lastName),
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(15),
                                        ],
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        validator: (val) =>
                                            controller.validateIsNotEmpty(
                                          value: val,
                                          errorMessage: strings.requiredField,
                                        ),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        decoration: InputDecoration(
                                          labelText: strings.maritalStatus,
                                          prefixIcon: PopupMenuButton<String>(
                                            icon: const Icon(
                                                Icons.arrow_drop_down),
                                            onSelected: (String value) {
                                              controller.maritalStatusController
                                                  .text = value;
                                              controller
                                                  .keepSelectedMaritalStatus();
                                            },
                                            itemBuilder:
                                                (BuildContext context) {
                                              return StringConstants
                                                  .maritalStatusList
                                                  .map<PopupMenuItem<String>>(
                                                      (String value) {
                                                return new PopupMenuItem(
                                                    child: new Text(value),
                                                    value: value);
                                              }).toList();
                                            },
                                          ),
                                        ),
                                        controller:
                                            controller.maritalStatusController,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(10),
                                        ],
                                        onChanged: (value) => controller
                                                .maritalStatusController.text =
                                            controller.selectedMaritalStatus
                                                as String,
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(15)
                                        ],
                                        decoration: InputDecoration(
                                            labelText: strings.filedOfStudy),
                                        controller:
                                            controller.filedOfStudyController,
                                      )))
                            ],
                          ),
                        ),
                        Container(
                          width: 220,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(10)
                                        ],
                                        decoration: InputDecoration(
                                            labelText: strings.nickName),
                                        controller:
                                            controller.nickNameController,
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(15)
                                        ],
                                        controller:
                                            controller.fatherNameController,
                                        decoration: InputDecoration(
                                            labelText: strings.fatherName),
                                        validator: (val) =>
                                            controller.validateIsNotEmpty(
                                          value: val,
                                          errorMessage: strings.requiredField,
                                        ),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          LengthLimitingTextInputFormatter(2)
                                        ],
                                        controller: controller
                                            .numberOfChildrenController,
                                        decoration: InputDecoration(
                                            labelText:
                                                strings.numberOfChildren),
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          LengthLimitingTextInputFormatter(11)
                                        ],
                                        controller:
                                            controller.mobileNumberController,
                                        validator: (value) =>
                                            controller.validateMobileNumber(
                                                value: value,
                                                errorMessage:
                                                    "شماره موبایل نامعتبر است."),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        decoration: InputDecoration(
                                            labelText: strings.mobileNumber),
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          width: 220,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        controller:
                                            controller.firstNameController,
                                        decoration: InputDecoration(
                                            labelText: strings.firstName),
                                        validator: (val) =>
                                            controller.validateIsNotEmpty(
                                          value: val,
                                          errorMessage: strings.requiredField,
                                        ),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(20)
                                        ],
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        controller:
                                            controller.dateOfBirthController,
                                        onTap: () async {
                                          controller
                                                  .dateOfBirthController.text =
                                              await DatePickerWidget.getPicker(
                                                  context);
                                        },
                                        decoration: InputDecoration(
                                            labelText: strings.dateOfBirth),
                                        validator: (val) =>
                                            controller.validateIsNotEmpty(
                                          value: val,
                                          errorMessage: strings.requiredField,
                                        ),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(10)
                                        ],
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        controller: controller
                                            .levelOfEducationController,
                                        decoration: InputDecoration(
                                            labelText: strings.levelOfEducation,
                                            prefixIcon: PopupMenuButton<String>(
                                              icon: const Icon(
                                                  Icons.arrow_drop_down),
                                              onSelected: (String value) {
                                                controller
                                                    .levelOfEducationController
                                                    .text = value;

                                                controller
                                                    .keepSelectedLevelOfEducation();
                                              },
                                              itemBuilder:
                                                  (BuildContext context) {
                                                return StringConstants
                                                    .levelOfEducationList
                                                    .map<PopupMenuItem<String>>(
                                                        (String value) {
                                                  return new PopupMenuItem(
                                                      child: new Text(value),
                                                      value: value);
                                                }).toList();
                                              },
                                            )),
                                        validator: (val) =>
                                            controller.validateIsNotEmpty(
                                          value: val,
                                          errorMessage: strings.requiredField,
                                        ),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(10)
                                        ],
                                        onChanged: (val) => controller
                                                .levelOfEducationController
                                                .text =
                                            controller.selectedLevelOfEducation
                                                as String,
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 80,
                                      child: TextFormField(
                                        controller: controller
                                            .telephoneNumberController,
                                        decoration: InputDecoration(
                                            labelText: strings.telephoneNumber),
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          LengthLimitingTextInputFormatter(20)
                                        ],
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 220,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        height: 80,
                                        child: TextFormField(
                                          controller:
                                              controller.distanceController,
                                          decoration: InputDecoration(
                                              labelText: strings.distance),
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                            LengthLimitingTextInputFormatter(5)
                                          ],
                                        ))),
                              ],
                            ),
                          ),
                          Container(
                              width: 445,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            height: 80,
                                            child: TextFormField(
                                              controller:
                                                  controller.addressController,
                                              decoration: InputDecoration(
                                                  labelText: strings.address),
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(
                                                    500)
                                              ],
                                            ))),
                                  ])),
                        ]),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GFButton(
                    textStyle: Themizer.textStyle,
                    size: 45,
                    color: GFColors.SUCCESS,
                    text: strings.next,
                    onPressed: () {
                      controller.save();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GFButton(
                    textStyle: Themizer.textStyle,
                    size: 45,
                    color: GFColors.DANGER,
                    text: strings.cancel,
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
