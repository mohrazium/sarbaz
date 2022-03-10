part of components;

class TextFieldCustom extends StatefulWidget {
  final String? titleText;
  final String? hintText;
  final Icon? icon;
  final bool? multiLine;
  final int? maxLines;
  final TextEditingController? controller;
  final double? width;
  final double? height;
  final bool isSecure;
  final FormFieldValidator<String>? validator;
  final Widget? prefixIcon;
  final Icon? suffixIcon;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final int maxLength;
  const TextFieldCustom({
    Key? key,
    this.titleText,
    this.hintText,
    this.icon,
    this.multiLine,
    this.maxLines,
    this.controller,
    this.width = 210,
    this.height = 46,
    this.isSecure = false,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.onChanged,
    this.maxLength = 255,
  }) : super(key: key);

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  late Icon _textFieldIcon = const Icon(Icons.circle);
  bool _isShowPassword = false;

  getPasswordIconState() {
    if (widget.isSecure) {
      _textFieldIcon = _isShowPassword
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility);
    } else if (widget.suffixIcon != null) {
      _textFieldIcon = widget.suffixIcon!;
    }
  }

  @override
  Widget build(BuildContext context) {
    getPasswordIconState();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.titleText != null
            ? Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: kPadding / 3, horizontal: kPadding / 2),
                child: Text(
                  widget.titleText ?? "",
                ),
              )
            : Container(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding / 3),
          child: SizedBox(
            height: widget.height,
            width: widget.width,
            child: TextFormField(
              maxLength: widget.maxLength,
              keyboardType: widget.keyboardType ?? TextInputType.text,
              inputFormatters: [
                widget.keyboardType == TextInputType.number
                    ? FilteringTextInputFormatter.digitsOnly
                    : FilteringTextInputFormatter.singleLineFormatter,
                LengthLimitingTextInputFormatter(widget.maxLength),
              ],
              obscureText: widget.isSecure ? !_isShowPassword : false,
              controller: widget.controller,
              validator: widget.validator,
              onChanged: widget.onChanged,
              decoration: _getInputDecoration(),
            ),
          ),
        ),
      ],
    );
  }

  _getInputDecoration() {
    return InputDecoration(
        contentPadding: const EdgeInsets.all(kPadding / 3),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colorize.accentColor),
          borderRadius: BorderRadius.all(
            Radius.circular(kBorderRadius),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colorize.errorColor),
          borderRadius: BorderRadius.all(
            Radius.circular(kBorderRadius),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide:
              BorderSide(width: 1.5, color: Colorize.primaryColorShade300),
          borderRadius: BorderRadius.all(
            Radius.circular(kBorderRadius),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(width: 1.5, color: Colorize.primaryColorShade300),
          borderRadius: BorderRadius.all(
            Radius.circular(kBorderRadius),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colorize.errorColor),
          borderRadius: BorderRadius.all(
            Radius.circular(kBorderRadius),
          ),
        ),
        fillColor: Colorize.backgroundColor,
        filled: true,
        hintText: widget.hintText,
        icon: widget.icon,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isSecure
            ? IconButton(
                padding: const EdgeInsets.all(0.0),
                icon: _textFieldIcon,
                onPressed: () {
                  setState(() {
                    _isShowPassword = !_isShowPassword;
                  });
                },
              )
            : widget.suffixIcon);
  }
}
