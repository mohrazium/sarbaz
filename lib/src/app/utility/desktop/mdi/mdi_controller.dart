import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';
import 'package:sarbaz/src/core/config/injection/injector.dart';
import 'package:sarbaz/src/core/config/logger/logger_service.dart';

import 'mdi.dart';

class MdiController {
  var logger = Injector.resolve<LoggerService>();
  List<MdiWindow> _windows = List.empty(growable: true);

  VoidCallback _onUpdate;

  List<MdiWindow> get windows => _windows;

  MdiController(this._onUpdate);

  void addWindow({
    required String windowIdentifier,
    required BuildContext context,
    required String title,
    required Widget body,
    double? width,
    double? height,
  }) {
    MdiWindow window = MdiWindow(
      windowIdentifier: windowIdentifier,
      context: context,
      width: width,
      height: height,
      title: title,
      body: body,
    );
    if (_windows.isNotEmpty) {
      var targetWindow;
      targetWindow = _windows.firstWhere(
          (element) => element.windowIdentifier == windowIdentifier);
      if (targetWindow == null) {
        _newWindow(context, window, windowIdentifier);
      } else {
        logger.log(Level.INFO,
            message: "$windowIdentifier window is already opened.");
      }
    } else {
      _newWindow(context, window, windowIdentifier);
    }
  }

  _newWindow(context, window, windowIdentifier) {
    double xx = MediaQuery.of(context).size.width;
    double yy = MediaQuery.of(context).size.height;

    window.x = (xx / 2) - (window.currentWidth / 2); // %50 of screen
    window.y = (yy / 2) - (window.currentHeight / 2);
    window.onWindowDragged = (dx, dy) {
      window.x += dx;
      window.y += dy;
      _windows.remove(window);
      _windows.add(window);

      _onUpdate();
    };

    //Init onCloseButtonClicked
    window.onCloseButtonClicked = () {
      _windows.remove(window);
      logger.log(Level.INFO, message: "$windowIdentifier window is closed.");

      _onUpdate();
    };

    //Init onCloseButtonClicked
    window.onMaximizeButtonClicked = () {
      logger.log(Level.INFO, message: "$windowIdentifier window is maximized.");

      _onUpdate();
    };
    //Init onCloseButtonClicked
    window.onMinimizeButtonClicked = () {
      logger.log(Level.INFO, message: "$windowIdentifier window is minimized.");

      _onUpdate();
    };
    //Add Window to List
    _windows.add(window);

    // Update Widgets after adding the new App
    _onUpdate();
    logger.log(Level.INFO,
        message:
            "New window added to window manager with id:$windowIdentifier");
  }
}
