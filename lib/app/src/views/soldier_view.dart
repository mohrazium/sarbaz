part of views;

class SoldierView extends GetView<SoldierController> {
  const SoldierView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: controller,
        builder: (_) => FormCard(
            haveShadow: true,
            globalFormKey: controller.soldierFormGlobalKey,
            readyOnly: controller.readOnly.value,
            onConfirmButtonPressed: () => controller.onConfirmButtonPressed(),
            onCancelButtonPressed: () => controller.onCancelButtonPressed(),
            createdAt: controller.model.value.createdAt,
            updatedAt: controller.model.value.updatedAt,
            headerContent: const Center(
                child: Text(
              Strings.serviceInfo,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            child: Column(
              children: [
                // ImageViewPersonalPic(
                //             image: controller.imagePath.value.isNotEmpty
                //                 ? Image.file(
                //                     IO.loadFile(controller.imagePath.value))
                //                 : Image.asset(ImagesConstants.soldier),
                //             onNewPressed: () => controller.onNewImagePressed(),
                //             onRemovePressed: () =>
                //                 controller.onRemoveImagePressed(),
                //           ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          //! Case no field
                          TextBox(
                            titleText: Strings.caseNo,
                            controller: controller.caseNoController,
                            readOnly: controller.readOnly.value,
                            isRequired: true,
                            inputFormatters: [FilteringTextInputFormatter.allow("")],
                            prefixIcon: _getCaseNoListDialog(),
                            validator: (val) => controller.requiredFieldValidator(value: val),
                          ),
                          //! Personnel code field
                          TextBox(
                            titleText: Strings.personnelCode,
                            controller: controller.personnelCodeController,
                            readOnly: controller.readOnly.value,
                          ),

                          //! Case status field
                          TextBox(
                            titleText: Strings.caseStatus,
                            controller: controller.caseStatusController,
                            readOnly: true,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          //! Latest status field
                          TextBox(
                            titleText: Strings.latestStatusOfSoldier,
                            controller: controller.latestStatusController,
                            readOnly: true,
                          ),
                          //! Division status field
                          TextBox(
                            titleText: Strings.divisionStatus,
                            controller: controller.divisionStatusController,
                            readOnly: true,
                          ),

                          //! Archive case no field
                          TextBox(
                            titleText: Strings.archiveCaseNo,
                            controller: controller.archiveCaseNoController,
                            readOnly: true,
                          ),
                        ],
                      ),
                    ]),
              ],
            )));
  }

  _getCaseNoListDialog() {
    double width = 400, height = 550;
    return IconButton(
        onPressed: () async {
          DialogHelper.show(
            width: width,
            height: height,
            title: Strings.availableCaseNumbers,
            child: GetX(
                initState: (state) async {
                  await controller.loadAllCaseNo();
                },
                init: controller,
                builder: (_) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          color: Colorize.backgroundColor,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    borderRadius: const BorderRadius.all(Radius.circular(kBorderRadius)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(kPadding / 3),
                                      child: Icon(
                                        Icons.install_desktop,
                                        size: kPadding * 1.6,
                                      ),
                                    ),
                                    onTap: () {
                                      DialogHelper.showMessageBox(
                                          title: Strings.sureToProduceCaseNoTitle,
                                          message:
                                              "${Strings.sureToProduceCaseNo}\n${Strings.sureToProduceCaseNoDescription}",
                                          dialogType: DialogType.INFO,
                                          dialogButtons: DialogButtons.YES_NO,
                                          onYesPressed: () async {
                                            DialogHelper.showLoading();
                                            await controller
                                                .onGenerateCaseNoListPressed()
                                                .whenComplete(() => DialogHelper.hideLoading());
                                          });
                                    },
                                  ),
                                ],
                              ),
                              SearchField(
                                controller: controller.searchController,
                                onSearch: (value) => controller.onSearchCaseNo(value),
                              ),
                              const SizedBox(
                                height: kSpacing / 2.5,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width,
                          height: height - 185,
                          child: CustomScrollView(slivers: [
                            SliverList(
                                delegate: SliverChildListDelegate(
                                    controller.foundedCaseNoList.value.asMap().entries.map((item) {
                              if (!item.value.isFull) {
                                return CaseNoTile(
                                  model: item.value,
                                  onTap: () {
                                    controller.selectedCaseNoModel(item.value);
                                    controller.sendSelectedCaseNoModelToTextEditing();
                                  },
                                );
                              } else {
                                return Container();
                              }
                            }).toList())),
                          ]),
                        )
                      ],
                    )),
          );
        },
        icon: const Icon(Icons.arrow_drop_down));
  }
}
