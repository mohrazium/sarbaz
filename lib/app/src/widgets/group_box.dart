part of widgets;

class GroupBox extends StatelessWidget {
  final Widget child;
  const GroupBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(kSpacing / 2),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Container(
              decoration: const BoxDecoration(
                  color: Colorize.backgroundColorShade600,
                  borderRadius:
                      BorderRadius.all(Radius.circular(kBorderRadius))),
              child: Padding(
                padding: const EdgeInsets.all(kSpacing / 2),
                child: Expanded(child: child),
              )),
        ));
  }
}
