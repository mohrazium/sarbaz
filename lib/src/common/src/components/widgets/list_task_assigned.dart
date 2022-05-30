
import 'package:dotted_border/dotted_border.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sarbaz/src/constants/constants.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../themes/colorize.dart';

class ListRecentActivitiesData {
  final Icon icon;
  final String label;
  final String operation;
  final DateTime? editDate;
  final String? assignTo;

  const ListRecentActivitiesData({
    required this.icon,
    required this.label,
    required this.operation,
    this.editDate,
    this.assignTo,
  });
}

class ListActivityAssign extends StatelessWidget {
  const ListActivityAssign({
    required this.data,
    required this.onPressed,
    required this.onPressedAssign,
    required this.onPressedPerson,
    Key? key,
  }) : super(key: key);

  final ListRecentActivitiesData data;
  final Function() onPressed;
  final Function()? onPressedAssign;
  final Function()? onPressedPerson;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      hoverColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      leading: _buildIcon(),
      title: _buildTitle(),
      subtitle: _buildSubtitle(),
      trailing: _buildAssign(),
    );
  }

  Widget _buildIcon() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey.withOpacity(.1),
      ),
      child: data.icon,
    );
  }

  Widget _buildTitle() {
    return Text(
      data.label,
      style: const TextStyle(fontWeight: FontWeight.bold),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildSubtitle() {
    String edit = "";

    if (data.editDate != null) {
      edit = " \u2022 edited ${timeago.format(data.editDate!)}";
    }

    return Text(
      data.operation + edit,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildAssign() {
    return (data.assignTo != null)
        ? InkWell(
            onTap: onPressedPerson,
            borderRadius: BorderRadius.circular(22),
            child: Tooltip(
              message: data.assignTo!,
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.orange.withOpacity(.2),
                child: Text(
                  data.assignTo!.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        : DottedBorder(
            color: Colorize.foregroundColor,
            strokeWidth: .3,
            strokeCap: StrokeCap.round,
            borderType: BorderType.Circle,
            child: IconButton(
              onPressed: onPressedAssign,
              color: Colorize.foregroundColor,
              iconSize: 15,
              icon: const Icon(EvaIcons.plus),
              splashRadius: 24,
              tooltip: "assign",
            ),
          );
  }
}
