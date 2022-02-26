part of pages;

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
        children: [
          const Scaffold(body: DashboardDesktopView()),
          MdiManager(mdiController: mdiController)
        ],
      ),
    );
  }
}
