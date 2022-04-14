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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: ClipRRect(
        borderRadius: borderRadius ??
            const BorderRadius.all(Radius.circular(kBorderRadius)),
        child: InkWell(
          borderRadius: borderRadius ??
              const BorderRadius.all(Radius.circular(kBorderRadius)),
          onTap: onTap,
          child: Ink(
              decoration: BoxDecoration(
                borderRadius: borderRadius ??
                    const BorderRadius.all(Radius.circular(kBorderRadius)),
                color: color ?? Colorize.backgroundColorShade600,
              ),
              width: width,
              height: height,
              child: Padding(
                padding: margin ?? const EdgeInsets.all(0),
                child: child,
              )),
        ),
      ),
    );

    return inMaterial
        ? Container(
            color: color,
            child: content,
          )
        : content;
  }
}
