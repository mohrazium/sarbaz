
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sarbaz/src/app/config/config.dart';
import 'package:sarbaz/src/app/screens/widgets/widgets.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function(int index, SelectionButtonData value) onSelected;

  @override
  Widget build(BuildContext context) {
    return SelectionButton(
      data: [
        SelectionButtonData(
          activeIcon: EvaIcons.home,
          icon: EvaIcons.homeOutline,
          label: Strings.dashboard,
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.people,
          icon: EvaIcons.peopleOutline,
          label: Strings.soldiersSection,
          // totalNotif: 100,
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.calendar,
          icon: EvaIcons.calendarOutline,
          label: Strings.vacationRegistration,
          //totalNotif: 20,
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.settings,
          icon: EvaIcons.settingsOutline,
          label: "Settings",
        ),
      ],
      onSelected: onSelected,
    );
  }
}
