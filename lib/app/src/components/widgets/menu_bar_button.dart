part of components;

class MenuBarButtonData {
  final IconData activeIcon;
  final IconData icon;
  final String label;
  final int? totalNotice;

  MenuBarButtonData({
    required this.activeIcon,
    required this.icon,
    required this.label,
    this.totalNotice,
  });
}

class MenuBarButton extends StatelessWidget {
  const MenuBarButton({
    required this.selected,
    required this.data,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final bool selected;
  final MenuBarButtonData data;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: kSpacing * 4,
        width: kSpacing * 5,
        child: Material(
        color:
            (!selected) ? null : Theme.of(context).primaryColor.withOpacity(.1),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(kBorderRadius),
            topRight: Radius.circular(kBorderRadius)),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(kBorderRadius),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                _buildIcon(),
                const SizedBox(width: kSpacing),
                _buildLabel(),
                //!
                // if (data.totalNotif != null)
                //   Padding(
                //     padding: const EdgeInsets.only(left: kSpacing / 2),
                //     child: _buildNotif(),
                //   )
              ],
            ),
          ),
        ),
    ),
      );
  }

  Widget _buildIcon() {
    return Icon(
      (!selected) ? data.icon : data.activeIcon,
      size: kSpacing * 2,
      color: (!selected)
          ? Colorize.foregroundColor
          : Theme.of(Get.context!).primaryColor,
    );
  }

  Widget _buildLabel() {
    return Text(
      data.label,
      style: TextStyle(
        color: (!selected)
            ? Colorize.foregroundColor
            : Theme.of(Get.context!).primaryColor,
        fontWeight: FontWeight.bold,
        letterSpacing: .8,
        fontSize: 14,
      ),
    );
  }

//!
// Widget _buildNotif() {
//   return (data.totalNotif == null || data.totalNotif! <= 0)
//       ? Container()
//       : Container(
//           width: 30,
//           padding: const EdgeInsets.all(5),
//           decoration: const BoxDecoration(
//             color: Colors.orange,
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(10),
//               bottomRight: Radius.circular(10),
//               topRight: Radius.circular(10),
//             ),
//           ),
//           alignment: Alignment.center,
//           child: Text(
//             (data.totalNotif! >= 100) ? "99+" : "${data.totalNotif}",
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 10,
//               fontWeight: FontWeight.w600,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         );
// }
}
