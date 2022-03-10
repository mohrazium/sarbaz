part of components;

class MenuBar extends StatefulWidget {
  final Function(int index, MenuBarButtonData value) onSelected;
  final List<MenuBarButtonData> menuBarButtons;
  final int initialSelected;

  const MenuBar({
    Key? key,
    required this.onSelected,
    required this.menuBarButtons,
    this.initialSelected = 0,
  }) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  late int selected;
  late int shownItems;
  final controller = Get.find<SoldierCaseEditorController>();

  @override
  void initState() {
    super.initState();
    selected = widget.initialSelected;
    shownItems= controller.soldierCaseEditorContentLen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            color:Colorize.backgroundColor,
            height: 100,
            child: ListView.builder(
              controller: ScrollController(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: shownItems,
            itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(
                left: kPadding, right: kPadding, top: kPadding),
            child: MenuBarButton(
              selected: selected == index,
              onPressed: () {
                widget.onSelected(index, widget.menuBarButtons[index]);
                setState(() {
                  selected = index;
                });
              },
              data: widget.menuBarButtons[index],
            ),
            ),
            ),
          ),
        ),
      ],
    );
  }
}
