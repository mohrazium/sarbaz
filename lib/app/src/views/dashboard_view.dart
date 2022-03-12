part of views;

class DashboardDesktopView extends GetView<DashboardController> {
  const DashboardDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ResponsiveBuilder(
        mobileBuilder: (context, constraints) {
          return const NotFoundPage();
        },
        tabletBuilder: (context, constraints) {
          return const NotFoundPage();
        },
        desktopBuilder: (context, constraints) {
          return Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: SingleChildScrollView(
                  controller: ScrollController(),
                  child: _buildSidebar(context),
                ),
              ),
              Flexible(
                flex: 10,
                child: SizedBox(
                    height: constraints.maxHeight, child: _buildBodyContent()),
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
    );
  }

  Widget _buildSidebar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: UserProfile(
            data: controller.dataProfile,
            onPressed: controller.onPressedProfile,
          ),
        ),
        const SizedBox(
          height: kSpacing,
          width: kSpacing * 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
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
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.tabController.value,
              children: [
                const SoldierCaseEditorView(),
                const SoldiersView(),
                Container(
                  color: Colors.red,
                  child: Text("page 4 "),
                ),
                Container(
                  color: Colors.red,
                  child: Text("page 4 "),
                ),
                _buildMainSection(onPressedMenu),
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
                    onSearch: controller.search,
                    hintText: Strings.searchBar,
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
            StatusCardsOverview(data: controller.statusCards),
            const SizedBox(height: kSpacing * 2),
            const RecentActivitesHeader(),
            const SizedBox(height: kSpacing),
            RecentActivities(
              data: controller.weeklyTask,
              onPressed: controller.onPressedActivity,
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
