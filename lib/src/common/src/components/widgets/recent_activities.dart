
import 'package:flutter/material.dart';

import 'list_task_assigned.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({
    required this.data,
    required this.onPressed,
    required this.onPressedAssign,
    required this.onPressedMember,
    Key? key,
  }) : super(key: key);

  final List<ListRecentActivitiesData> data;
  final Function(int index, ListRecentActivitiesData data) onPressed;
  final Function(int index, ListRecentActivitiesData data) onPressedAssign;
  final Function(int index, ListRecentActivitiesData data) onPressedMember;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: data
          .asMap()
          .entries
          .map(
            (e) => ListActivityAssign(
              data: e.value,
              onPressed: () => onPressed(e.key, e.value),
              onPressedAssign: () => onPressedAssign(e.key, e.value),
              onPressedPerson: () => onPressedMember(e.key, e.value),
            ),
          )
          .toList(),
    );
  }
}
