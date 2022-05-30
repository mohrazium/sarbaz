
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sarbaz/src/localization/localization.dart';

import 'header_text.dart';

class RecentActivitiesHeader extends StatelessWidget {
  const RecentActivitiesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HeaderText(Strings.recentActivities),
        const Spacer(),
        _buildArchiveButton(),
        const SizedBox(width: 20),
        _buildAddNewButton(),
      ],
    );
  }

  Widget _buildAddNewButton() {
    return ElevatedButton.icon(
      icon: const Icon(
        EvaIcons.plus,
        size: 24,
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(120, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
      ),
      label: const Text(Strings.creation),
    );
  }

  Widget _buildArchiveButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(120, 40),
        primary: Colors.grey[300],
        onPrimary: Colors.grey[850],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
      ),
      child: const Text(Strings.archive),
    );
  }
}
