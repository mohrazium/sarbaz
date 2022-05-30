
import 'package:flutter/material.dart';

import 'simple_selection_button.dart';

class TaskMenu extends StatelessWidget {
  const TaskMenu({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function(int index, String label) onSelected;

  @override
  Widget build(BuildContext context) {
    return SimpleSelectionButton(
      data: const [
        "Directory",
        "Onboarding",
        "Off-boarding",
        "Time-off",
      ],
      onSelected: onSelected,
    );
  }
}
