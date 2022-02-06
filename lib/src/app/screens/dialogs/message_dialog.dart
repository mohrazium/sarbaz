import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarbaz/src/app/config/config.dart';

enum MessageDialogType {
  INFO,
  WARNING,
  ERROR,
  SUCCESSFULLY,
  FAILURE,
}
enum MessageDailogButtons {
  YES_NO,
  OK,
  OK_CANCEL,
}

class MessageDailog {
  static void show({
    Function? okPressed,
    Function? cancelPressed,
    Function? yesPressed,
    Function? noPressed,
    required String title,
    required String message,
    required MessageDialogType messageDialogType,
    required MessageDailogButtons messageDailogButtons,
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
                _chooseAssest(messageDialogType),
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
                messageDailogButtons,
                okPressed: okPressed,
                cancelPressed: cancelPressed,
                yesPressed: yesPressed,
                noPressed: noPressed,
              )
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  static Widget _chooseButtons(
    MessageDailogButtons buttons, {
    Function? okPressed,
    Function? cancelPressed,
    Function? yesPressed,
    Function? noPressed,
  }) {
    switch (buttons) {
      case MessageDailogButtons.OK:
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            // textTheme: Themizer.textStyle.,
            onPressed: () {
              if (okPressed != null) okPressed();

              if (Get.isDialogOpen!) Get.back();
            },
            child: const Text("باشه"),
          ),
        );
      case MessageDailogButtons.OK_CANCEL:
        return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  // textStyle: Themizer.textStyle,
                  onPressed: () {
                    if (okPressed != null) okPressed();

                    if (Get.isDialogOpen!) Get.back();
                  },
                  color: Colors.green,
                  child: const Text("تایید"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  // textStyle: Themizer.textStyle,
                  color: Colors.red,
                  onPressed: () {
                    if (cancelPressed != null) cancelPressed();

                    if (Get.isDialogOpen!) Get.back();
                  },
                  child: const Text("لغو"),
                ),
              ),
            ]);
      case MessageDailogButtons.YES_NO:
        return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              MaterialButton(
                // textStyle: Themizer.textStyle,
                onPressed: () {
                  if (yesPressed != null) yesPressed();

                  if (Get.isDialogOpen!) Get.back();
                },
                color: Colors.green,
                child: const Text("بله"),
              ),
              MaterialButton(
                color: Colors.red,
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

  static String _chooseAssest(MessageDialogType type) {
    switch (type) {
      case MessageDialogType.ERROR:
        return "assets/images/error.gif";
      case MessageDialogType.INFO:
        return "assets/images/info.gif";
      case MessageDialogType.WARNING:
        return "assets/images/warning.gif";
      case MessageDialogType.SUCCESSFULLY:
        return "assets/images/success.gif";
      case MessageDialogType.FAILURE:
        return "assets/images/error.gif";

      default:
        return "";
    }
  }
}
