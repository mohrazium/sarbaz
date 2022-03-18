part of components;

class GroupBox extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;

  const GroupBox({
    Key? key,
    required this.child,
    this.padding,
    this.margin,
    this.color,
    this.borderRadius,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(kSpacing),
      child: ClipRRect(
        borderRadius: borderRadius ??
            const BorderRadius.all(Radius.circular(kBorderRadius)),
        child: Container(
            width: width,
            height: height,
            color: color ?? Colorize.backgroundColorShade600,
            child: margin == null
                ? child
                : Padding(
                    padding: margin!,
                    child: child,
                  )),
      ),
    );
  }
}
