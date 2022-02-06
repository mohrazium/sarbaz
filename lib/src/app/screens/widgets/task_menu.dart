
import 'package:flutter/material.dart';
import 'package:sarbaz/src/app/screens/widgets/widgets.dart';

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
        "Offboarding",
        "Time-off",
      ],
      onSelected: onSelected,
    );
  }
}
