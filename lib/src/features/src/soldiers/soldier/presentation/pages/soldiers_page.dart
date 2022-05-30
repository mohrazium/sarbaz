
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../trainings.dart';
import '../../presentation.dart';

class SoldiersPage extends StatelessWidget {
  final int crossAxisCount;
  const SoldiersPage({Key? key, required this.crossAxisCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 3,
        crossAxisSpacing: 4,
        children: const [
          Center(child: SoldierView()),
          Center(child: TrainingStatusView()),
          Center(child: SoldierCaseView()),
        ]);
  }
}
