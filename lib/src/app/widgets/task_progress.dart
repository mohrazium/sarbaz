part of widgets;

class ProgressLineData {
  final int totalTask;
  final int totalCompleted;

  const ProgressLineData({
    required this.totalTask,
    required this.totalCompleted,
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
    return Row(
      children: [
        _buildText(),
        Expanded(child: _buildProgress()),
      ],
    );
  }

  Widget _buildText() {
    return Text(
      "${data.totalCompleted} of ${data.totalTask} completed",
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: kFontColorPallets[2],
        fontSize: 13,
      ),
    );
  }

  Widget _buildProgress() {
    return LinearPercentIndicator(
      percent: data.totalCompleted / data.totalTask,
      progressColor: Colors.blue,
      backgroundColor: Colors.blue[200],
    );
  }
}
