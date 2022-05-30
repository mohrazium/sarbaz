
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/constants/constants.dart';

import '../../../soldiers.dart';
import '../presentation.dart';

class DashboardController extends GetxController with GetSingleTickerProviderStateMixin {
  final dashboardScaffoldKey = GlobalKey<ScaffoldState>();
  final BaseController bridgeController;

  // Replace with better login info
  PrefStorage prefStorage = Get.find<PrefStorage>();

  Rx<bool> isLoggedIn = Rx(false);

  late final TextEditingController passController;

  late final Rx<TabController> tabController;

  Rx<String> todayHeader = Rx("");

  DashboardController(this.bridgeController);

  @override
  void onInit() {
    tabController = bridgeController.dashboardTabController;
    var today = Jalali.now().formatter;
    todayHeader.value = 'امروز  ${today.wN} ${today.d} ${today.mN} ${today.yyyy}';
    prefStorage.saveLoginDetails('sarbaz', '102030');
    passController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    tabController.value.dispose();
    super.onClose();
  }

  final dataProfile = const UserProfileData(
    image: AssetImage(ImagesConstants.avatar),
    name: "نام کاربری",
    userRoll: "مسئول نیروی انسانی",
  );

  final member = [" Kimberly", "Michael Greg"];

  final unitSoldiersOverview = const ProgressLineData(unitCapacity: 158, totalSoldiers: 58);

  final statusCards = [
    const StatusCardData(
      label: "کل سربازان آماده به خدمت",
      descriptions: "سربازان حاضر در یگان",
      value: '100',
    ),
    const StatusCardData(
      label: "کل سربازان آماده به خدمت",
      descriptions: "سربازان حاضر در یگان",
      value: '۱۵۶',
    ),

    // CardTaskData(
    //   label: "Personal branding",
    //   userRoll: "Marketing",
    //   descriptions: DateTime.now().add(const Duration(hours: 4)),
    // ),
    // CardTaskData(
    //   label: "UI UX",
    //   userRoll: "Design",
    //   descriptions: DateTime.now().add(const Duration(days: 2)),
    // ),
    // CardTaskData(
    //   label: "Determine meeting schedule",
    //   userRoll: "System Analyst",
    //   descriptions: DateTime.now().add(const Duration(minutes: 50)),
    // )
  ];

  final weeklyTask = [
    ListRecentActivitiesData(
      icon: const Icon(EvaIcons.monitor, color: Colors.blueGrey),
      label: "Slicing UI",
      operation: "Programmer",
      assignTo: "Alex ",
      editDate: DateTime.now().add(-const Duration(hours: 2)),
    ),
    ListRecentActivitiesData(
      icon: const Icon(EvaIcons.star, color: Colors.amber),
      label: "Personal branding",
      operation: "Marketing",
      assignTo: "Justin Beck",
      editDate: DateTime.now().add(-const Duration(days: 50)),
    ),
    const ListRecentActivitiesData(
      icon: Icon(EvaIcons.colorPalette, color: Colors.blue),
      label: "UI UX ",
      operation: "Design",
    ),
    const ListRecentActivitiesData(
      icon: Icon(EvaIcons.pieChart, color: Colors.redAccent),
      label: "Determine meeting schedule ",
      operation: "System Analyst",
    ),
  ];

  final taskGroup = [
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 10)),
        label: "5 posts on instagram",
        jobDesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 11)),
        label: "Platform Concept",
        jobDesk: "Animation",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 5)),
        label: "UI UX Marketplace",
        jobDesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 6)),
        label: "Create Post For App",
        jobDesk: "Marketing",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 5)),
        label: "2 Posts on Facebook",
        jobDesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 6)),
        label: "Create Icon App",
        jobDesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 8)),
        label: "Fixing Error Payment",
        jobDesk: "Programmer",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 10)),
        label: "Create Form Interview",
        jobDesk: "System Analyst",
      ),
    ]
  ];

  void onPressedProfile() {}

  void onSelectedMainMenu({required int index, MainMenuSelectionButtonData? value}) {
    bridgeController.setDashboardTab(index);
    update();
  }

  void onSelectedTaskMenu(int index, String label) {}

  void search(String value) {}

  void onPressedActivity(int index, ListRecentActivitiesData data) {}
  void onPressedAssignTask(int index, ListRecentActivitiesData data) {}
  void onPressedMemberTask(int index, ListRecentActivitiesData data) {}
  void onPressedCalendar() {
    mdiController.addWindow(
      windowIdentifier: "SoldiersForm",
      width: 900,
      height: 600,
      context: Get.context!,
      title: "مدیریت سربازان",
      body: const SoldierEditorView(),
    );
  }

  void onPressedTaskGroup(int index, ListTaskDateData data) {}

  void openDrawer() {
    if (dashboardScaffoldKey.currentState != null) {
      dashboardScaffoldKey.currentState!.openDrawer();
    }
  }

  void onLoginPressed() {
    isLoggedIn(prefStorage.login('sarbaz', passController.text.trim()));
  }
}
