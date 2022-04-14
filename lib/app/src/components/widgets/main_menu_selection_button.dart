part of components;

class MainMenuSelectionButtonData {
  final IconData activeIcon;
  final IconData icon;
  final String label;
  final int? totalNotif;

  MainMenuSelectionButtonData({
    required this.activeIcon,
    required this.icon,
    required this.label,
    this.totalNotif,
  });
}

class MainMenuSelectionButton extends StatelessWidget {
  final int initialSelected;
  final List<MainMenuSelectionButtonData> data;
  final Function({required int index, MainMenuSelectionButtonData? value})
      onSelected;
  const MainMenuSelectionButton({
    this.initialSelected = 0,
    required this.data,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late int selected;
    BridgeController bridgeController = Get.find<BridgeController>();

    selected = initialSelected;
    bridgeController.selectedDashboardMainMenuIndex(selected);
    return Column(
      children: data.asMap().entries.map((e) {
        final index = e.key;
        final data = e.value;
        return Padding(
          padding: const EdgeInsets.all(kSpacing / 10),
          child: GetX(
              init: bridgeController,
              builder: (_) => MainMenuButton(
                    selected:
                        bridgeController.selectedDashboardMainMenuIndex.value ==
                            index,
                    onPressed: () {
                      onSelected(index: index, value: data);
                      bridgeController.selectedDashboardMainMenuIndex(index);
                    },
                    data: data,
                  )),
        );
      }).toList(),
    );
  }
}

class MainMenuButton extends StatelessWidget {
  const MainMenuButton({
    required this.selected,
    required this.data,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final bool selected;
  final MainMenuSelectionButtonData data;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color:
          (!selected) ? null : Theme.of(context).primaryColor.withOpacity(.1),
      borderRadius: BorderRadius.circular(kBorderRadius),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              _buildIcon(),
              const SizedBox(width: kSpacing / 2),
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
    );
  }

  Widget _buildIcon() {
    return Icon(
      (!selected) ? data.icon : data.activeIcon,
      size: 20,
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
