
import 'package:flutter/material.dart';

import '../themes/colorize.dart';

class SimpleUserProfile extends StatelessWidget {
  const SimpleUserProfile({
    required this.name,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String name;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        leading: _buildAvatar(),
        title: _buildName(),
        trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.more_horiz),
          splashRadius: 24,
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colorize.primaryColor[100]?.withOpacity(.2),
      child: Text(
        name.toUpperCase(),
        style: const TextStyle(
          color: Colorize.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildName() {
    return Text(
      name,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colorize.foregroundColor,
        fontSize: 13,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
