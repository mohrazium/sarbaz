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
    final currentSize = MediaQuery.of(context).size;
    return   Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Env.mode == Env.dev
                ? Positioned(
                    top: 5,
                    right: 5,
                    child: Text(
                      "${currentSize.width} X ${currentSize.height}",
                    ))
                : Container(),
            const DashboardDesktopView(),
            MdiManager(mdiController: mdiController)
          ],
        ),
      ),
    );
  }
}
