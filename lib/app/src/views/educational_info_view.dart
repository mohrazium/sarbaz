part of views;

class EducationalInfoView extends GetView<EducationalInfoController> {
  const EducationalInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        builder: (_) => FormCard(
            globalFormKey: controller.educationalInfoFormGlobalKey,
            readyOnly: controller.readOnly.value,
            onConfirmButtonPressed: () => controller.onConfirmButtonPressed(),
            createdAt: controller.model.value.createdAt,
            updatedAt: controller.model.value.updatedAt,
            onCancelButtonPressed: () => controller.onCancelButtonPressed(),
            headerContent: const Center(
                child: Text(
              Strings.educationalInfo,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      //! Filed Of Study field
                      TextFieldCustom(
                          titleText: Strings.levelOfEducation,
                          controller: controller.levelOfEducationController,
                          readOnly: controller.readOnly.value,
                          isRequired: true,
                          prefixIcon: controller.getLevelOfEducation(),
                          validator: (val) =>
                              controller.requiredFieldValidator(value: val)),

                      //! Edu place field
                      TextFieldCustom(
                        titleText: Strings.educationalPlace,
                        controller: controller.educationPlaceController,
                        readOnly: controller.readOnly.value,
                      ),

                      //! Skills code field
                      TextFieldCustom(
                        titleText: Strings.skills,
                        controller: controller.skillsController,
                        readOnly: controller.readOnly.value,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      //! Filed of study field
                      TextFieldCustom(
                        titleText: Strings.filedOfStudy,
                        controller: controller.fieldOfStudyController,
                        readOnly: controller.readOnly.value,
                      ),

                      //! Grade field
                      TextFieldCustom(
                        titleText: Strings.grade,
                        controller: controller.gradeController,
                        readOnly: controller.readOnly.value,
                      ),

                      //! Permission to study field
                      TextFieldCustom(
                        titleText: Strings.permissionToStudy,
                        controller: controller.permissionToStudyController,
                        readOnly: controller.readOnly.value,
                        prefixIcon: controller.getPermissions(),
                      )
                    ],
                  ),
                ])));
  }
}
