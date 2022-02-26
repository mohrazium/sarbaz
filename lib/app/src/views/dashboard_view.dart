part of views;

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
                  _buildBodyContent(
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
                    child: _buildBodyContent(
                      onPressedMenu: () => controller.openDrawer(),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(),
                ),
                // Flexible(
                //   flex: 4,
                //   child: SingleChildScrollView(
                //     controller: ScrollController(),
                //     child: _buildLeftPanelContent(),
                //   ),
                // ),
              ],
            );
          },
          desktopBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 2 : 3,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildSidebar(context),
                  ),
                ),
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 10 : 9,
                  child: _buildBodyContent(),
                ),

                //! letf sidebar
                // SizedBox(
                //   height: MediaQuery.of(context).size.height,
                //   child: const VerticalDivider(),
                // ),
                // Flexible(
                //   flex: 4,
                //   child: SingleChildScrollView(
                //     controller: ScrollController(),
                //     child: _buildLeftPanelContent(),
                //   ),
                // ),
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
        // Member(member: controller.member),
        // const SizedBox(height: kSpacing),
        // TaskMenu(
        //   onSelected: controller.onSelectedTaskMenu,
        // ),
        // const SizedBox(height: kSpacing),
        // Padding(
        //   padding: const EdgeInsets.all(kSpacing),
        //   child: Text(
        //     "2021 Teamwork lisence",
        //     style: Theme.of(context).textTheme.caption,
        //   ),
        // ),
      ],
    );
  }

  Widget _buildBodyContent({Function()? onPressedMenu}) {
    return GetX(
        init: controller,
        builder: (_) {
          return TabBarView(
              controller: controller.tabController.value,
              children: [
                _buildMainSection(onPressedMenu),
                const SoldiersView(),
                Container(
                  color: Colors.blue,
                  child: Text("page 3 "),
                ),
                Container(
                  color: Colors.red,
                  child: Text("page 4 "),
                ),
              ]);
        });
  }

  Widget _buildMainSection(onPressedMenu) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            const SizedBox(height: kSpacing),
            const HeaderText(Strings.dashboard),
            const SizedBox(height: kSpacing / 2),
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
                    hintText: Strings.searchBar +
                        controller.dashboardShownContentIndex.value.toString(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: kSpacing),
            Row(
              children: [
                Expanded(
                  child:
                      HeaderText(convertEnToFa(controller.todayHeader.value)),
                ),
                const SizedBox(width: kSpacing / 2),
                SizedBox(
                  width: kSpacing * 10,
                  child: ProgressLine(data: controller.unitSoldiersOverview),
                ),
              ],
            ),
            const SizedBox(height: kSpacing),
            StatusCardsOverview(data: controller.taskInProgress),
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
