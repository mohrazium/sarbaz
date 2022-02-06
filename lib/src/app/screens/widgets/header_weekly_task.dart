import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'header_text.dart';

class HeaderWeeklyTask extends StatelessWidget {
  const HeaderWeeklyTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HeaderText("آمار کلی یگان"),
        const Spacer(),
        _buildArchive(),
        const SizedBox(width: 20),
        _buildAddNewButton(),
      ],
    );
  }

  Widget _buildAddNewButton() {
    return ElevatedButton.icon(
      icon: const Icon(
        EvaIcons.plus,
        size: 36,
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
      ),
      label: const Text("ایجاد"),
    );
  }

  Widget _buildArchive() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 50),
        primary: Colors.grey[300],
        onPrimary: Colors.grey[850],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
      ),
      child: const Text("بایگانی"),
    );
  }
}
