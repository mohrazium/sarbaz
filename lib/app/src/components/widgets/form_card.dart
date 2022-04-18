part of components;

class FormCard extends StatelessWidget with DateConverterMixin {
  final Key? globalFormKey;
  final bool readyOnly;
  final Function() onConfirmButtonPressed;
  final Function() onCancelButtonPressed;
  final double? maxWidth;
  final double? minWidth;
  final Color? color;
  final Color? headerColor;
  final Widget headerContent;
  final Widget child;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const FormCard(
      {Key? key,
      this.globalFormKey,
      required this.readyOnly,
      required this.onConfirmButtonPressed,
      required this.onCancelButtonPressed,
      this.maxWidth,
      this.minWidth,
      this.color,
      this.headerColor,
      required this.headerContent,
      required this.child,
      this.createdAt,
      this.updatedAt,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: minWidth ?? 200, maxWidth: maxWidth ?? 500),
            child: GroupBox(
              haveShadow:true,
              color: color ?? Colorize.backgroundColorShade200,
              padding: const EdgeInsets.all(kPadding / 2),
              child: Column(
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            color: headerColor ?? Colorize.primaryColorShade100,
                            child: Padding(
                                padding: const EdgeInsets.all(kPadding),
                                child: headerContent),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(kPadding),
                              child: child),
                        ],
                      ),
                      _buildFooter(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    Widget _buildConfirmButton() {
      return ElevatedButton.icon(
        icon: Icon(
          readyOnly ? EvaIcons.edit : EvaIcons.checkmark,
          size: 24,
        ),
        onPressed: () => onConfirmButtonPressed(),
        label: Text(readyOnly ? Strings.edit : Strings.save),
      );
    }

    Widget _buildCancelButton() {
      return ElevatedButton(
        onPressed: readyOnly ? null : () => onCancelButtonPressed(),
        style: ElevatedButton.styleFrom(
          primary: Colorize.foregroundColorShade200,
          onPrimary: Colorize.foregroundColorShade500,
        ),
        child: const Text(Strings.cancel),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                createdAt != null
                    ? "${Strings.createdAt}: ${toShamsi(createdAt)}"
                    : "",
                style: Themizer.light.textTheme.caption,
              ),
              Text(
                updatedAt != null
                    ? "${Strings.updatedAt}: ${toShamsi(updatedAt)}"
                    : "",
                style: Themizer.light.textTheme.caption,
              ),
            ],
          ),
          Row(
            children: [
              _buildConfirmButton(),
              const SizedBox(
                width: kSpacing / 2,
              ),
              _buildCancelButton()
            ],
          ),
        ],
      ),
    );
  }
}
