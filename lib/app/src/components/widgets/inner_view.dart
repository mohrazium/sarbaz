part of components;

class InnerView extends StatefulWidget {
  final Widget viewHeader;
  final List<Widget> children;
  final MenuBar menu;

  const InnerView({
    Key? key,
    required this.viewHeader,
    required this.menu,
    required this.children,
  }) : super(key: key);

  @override
  State<InnerView> createState() => _InnerViewState();
}

class _InnerViewState extends State<InnerView> with TickerProviderStateMixin {
  final controller = Get.find<SoldierCaseEditorController>();

  @override
  Widget build(BuildContext context) {
    controller.soldierCaseEditorContentLen.value = widget.children.length;
    return Scaffold(body: SafeArea(child: _buildScaffoldBody()));
  }

  Widget _buildScaffoldBody() {
    List<Widget> _buildChildren() {
      return widget.children
          .asMap()
          .entries
          .map(
            (e) => Column(
                children: [
                  Expanded(
                    child: GroupBox(
                      padding: const EdgeInsets.fromLTRB(
                          kSpacing / 5, 0, kSpacing / 5, kSpacing / 5),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(kBorderRadius),
                          bottomRight: Radius.circular(kBorderRadius)),
                      child: ListView(
                          controller: ScrollController(),
                          shrinkWrap: true,
                          children: [
                            e.value,
                          ]),
                    ),
                  ),
                ]),
          )
          .toList(growable: true);
    }

    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            child: Container(
                padding: const EdgeInsets.all(kPadding),
                width: 200,
                decoration: const BoxDecoration(
                    color: Colorize.primaryColorShade200,
                    borderRadius: BorderRadius.all(
                      Radius.circular(kBorderRadius),
                    )),
                child: widget.viewHeader),
          ),
          Padding(
            padding: const EdgeInsets.only(right: kPadding, left: kPadding),
            child: widget.menu,
          ),
          Expanded(
            child: GroupBox(
                padding: const EdgeInsets.fromLTRB(
                    kSpacing / 5, 0, kSpacing / 5, kSpacing / 5),
                child: GetX(
                    init: controller,
                    builder: (_) {
                      return TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: controller.tabController.value,
                        children: _buildChildren(),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
