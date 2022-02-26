part of controllers;

class DashboardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Rx<TabController> tabController =
      Rx(TabController(vsync: this, initialIndex: 0, length: 4)
        ..addListener(() {
          dashboardShownContentIndex.value = tabController.value.index;
        }));
  Rx<String> todayHeader = Rx("");
  @override
  void onInit() {
    var today = Jalali.now().formatter;
    todayHeader.value =
        'امروز  ${today.wN} ${today.d} ${today.mN} ${today.yyyy}';

    super.onInit();
  }

  @override
  void onClose() {
    tabController.value.dispose();
    super.onClose();
  }

  final scafoldKey = GlobalKey<ScaffoldState>();
  late Rx<int> dashboardShownContentIndex = 0.obs;

  final dataProfil = const UserProfileData(
    image: AssetImage(ImagesConstants.avatar),
    name: "نام کاربری",
    userRoll: "مسول نیروی انسانی",
  );

  final member = ["Avril Kimberly", "Michael Greg"];

  final unitSoldiersOverview = const ProgressLineData(unitCapacity: 158, totalSoldiers: 58);

  final taskInProgress = [
    const StatusCardData(
      label: "کل سربازان آماده به خدمت",
      descriptions: "سریازان حاضر در یگان",
      value: '100',
    ),
    const StatusCardData(
      label: "کل سربازان آماده به خدمت",
      descriptions: "سریازان حاضر در یگان",
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
    ListTaskAssignedData(
      icon: const Icon(EvaIcons.monitor, color: Colors.blueGrey),
      label: "Slicing UI",
      jobDesk: "Programmer",
      assignTo: "Alex Ferguso",
      editDate: DateTime.now().add(-const Duration(hours: 2)),
    ),
    ListTaskAssignedData(
      icon: const Icon(EvaIcons.star, color: Colors.amber),
      label: "Personal branding",
      jobDesk: "Marketing",
      assignTo: "Justin Beck",
      editDate: DateTime.now().add(-const Duration(days: 50)),
    ),
    const ListTaskAssignedData(
      icon: Icon(EvaIcons.colorPalette, color: Colors.blue),
      label: "UI UX ",
      jobDesk: "Design",
    ),
    const ListTaskAssignedData(
      icon: Icon(EvaIcons.pieChart, color: Colors.redAccent),
      label: "Determine meeting schedule ",
      jobDesk: "System Analyst",
    ),
  ];

  final taskGroup = [
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 10)),
        label: "5 posts on instagram",
        jobdesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 11)),
        label: "Platform Concept",
        jobdesk: "Animation",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 5)),
        label: "UI UX Marketplace",
        jobdesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 6)),
        label: "Create Post For App",
        jobdesk: "Marketing",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 5)),
        label: "2 Posts on Facebook",
        jobdesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 6)),
        label: "Create Icon App",
        jobdesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 8)),
        label: "Fixing Error Payment",
        jobdesk: "Programmer",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 10)),
        label: "Create Form Interview",
        jobdesk: "System Analyst",
      ),
    ]
  ];

  void onPressedProfil() {}

  void onSelectedMainMenu(int index, SelectionButtonData value) {
    tabController.value.index = index;
    print(tabController.value.index);
    update();
  }

  void onSelectedTaskMenu(int index, String label) {}

  void searchTask(String value) {}

  void onPressedTask(int index, ListTaskAssignedData data) {}
  void onPressedAssignTask(int index, ListTaskAssignedData data) {}
  void onPressedMemberTask(int index, ListTaskAssignedData data) {}
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
    if (scafoldKey.currentState != null) {
      scafoldKey.currentState!.openDrawer();
    }
  }
}
