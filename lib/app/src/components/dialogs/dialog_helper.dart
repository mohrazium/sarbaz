// ignore_for_file: constant_identifier_names

part of components;

enum DialogType {
  INFO,
  WARNING,
  ERROR,
  SUCCESSFULLY,
  FAILURE,
}
enum DialogButtons {
  YES_NO,
  OK,
  OK_CANCEL,
}

class DialogHelper {
  static void showMessageBox({
    Function? onOkPressed,
    Function? onCancelPressed,
    Function? onYesPressed,
    Function? onNoPressed,
    required String title,
    required String message,
    required DialogType dialogType,
    required DialogButtons dialogButtons,
  }) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                _chooseAssets(dialogType),
                height: 64.0,
                width: 64.0,
              ),
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: Text(
                  title,
                  style: Fonts.headline5(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: Text(
                  message,
                  style: Fonts.body1(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
              const SizedBox(height: kSpacing),
              _chooseButtons(
                dialogButtons,
                okPressed: onOkPressed,
                cancelPressed: onCancelPressed,
                yesPressed: onYesPressed,
                noPressed: onNoPressed,
              )
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  static Widget _chooseButtons(
    DialogButtons buttons, {
    Function? okPressed,
    Function? cancelPressed,
    Function? yesPressed,
    Function? noPressed,
  }) {
    switch (buttons) {
      case DialogButtons.OK:
        return Padding(
          padding: const EdgeInsets.all(kPadding),
          child: ElevatedButton(
            onPressed: () {
              if (Get.isDialogOpen!) Get.back();

              if (okPressed != null) {
                okPressed();
              }
            },
            child: const Text("باشه"),
          ),
        );
      case DialogButtons.OK_CANCEL:
        return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colorize.accentColor,
                  ),
                  onPressed: () {
                    if (Get.isDialogOpen!) Get.back();

                    if (okPressed != null) {okPressed();}
                  },
                  child: const Text("تایید"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: ElevatedButton(
                  // textStyle: Themizer.textStyle,
                  style: ElevatedButton.styleFrom(
                    primary: Colorize.errorColor,
                  ),
                  onPressed: () {
                    if (Get.isDialogOpen!) Get.back();

                    if (cancelPressed != null) {
                      cancelPressed();
                    }
                  },
                  child: const Text("لغو"),
                ),
              ),
            ]);
      case DialogButtons.YES_NO:
        return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                // textStyle: Themizer.textStyle,
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();

                  if (yesPressed != null) {
                    yesPressed();
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colorize.accentColor,
                  onPrimary: Colorize.foregroundColorShade500,
                ),
                child: const Text("بله"),
              ),
              const SizedBox(width: kSpacing),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colorize.foregroundColorShade200,
                  onPrimary: Colorize.foregroundColorShade500,
                ),
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();

                  if (noPressed != null) {noPressed();}
                },
                child: const Text("خیر"),
              ),
            ]);
      default:
        return Container();
    }
  }

  static String _chooseAssets(DialogType type) {
    switch (type) {
      case DialogType.ERROR:
        return "assets/images/error.png";
      case DialogType.INFO:
        return "assets/images/info.png";
      case DialogType.WARNING:
        return "assets/images/warning.png";
      case DialogType.SUCCESSFULLY:
        return "assets/images/success.png";
      case DialogType.FAILURE:
        return "assets/images/failure.png";

      default:
        return "";
    }
  }

  static void show({
    Function? onOkPressed,
    Function? onCancelPressed,
    Widget? child,
    double? width,
    double? height,
    bool alwaysOpen = false,
    bool isScrollable = false,
    required String title,
  }) {
    final header = AppBar(
      automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(color: Colorize.foregroundColor),
      leading: IconButton(
        onPressed: () {
          if (Get.isDialogOpen!) Get.back();
        },
        icon: const Icon(EvaIcons.close),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: Fonts.headline6(),
      ),
      elevation: 0.0,
    );
    Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: SizedBox(
            width: width,
            height: height,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.all(Radius.circular(kBorderRadius)),
              child: Scaffold(
                  appBar: header,
                  body: Padding(
                    padding: const EdgeInsets.fromLTRB(
                        kPadding, 0, kPadding, kPadding),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        child != null
                            ? Expanded(
                                child: ListView(
                                  shrinkWrap: true,
                                  controller: ScrollController(),
                                  children: [
                                    Container(
                                        color: Colors.transparent, child: child)
                                  ],
                                ),
                              )
                            : Container(),
                        const SizedBox(height: kSpacing / 3),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              onOkPressed != null
                                  ? Padding(
                                      padding: const EdgeInsets.all(kPadding),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colorize.accentColor,
                                        ),
                                        onPressed: () {
                                          onOkPressed();
                                          if (Get.isDialogOpen!) {
                                            Get.back();
                                          }
                                        },
                                        child: const Text("تایید"),
                                      ),
                                    )
                                  : Container(),
                              onCancelPressed != null
                                  ? Padding(
                                      padding:
                                          const EdgeInsets.all(kPadding / 3),
                                      child: ElevatedButton(
                                        // textStyle: Themizer.textStyle,
                                        style: ElevatedButton.styleFrom(
                                          primary: Colorize.errorColor,
                                        ),
                                        onPressed: () {
                                          onCancelPressed();

                                          if (Get.isDialogOpen!) {
                                            Get.back();
                                          }
                                        },
                                        child: const Text("لغو"),
                                      ),
                                    )
                                  : Container(),
                            ])
                      ],
                    ),
                  )),
            )),
      ),
      barrierDismissible: !alwaysOpen,
    );
  }

  static void showLoading([String? title]) {
    Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: GroupBox(
          height: 150,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Center(
                child: CircularProgressIndicator(strokeWidth: 6),
              ),
              const SizedBox(
                height: kSpacing,
              ),
              Center(
                  child: Text(
                title ?? Strings.loading,
                style: Get.textTheme.bodyLarge,
              ))
            ],
          ),
        ),
      ),
      barrierColor: Colors.grey.withOpacity(.1),
    );
  }

  static void hideLoading() {
    if (Get.isDialogOpen!) {
      Future.delayed(const Duration(milliseconds: 250))
          .whenComplete(() => Get.back());
    }
  }

  static void showCrashReport([String? error]) {
    logger.error(error ?? "");
    DialogHelper.show(
      isScrollable: true,
      title: Strings.error,
      onOkPressed: () {},
      child: Text(
        error ?? "",
        textAlign: TextAlign.left,
        maxLines: 1000,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
