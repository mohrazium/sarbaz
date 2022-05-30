
import 'package:flutter/material.dart';
import 'package:sarbaz/src/common/common.dart';

import '../views/daily_vacation_view.dart';
import '../views/daily_vacations_view.dart';
import '../views/vacations_view.dart';

class VacationsPage extends StatelessWidget {
  final int crossAxisCount;
  final double maxWidth;
  const VacationsPage({Key? key, required this.crossAxisCount, required this.maxWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Center(child: VacationsView()),
          crossAxisCount == 1
              ? Column(children: const [
                  Center(child: DailyVacationView()),
                  GroupBox(haveShadow: true, child: DailyVacationsView()),
                ])
              : SizedBox(
                  width: maxWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Center(child: DailyVacationView()),
                      GroupBox(width: maxWidth - 590, haveShadow: true, child: const DailyVacationsView()),
                    ],
                  ),
                ),
        ]);
  }
}
