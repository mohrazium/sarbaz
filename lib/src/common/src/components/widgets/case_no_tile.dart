
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarbaz/src/constants/constants.dart';

import '../themes/colorize.dart';
import 'group_box.dart';

class CaseNoTile extends StatelessWidget {
  final dynamic model;
  final void Function() onTap;

  const CaseNoTile({
    Key? key,
    required this.model,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GroupBox(
        inMaterial: true,
        onTap: () {
          onTap();
          if (Get.isDialogOpen!) {
            Get.back();
          }
        },
        padding: const EdgeInsets.all(kPadding / 5),
        margin: const EdgeInsets.all(kPadding),
        color: Colorize.backgroundColorShade600,
        child: Text(
            "${model.caseName} - ${model.caseCode} - ${model.description}"));
  }
}
