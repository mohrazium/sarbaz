import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sarbaz/src/app/controllers/controllers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sarbaz/src/app/screens/themes/themes.dart';
import 'package:sarbaz/src/app/screens/widgets/date_picker_widget.dart';
import 'package:sarbaz/src/core/config/constants/constants.dart';

class SoldierEditorView extends GetView<SoldierController> {
  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context)!;

    //final controller = Get.put(SoldierController);
    return GetBuilder<SoldierController>(
      init: SoldierController(), // INIT IT ONLY THE FIRST TIME
      builder: (_) => Form(
        // key: dController.sodierEditorFormKey,

        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          strings.personalInfo,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(height: 2.0, color: Colors.black26),
                      SizedBox(
                        height: 5.0,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 220,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller:
                                      controller.nationalIdentityController,
                                  validator: (val) =>
                                      controller.validateNationalIdentity(
                                    value: val,
                                    errorMessage: strings.wrongNationalIdentity,
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
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: controller.lastNameController,
                                  decoration: InputDecoration(
                                      labelText: strings.lastName),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(15),
                                  ],
                                  validator: (val) =>
                                      controller.validateIsNotEmpty(
                                    value: val,
                                    errorMessage: strings.requiredField,
                                  ),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
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
                                      icon: const Icon(Icons.arrow_drop_down),
                                      onSelected: (String value) {
                                        controller.maritalStatusController
                                            .text = value;
                                        controller.keepSelectedMaritalStatus();
                                      },
                                      itemBuilder: (BuildContext context) {
                                        return StringConstants.maritalStatusList
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
                                      .maritalStatusController
                                      .text = controller.selectedMaritalStatus,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(15)
                                    ],
                                    decoration: InputDecoration(
                                        labelText: strings.filedOfStudy),
                                    controller:
                                        controller.filedOfStudyController),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10)
                                  ],
                                  decoration: InputDecoration(
                                      labelText: strings.nickName),
                                  controller: controller.nickNameController,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(15)
                                  ],
                                  controller: controller.fatherNameController,
                                  decoration: InputDecoration(
                                      labelText: strings.fatherName),
                                  validator: (val) =>
                                      controller.validateIsNotEmpty(
                                    value: val,
                                    errorMessage: strings.requiredField,
                                  ),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(2)
                                  ],
                                  controller:
                                      controller.numberOfChildrenController,
                                  decoration: InputDecoration(
                                      labelText: strings.numberOfChildren),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
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
                                  decoration: InputDecoration(
                                      labelText: strings.mobileNumber),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
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
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: controller.dateOfBirthController,
                                  onTap: () async {
                                    controller.dateOfBirthController.text =
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
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller:
                                      controller.levelOfEducationController,
                                  decoration: InputDecoration(
                                      labelText: strings.levelOfEducation,
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
                                    errorMessage: strings.requiredField,
                                  ),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10)
                                  ],
                                  onChanged: (val) => controller
                                          .levelOfEducationController.text =
                                      controller.selectedLevelOfEducation,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: strings.telephoneNumber),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(20)
                                  ],
                                ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        labelText: strings.distance),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(5)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: 445,
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        maxLines: 3,
                                        decoration: InputDecoration(
                                            labelText: strings.address),
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(10)
                                        ],
                                      ),
                                    ])),
                          ]),
                    ],
                  ),
                ],
              ),
              SoldierEditorButtonSheetWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class SoldierEditorButtonSheetWidget extends StatelessWidget {
  const SoldierEditorButtonSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context)!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GFButton(
            textStyle: STheme.textStyle,
            size: 45,
            color: GFColors.SUCCESS,
            text: strings.next,
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GFButton(
            textStyle: STheme.textStyle,
            size: 45,
            color: GFColors.DANGER,
            text: strings.cancel,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
