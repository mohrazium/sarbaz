import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:sarbaz/src/app/config/constans/constans.dart';
import 'package:sarbaz/src/app/screens/controllers/controllers.dart';
import 'package:sarbaz/src/app/screens/dialogs/dialogs.dart';
import 'package:sarbaz/src/core/core.dart';

class SoldierEditorView extends GetView<SoldierEditorController> {
  const SoldierEditorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Step> getSteps() {
      return [
        Step(
          isActive: controller.currentStep.value >= 0,
          title: Text(
            Strings.personalInfo,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          content: personalInfoForm(context),
        ),
        Step(
          isActive: controller.currentStep.value >= 1,
          title: Text(
            Strings.personalInfo,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          content: personalInfoForm(context),
        )
      ];
    }

    return GetBuilder<SoldierEditorController>(
      init: SoldierEditorController(),
      builder: (_) => Form(
          key: controller.soldierEditorFormKey,
          child: Stepper(
            type: StepperType.horizontal,
            
            steps: getSteps())),
    );
  }

  Widget personalInfoForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: WidgetConstants.kTextFieldHeight,
                            width: WidgetConstants.kTextFieldWidth,
                            child: TextFormField(
                              onChanged: (val) async {
                                var res = await controller
                                    .checkPersonalInfoDuplication(val);
                                if (res) {
                                  MessageDailog.show(
                                      title: "توجه",
                                      message: "این کد ملی قبلا ثبت شده است!",
                                      messageDailogButtons:
                                          MessageDailogButtons.OK,
                                      messageDialogType:
                                          MessageDialogType.ERROR,
                                      okPressed: () {
                                        controller.nationalIdentityController
                                            .clear();
                                      });
                                }
                              },
                              keyboardType: TextInputType.number,
                              controller: controller.nationalIdentityController,
                              validator: (val) =>
                                  controller.validateNationalIdentity(
                                value: val,
                                errorMessage: Strings.wrongNationalIdentity,
                              ),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                              decoration: const InputDecoration(
                                  labelText: Strings.nationalIdentity),
                            ),
                          ),
                          SizedBox(
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
                              child: TextFormField(
                                controller: controller.lastNameController,
                                validator: (val) =>
                                    controller.validateIsNotEmpty(
                                  value: val,
                                  errorMessage: Strings.requiredField,
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                    labelText: Strings.lastName),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(15),
                                ],
                              )),
                          SizedBox(
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
                              child: TextFormField(
                                validator: (val) =>
                                    controller.validateIsNotEmpty(
                                  value: val,
                                  errorMessage: Strings.requiredField,
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  labelText: Strings.maritalStatus,
                                  prefixIcon: PopupMenuButton<String>(
                                    icon: const Icon(Icons.arrow_drop_down),
                                    onSelected: (String value) {
                                      controller.maritalStatusController.text =
                                          value;
                                      controller.keepSelectedMaritalStatus();
                                    },
                                    itemBuilder: (BuildContext context) {
                                      return StringConstants.maritalStatusList
                                          .map<PopupMenuItem<String>>(
                                              (String value) {
                                        return PopupMenuItem(
                                            child: Text(value), value: value);
                                      }).toList();
                                    },
                                  ),
                                ),
                                controller: controller.maritalStatusController,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10),
                                ],
                                onChanged: (value) =>
                                    controller.maritalStatusController.text =
                                        controller.selectedMaritalStatus.value,
                              )),
                          SizedBox(
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(15)
                                ],
                                decoration: const InputDecoration(
                                    labelText: Strings.filedOfStudy),
                                controller: controller.filedOfStudyController,
                              ))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10)
                                ],
                                decoration: const InputDecoration(
                                    labelText: Strings.nickName),
                                controller: controller.nickNameController,
                              )),
                          SizedBox(
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(15)
                                ],
                                controller: controller.fatherNameController,
                                decoration: const InputDecoration(
                                    labelText: Strings.fatherName),
                                validator: (val) =>
                                    controller.validateIsNotEmpty(
                                  value: val,
                                  errorMessage: Strings.requiredField,
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                              )),
                          SizedBox(
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
                              child: TextFormField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(2)
                                ],
                                controller:
                                    controller.numberOfChildrenController,
                                decoration: const InputDecoration(
                                    labelText: Strings.numberOfChildren),
                              )),
                          SizedBox(
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
                              child: TextFormField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(11)
                                ],
                                controller: controller.mobileNumberController,
                                validator: (value) =>
                                    controller.validateMobileNumber(
                                        value: value,
                                        errorMessage:
                                            "شماره موبایل نامعتبر است."),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                    labelText: Strings.mobileNumber),
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
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
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
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
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
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
                              height: WidgetConstants.kTextFieldHeight,
                              width: WidgetConstants.kTextFieldWidth,
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
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: WidgetConstants.kTextFieldHeight,
                            width: WidgetConstants.kTextFieldWidth,
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
                      ]),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
