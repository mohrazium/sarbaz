// ignore_for_file: constant_identifier_names

part of components;

enum MessageDialogType {
  INFO,
  WARNING,
  ERROR,
  SUCCESSFULLY,
  FAILURE,
}
enum MessageDialogButtons {
  YES_NO,
  OK,
  OK_CANCEL,
}

class MessageDialog {
  static void show({
    Function? onOkPressed,
    Function? onCancelPressed,
    Function? onYesPressed,
    Function? onNoPressed,
    required String title,
    required String message,
    required MessageDialogType messageDialogType,
    required MessageDialogButtons messageDialogButtons,
  }) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                _chooseAssets(messageDialogType),
                height: 86.0,
                width: 86.0,
              ),
              Text(
                title,
                style: Fonts.headline5(),
              ),
              Text(
                message,
              ),
              _chooseButtons(
                messageDialogButtons,
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
    MessageDialogButtons buttons, {
    Function? okPressed,
    Function? cancelPressed,
    Function? yesPressed,
    Function? noPressed,
  }) {
    switch (buttons) {
      case MessageDialogButtons.OK:
        return Padding(
          padding: const EdgeInsets.all(kPadding),
          child: ElevatedButton(
            onPressed: () {
              if (okPressed != null) {
                okPressed();
              }

              if (Get.isDialogOpen!) {
                Get.back();
              }
            },
            child: const Text("باشه"),
          ),
        );
      case MessageDialogButtons.OK_CANCEL:
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
                    if (okPressed != null) {
                      okPressed();
                    }

                    if (Get.isDialogOpen!) {
                      Get.back();
                    }
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
                    if (cancelPressed != null) {
                      cancelPressed();
                    }

                    if (Get.isDialogOpen!) {
                      Get.back();
                    }
                  },
                  child: const Text("لغو"),
                ),
              ),
            ]);
      case MessageDialogButtons.YES_NO:
        return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                // textStyle: Themizer.textStyle,
                onPressed: () {
                  if (yesPressed != null) yesPressed();

                  if (Get.isDialogOpen!) Get.back();
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
                  if (noPressed != null) noPressed();

                  if (Get.isDialogOpen!) Get.back();
                },
                child: const Text("خیر"),
              ),
            ]);
      default:
        return Container();
    }
  }

  static String _chooseAssets(MessageDialogType type) {
    switch (type) {
      case MessageDialogType.ERROR:
        return "assets/images/error.png";
      case MessageDialogType.INFO:
        return "assets/images/info.png";
      case MessageDialogType.WARNING:
        return "assets/images/warning.png";
      case MessageDialogType.SUCCESSFULLY:
        return "assets/images/success.png";
      case MessageDialogType.FAILURE:
        return "assets/images/failure.png";

      default:
        return "";
    }
  }
}
