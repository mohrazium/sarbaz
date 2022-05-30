
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:persian_tools/persian_tools.dart';
import 'package:sarbaz/src/constants/constants.dart';

import '../themes/colorize.dart';

class ProgressLineData {
  final int unitCapacity;
  final int totalSoldiers;

  const ProgressLineData({
    required this.unitCapacity,
    required this.totalSoldiers,
  });
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    required this.data,
    Key? key,
  }) : super(key: key);

  final ProgressLineData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildText(),
        const SizedBox(
          height: kSpacing / 5,
        ),
        _buildProgress(),
      ],
    );
  }

  Widget _buildText() {
    return Text(
      convertEnToFa(
          "${data.totalSoldiers} نفر سرباز از  ${(data.unitCapacity.toString())}  نفر ظرفیت یگان"),
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colorize.foregroundColor.shade400,
        fontSize: 13,
      ),
    );
  }

  Widget _buildProgress() {
    return LinearPercentIndicator(
      lineHeight: kSpacing / 3,
      width: kSpacing * 10,
      percent: data.totalSoldiers / data.unitCapacity,
      progressColor: Colorize.primaryColor.shade600,
      backgroundColor: Colorize.primaryColor,
    );
  }
}
