
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarbaz/src/common/common.dart';
import 'package:sarbaz/src/constants/constants.dart';

class MainMenuSelectionButtonData {
  final IconData activeIcon;
  final IconData icon;
  final String label;
  final int? totalNotice;
  final bool isLocked;

  MainMenuSelectionButtonData({
    required this.activeIcon,
    required this.icon,
    required this.label,
    this.totalNotice,
    this.isLocked = false,
  });
}

class MainMenuSelectionButton extends StatelessWidget {
  final int initialSelected;
  final List<MainMenuSelectionButtonData> data;
  final Function({required int index, MainMenuSelectionButtonData? value}) onSelected;
  final BaseController baseController;

  const MainMenuSelectionButton(
    this.baseController, {
    this.initialSelected = 0,
    required this.data,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late int selected;

    selected = initialSelected;
    baseController.selectedDashboardMainMenuIndex(selected);
    return Column(
      children: data.asMap().entries.map((e) {
        final index = e.key;
        final data = e.value;
        return Padding(
          padding: const EdgeInsets.all(kSpacing / 10),
          child: GetX(
              init: baseController,
              builder: (_) => _BuildNotify(
                    selected: baseController.selectedDashboardMainMenuIndex.value == index,
                    onPressed: !e.value.isLocked
                        ? () {
                            onSelected(index: index, value: data);
                            baseController.selectedDashboardMainMenuIndex(index);
                          }
                        : null,
                    data: data,
                  )),
        );
      }).toList(),
    );
  }
}

class _BuildNotify extends StatelessWidget {
  const _BuildNotify({
    required this.selected,
    required this.data,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final bool selected;
  final MainMenuSelectionButtonData data;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: (!selected) ? null : Theme.of(context).primaryColor.withOpacity(.1),
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
              // if (data.totalNotify != null)
              //   Padding(
              //     padding: const EdgeInsets.only(left: kSpacing / 2),
              //     child: _buildNotify(),
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
      color: (!selected) ? Colorize.foregroundColor : Theme.of(Get.context!).primaryColor,
    );
  }

  Widget _buildLabel() {
    return Text(
      data.label,
      style: TextStyle(
        color: (!selected) ? Colorize.foregroundColor : Theme.of(Get.context!).primaryColor,
        fontWeight: FontWeight.bold,
        letterSpacing: .8,
        fontSize: 14,
      ),
    );
  }

//!
  // Widget _buildNotify() {
  //   return (data.totalNotify == null || data.totalNotify! <= 0)
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
  //             (data.totalNotify! >= 100) ? "99+" : "${data.totalNotify}",
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
