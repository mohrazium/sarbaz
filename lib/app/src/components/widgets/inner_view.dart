part of components;

class InnerView extends StatelessWidget {
  final Widget viewHeader;
  final List<Widget> children;
  final List<TabMenu> tabMenus;

  const InnerView({
    Key? key,
    required this.viewHeader,
    required this.tabMenus,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SoldierEditorController>();
    controller.soldierCaseEditorContentLen.value = children.length;
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            elevation: 0,
            title: Container(
                width: kSpacing * 20,
                height: kSpacing * 2,
                decoration: const BoxDecoration(
                    color: Colorize.primaryColorShade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(kBorderRadius),
                    )),
                child: viewHeader),
            pinned: true,
            floating: false,
            bottom: TabBar(
              controller: controller.tabController.value,
              padding: const EdgeInsets.only(
                  top: kPadding, left: kPadding, right: kPadding),
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicator: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kBorderRadius),
                      topRight: Radius.circular(kBorderRadius)),
                  color: Colorize.primaryColor),
              isScrollable: true,
              tabs: _buildTabs(),
            ),
          ),
        ];
      },
      body: GroupBox(
          padding: const EdgeInsets.fromLTRB(kSpacing, 0, kSpacing, kSpacing),
          margin:const EdgeInsets.fromLTRB(0, kSpacing/2, 0, kSpacing / 2),
          borderRadius: const BorderRadius.all(
            Radius.circular(kBorderRadius),
          ),
          child: GetX(
              init: controller,
              builder: (_) {
                return TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.tabController.value,
                  children: _buildViews(),
                );
              })),
    ));
  }

  List<Widget> _buildViews() {
    return children
        .asMap()
        .entries
        .map(
          (e) => Column(children: [
            Expanded(
              child: ListView(
                  controller: ScrollController(),
                  shrinkWrap: true,
                  children: [
                    e.value,
                  ]),
            ),
          ]),
        )
        .toList(growable: true);
  }

  List<Widget> _buildTabs() {
    return tabMenus
        .asMap()
        .entries
        .map(
          (e) => Tab(
            child:
                Align(alignment: Alignment.center, child: Text(e.value.label)),
            height: 100,
            iconMargin: const EdgeInsets.all(kPadding),
            icon: Icon(
              e.value.icon,
              size: kSpacing * 2,
            ),
          ),
        )
        .toList(growable: true);
  }
}
