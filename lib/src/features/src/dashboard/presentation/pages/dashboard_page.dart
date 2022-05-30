
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/utils/utils.dart';

import '../views/dashboard_view.dart';

late MdiController mdiController;

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DashboardPageState createState() {
    return _DashboardPageState();
  }
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
    mdiController = MdiController(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final BaseController baseController = Get.find();
    // final currentSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: LayoutBuilder(
        builder: (context, constraint) => SizedBox(
          height: constraint.maxHeight,
          width: constraint.maxWidth,
          child: Stack(
            children: [
              // Env.mode == Env.dev
              //     ? Positioned(
              //         top: 5,
              //         right: 5,
              //         child: Text(
              //           "${currentSize.width} X ${currentSize.height}",
              //         ))
              //     : Container(),
              DashboardDesktopView(baseController),
              MdiManager(mdiController: mdiController)
            ],
          ),
        ),
      ),
    ));
  }
}
