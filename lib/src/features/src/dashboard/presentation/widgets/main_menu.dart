
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/localization/localization.dart';

import 'main_menu_selection_button.dart';

class MainMenu extends StatelessWidget {
  final BaseController baseController;
  const MainMenu(
    this.baseController, {
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function({required int index, MainMenuSelectionButtonData? value}) onSelected;

  @override
  Widget build(BuildContext context) {
    return MainMenuSelectionButton(
      baseController,
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
