import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mdi.dart';

class MdiManager extends GetView<MdiController> {
  final MdiController mdiController;

  const MdiManager({Key? key, required this.mdiController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
          children: mdiController.windows.map((e) {
        return Positioned(
          left: e.x,
          top: e.y,
          child: e,
          key: e.key,
        );
      }).toList()),
    );
  }
}
