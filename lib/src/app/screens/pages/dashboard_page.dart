import 'package:flutter/material.dart';
import 'package:sarbaz/src/app/screens/views/views.dart';
import 'package:sarbaz/src/app/utility/utility.dart';

late MdiController mdiController;

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
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
    return Scaffold(
      body: Stack(
        children: [const Scaffold(body: DashboardDesktopView()), MdiManager(mdiController: mdiController)],
      ),
    );
  }
}