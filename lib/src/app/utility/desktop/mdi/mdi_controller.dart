import 'package:flutter/material.dart';

import 'mdi.dart';

class MdiController {
  List<MdiWindow> _windows = List.empty(growable: true);

  VoidCallback _onUpdate;

  List<MdiWindow> get windows => _windows;

  MdiController(this._onUpdate);

  void addWindow({
    double? width,
    double? height,
    required BuildContext context,
    required String title,
    required Widget body,
  }) {
    MdiWindow window = MdiWindow(
      context: context,
      width: width,
      height: height,
      title: title,
      body: body,
    );

    //Set initial position
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
      _onUpdate();
    };

    //Init onCloseButtonClicked
    window.onMaximizeButtonClicked = () {
      _onUpdate();
    };
    //Init onCloseButtonClicked
    window.onMinimizeButtonClicked = () {
      _onUpdate();
    };
    //Add Window to List
    _windows.add(window);

    // Update Widgets after adding the new App
    _onUpdate();
  }
}
