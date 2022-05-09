part of components;

class MainMenu extends StatelessWidget {
  const MainMenu({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function({required int index, MainMenuSelectionButtonData? value}) onSelected;

  @override
  Widget build(BuildContext context) {
    return MainMenuSelectionButton(
      data: [
        MainMenuSelectionButtonData(
          activeIcon: EvaIcons.home,
          icon: EvaIcons.homeOutline,
          label: Strings.dashboard,
          isLocked: true,
        ),
        MainMenuSelectionButtonData(
          activeIcon: EvaIcons.people,
          icon: EvaIcons.peopleOutline,
          label: Strings.soldiersSection,
        ),
        MainMenuSelectionButtonData(
          activeIcon: EvaIcons.person,
          icon: EvaIcons.personOutline,
          label: Strings.soldierCase,
          // totalNotice: 20,
        ),
        MainMenuSelectionButtonData(
          activeIcon: EvaIcons.settings,
          icon: EvaIcons.settingsOutline,
          label: Strings.sections,
          isLocked: true,
        ),
        MainMenuSelectionButtonData(
          activeIcon: EvaIcons.settings,
          icon: EvaIcons.settingsOutline,
          label: Strings.settings,
          isLocked: true,
        ),
      ],
      onSelected: onSelected,
    );
  }
}
