
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../contacts/presentation.dart';
import '../../../educations/presentation.dart';
import '../../../furthers/presentation.dart';
import '../views/personal_info_view.dart';

class PersonalPage extends StatelessWidget {
  final int crossAxisCount;
  const PersonalPage({Key? key, required this.crossAxisCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 3,
        crossAxisSpacing: 4,
        children: const [
          Center(child: PersonalInfoView()),
          Center(child: FurtherInfoView()),
          Center(child: ContactInfoView()),
          Center(child: EducationalInfoView())
        ]);
  }
}
