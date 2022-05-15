part of components;

class GroupBox extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final void Function()? onTap;
  final bool inMaterial;
  final bool haveShadow;
  final bool isExpandable;

  const GroupBox({
    Key? key,
    required this.child,
    this.padding,
    this.margin,
    this.color,
    this.borderRadius,
    this.height,
    this.width,
    this.onTap,
    this.inMaterial = false,
    this.haveShadow = false,
    this.isExpandable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var content = inMaterial || onTap != null
        ? Padding(
            padding: padding ?? const EdgeInsets.all(0),
            child: ClipRRect(
                borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(kBorderRadius)),
                child: InkWell(
                    borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(kBorderRadius)),
                    onTap: onTap,
                    child: Ink(
                        decoration: _getDecoration(),
                        width: width,
                        height: height,
                        child: Padding(
                          padding: margin ?? const EdgeInsets.all(0),
                          child: child,
                        )))))
        : Padding(
            padding:
                haveShadow && padding == null ? const EdgeInsets.all(kPadding) : padding ?? const EdgeInsets.all(0),
            child: Container(
              width: width,
              height: height,
              decoration: _getDecoration(),
              child: ClipRRect(
                borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(kBorderRadius)),
                child: Padding(padding: margin ?? const EdgeInsets.all(0), child: child),
              ),
            ),
          );

    return isExpandable ? Expanded(child: content) : content;
  }

  _getDecoration() {
    return BoxDecoration(
      boxShadow: haveShadow
          ? const [
              BoxShadow(
                blurRadius: kPadding,
                blurStyle: BlurStyle.normal,
                color: Colorize.foregroundColorShade900,
              ),
            ]
          : null,
      borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(kBorderRadius)),
      color: color ?? Colorize.backgroundColorShade700,
    );
  }
}
