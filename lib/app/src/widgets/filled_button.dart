part of widgets;

class FilledButton extends StatelessWidget {
  const FilledButton({
    required this.onPressed,
    required this.icon,
    required this.label,
    this.color,
    Key? key,
  }) : super(key: key);

  final Function() onPressed;
  final IconData icon;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: _buildIcon(),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color ?? Colorize.accentColor,
        fixedSize: const Size(120, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
      ),
      label: _buildLabel(),
    );
  }

  Widget _buildIcon() {
    return Icon(
      icon,
      size: 20,
      color: Theme.of(Get.context!).backgroundColor,
    );
  }

  Widget _buildLabel() {
    return Text(
      label,
      style: TextStyle(
        color: Theme.of(Get.context!).backgroundColor,
        fontWeight: FontWeight.bold,
        letterSpacing: .8,
        fontSize: 14,
      ),
    );
  }
}
