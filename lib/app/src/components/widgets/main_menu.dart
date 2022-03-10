part of components;

class MainMenu extends StatelessWidget {
  const MainMenu({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function(int index, MainMenuSelectionButtonData value) onSelected;

  @override
  Widget build(BuildContext context) {
    return MainMenuSelectionButton(
      data: [
        MainMenuSelectionButtonData(
          activeIcon: EvaIcons.home,
          icon: EvaIcons.homeOutline,
          label: Strings.dashboard,
        ),
        MainMenuSelectionButtonData(
          activeIcon: EvaIcons.people,
          icon: EvaIcons.peopleOutline,
          label: Strings.soldiersSection,
          // totalNotif: 100,
        ),
        MainMenuSelectionButtonData(
          activeIcon: EvaIcons.calendar,
          icon: EvaIcons.calendarOutline,
          label: Strings.vacationRegistration,
          //totalNotif: 20,
        ),
        MainMenuSelectionButtonData(
          activeIcon: EvaIcons.settings,
          icon: EvaIcons.settingsOutline,
          label: Strings.sections,
        ), MainMenuSelectionButtonData(
          activeIcon: EvaIcons.settings,
          icon: EvaIcons.settingsOutline,
          label:Strings.settings,
        ),
      ],
      onSelected: onSelected,
    );
  }
}
