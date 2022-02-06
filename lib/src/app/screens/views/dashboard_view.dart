import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sarbaz/src/app/config/constans/constans.dart';
import 'package:sarbaz/src/app/screens/controllers/controllers.dart';
import 'package:sarbaz/src/app/screens/widgets/widgets.dart';
import 'package:sarbaz/src/app/utility/utility.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:persian_tools/persian_tools.dart' as PersianTools;

class DashboardDesktopView extends GetView<DashboardController> {
  const DashboardDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scafoldKey,
      drawer: ResponsiveBuilder.isDesktop(context)
          ? null
          : Drawer(
              child: SafeArea(
                child: SingleChildScrollView(child: _buildSidebar(context)),
              ),
            ),
      bottomNavigationBar: (ResponsiveBuilder.isDesktop(context) || kIsWeb)
          ? null
          : const BottomNavbar(),
      body: SafeArea(
        child: ResponsiveBuilder(
          mobileBuilder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTaskContent(
                    onPressedMenu: () => controller.openDrawer(),
                  ),
                  _buildLeftPanelContent(),
                ],
              ),
            );
          },
          tabletBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 800 ? 8 : 7,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildTaskContent(
                      onPressedMenu: () => controller.openDrawer(),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(),
                ),
                Flexible(
                  flex: 4,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildLeftPanelContent(),
                  ),
                ),
              ],
            );
          },
          desktopBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 3 : 4,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildSidebar(context),
                  ),
                ),
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 10 : 9,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildTaskContent(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(),
                ),
                Flexible(
                  flex: 4,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildLeftPanelContent(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSidebar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: UserProfile(
            data: controller.dataProfil,
            onPressed: controller.onPressedProfil,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: MainMenu(onSelected: controller.onSelectedMainMenu),
        ),
        const Divider(
          indent: 20,
          thickness: 1,
          endIndent: 20,
          height: 60,
        ),
        Member(member: controller.member),
        const SizedBox(height: kSpacing),
        TaskMenu(
          onSelected: controller.onSelectedTaskMenu,
        ),
        const SizedBox(height: kSpacing),
        Padding(
          padding: const EdgeInsets.all(kSpacing),
          child: Text(
            "2021 Teamwork lisence",
            style: Theme.of(context).textTheme.caption,
          ),
        ),
      ],
    );
  }

  Widget _buildTaskContent({Function()? onPressedMenu}) {
    var today = Jalali.now().formatter;
    final String todayHeader =
        'امروز  ${today.wN} ${today.d} ${today.mN} ${today.yyyy}';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Column(
        children: [
          const SizedBox(height: kSpacing),
          Row(
            children: [
              if (onPressedMenu != null)
                Padding(
                  padding: const EdgeInsets.only(right: kSpacing / 2),
                  child: IconButton(
                    onPressed: onPressedMenu,
                    icon: const Icon(Icons.menu),
                  ),
                ),
              Expanded(
                child: SearchField(
                  onSearch: controller.searchTask,
                  hintText: Strings.searchBar,
                ),
              ),
            ],
          ),
          const SizedBox(height: kSpacing),
          Row(
            children: [
              Expanded(
                child: HeaderText(PersianTools.convertEnToFa(todayHeader)),
              ),
              const SizedBox(width: kSpacing / 2),
              SizedBox(
                width: 200,
                child: ProgressLine(data: controller.dataTask),
              ),
            ],
          ),
          const SizedBox(height: kSpacing),
          TaskInProgress(data: controller.taskInProgress),
          const SizedBox(height: kSpacing * 2),
          const HeaderWeeklyTask(),
          const SizedBox(height: kSpacing),
          WeeklyTask(
            data: controller.weeklyTask,
            onPressed: controller.onPressedTask,
            onPressedAssign: controller.onPressedAssignTask,
            onPressedMember: controller.onPressedMemberTask,
          )
        ],
      ),
    );
  }

  Widget _buildLeftPanelContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Column(
        children: [
          const SizedBox(height: kSpacing),
          Row(
            children: [
              const Expanded(child: HeaderText("Calendar")),
              IconButton(
                onPressed: controller.onPressedCalendar,
                icon: const Icon(EvaIcons.calendarOutline),
                tooltip: "calendar",
              )
            ],
          ),
          const SizedBox(height: kSpacing),
          ...controller.taskGroup
              .map(
                (e) => TaskGroup(
                  title: DateFormat('d MMMM').format(e[0].date),
                  data: e,
                  onPressed: controller.onPressedTaskGroup,
                ),
              )
              .toList()
        ],
      ),
    );
  }
}




/*class DashboardDesktopView extends StatefulWidget {
  const DashboardDesktopView({Key? key}) : super(key: key);

  @override
  State<DashboardDesktopView> createState() => _DashboardDesktopViewState();
}

class _DashboardDesktopViewState extends State<DashboardDesktopView> {
  late MdiController mdiController;

  final dashboardController = Get.put(DashboardController());

  @override
  void initState() {
    super.initState();

    mdiController = MdiController(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context)!;
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: WidgetConstants.kAppBarHeight,
      //   leading: const Icon(Icons.group_work),
      //   title: Text(strings.title),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: ElevatedButton(
      //         onPressed: () {
      //           mdiController.addWindow(
      //               windowIdentifier: "addNewSoldier",
      //               width: 780,
      //               height: 640,
      //               context: context,
      //               title: strings.new_soldier,
      //               body: const SoldierEditorView());
      //         },
      //         child: const Text("جدید"),
      //       ),
      //     ),
      //     const SizedBox(
      //       width: 10,
      //     ),
      //   ],
      // ),
      body: DashboardBodyWidget(mdiController: mdiController),
    );
  }
}

class DashboardBodyWidget extends StatelessWidget {
  const DashboardBodyWidget({
    Key? key,
    required this.mdiController,
  }) : super(key: key);

  final MdiController mdiController;

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 60,
          color: Colors.lightGreenAccent,
        ),
        Expanded(
          child: Stack(
              alignment: AlignmentDirectional.topStart,
              fit: StackFit.loose,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                Container(
                  height: 250,
                  color: Colors.redAccent,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 300, 100, 10),
                  child: Center(
                    child: SizedBox(
                      width: 1200,
                      child: GridView.count(
                          crossAxisCount: 4,
                          childAspectRatio: 2,
                          padding: const EdgeInsets.all(10.0),
                          mainAxisSpacing: 5.0,
                          crossAxisSpacing: 4.0,
                          children: [
                            GridTile(
                                child: Card(
                              color: Colors.limeAccent,
                              elevation: 20,
                              child: InkWell(
                                onTap: () {
                                  // mdiController.addWindow(
                                  //   windowIdentifier: "addNewSoldier",
                                  //   // width: 780,
                                  //   // height: 640,
                                  //   context: context,
                                  //   title: "سرباز جدید",
                                  //   body: const SoldierEditorView(),
                                  // );
                                  mdiController.addWindow(
                                    windowIdentifier: "SoldiersForm",
                                     width: 900,
                                     height: 600,
                                    context: context,
                                    title: "مدیریت سربازان",
                                    body: const SoldierEditorView(),
                                  );

                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SizedBox(
                                    height: 200,
                                    width: 100,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(Iconsax.people),
                                        Text(
                                          "مدیریت سربازان",
                                          style: Themizer.textStyle
                                              .copyWith(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                            GridTile(
                                child: Card(
                                    color: Colors.greenAccent,
                                    elevation: 20,
                                    child: SizedBox(
                                      height: 200,
                                      width: 100,
                                      child: Column(
                                        children: [],
                                      ),
                                    ))),
                            GridTile(
                                child: Card(
                                    elevation: 20,
                                    child: SizedBox(
                                      height: 200,
                                      width: 100,
                                      child: Column(
                                        children: [],
                                      ),
                                    ))),
                            GridTile(
                                child: Card(
                                    elevation: 20,
                                    child: SizedBox(
                                      height: 200,
                                      width: 100,
                                      child: Column(
                                        children: [],
                                      ),
                                    ))),
                            GridTile(
                                child: Card(
                                    elevation: 20,
                                    child: SizedBox(
                                      height: 200,
                                      width: 100,
                                      child: Column(
                                        children: [],
                                      ),
                                    ))),
                            GridTile(
                                child: Card(
                                    elevation: 20,
                                    child: SizedBox(
                                      height: 200,
                                      width: 100,
                                      child: Column(
                                        children: [],
                                      ),
                                    ))),
                            GridTile(
                                child: Card(
                                    elevation: 20,
                                    child: SizedBox(
                                      height: 200,
                                      width: 100,
                                      child: Column(
                                        children: [],
                                      ),
                                    ))),
                            GridTile(
                                child: Card(
                                    elevation: 20,
                                    child: SizedBox(
                                      height: 200,
                                      width: 100,
                                      child: Column(
                                        children: [],
                                      ),
                                    )))
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Card(
                        elevation: 10,
                        child: SizedBox(
                          width: 600,
                          height: 100,
                          child: Column(
                            children: [Text("جستجو"), TextFormField()],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                MdiManager(
                  mdiController: mdiController,
                ),
              ]),
        ),
        Container(
            height: 20,
            color: Colors.blueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(height: 1, color: Colors.grey),
              ],
            ))
      ],
    );
  }
}
*/