import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarbaz/src/app/screens/controllers/controllers.dart';

class SoldiersView extends GetView<SoldiersController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: IconButton(onPressed: (){}, icon: const Icon(EvaIcons.arrowBack)),
    );
  }
}
