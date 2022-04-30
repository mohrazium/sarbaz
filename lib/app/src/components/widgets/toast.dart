part of components;

class Toast extends StatefulWidget {
  final Widget materialApp;
  const Toast({Key? key, required this.materialApp}) : super(key: key);

  @override
  State<Toast> createState() => _ToastState();
}

class _ToastState extends State<Toast> {
  @override
  Widget build(BuildContext context) {
    return StyledToast(
        locale: kDefaultLocale, //You have to set this parameters to your locale
        textStyle: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            fontFamily: Fonts.sahelFontFamily), //Default text style of toast
        backgroundColor:
            Colorize.foregroundColorShade300, //Background color of toast
        borderRadius: BorderRadius.circular(5.0), //Border radius of toast
        textPadding: const EdgeInsets.all(kPadding), //The padding of toast text
        toastPositions: StyledToastPosition.bottom, //The position of toast
        toastAnimation: StyledToastAnimation.fade, //The animation type of toast
        reverseAnimation: StyledToastAnimation
            .fade, //The reverse animation of toast (display When dismiss toast)
        curve: Curves.fastOutSlowIn, //The curve of animation
        reverseCurve:
            Curves.fastLinearToSlowEaseIn, //The curve of reverse animation
        duration: const Duration(
            seconds:
                5), //The duration of toast showing, when set [duration] to Duration.zero, toast won't dismiss automatically.
        animDuration: const Duration(
            milliseconds:
                250), //The duration of animation(including reverse) of toast
        dismissOtherOnShow:
            true, //When we show a toast and other toast is showing, dismiss any other showing toast before.
        fullWidth:
            false, //Whether the toast is full screen (subtract the horizontal margin)
        isHideKeyboard: false, //Is hide keyboard when toast show
        isIgnoring: true, //Is the input ignored for the toast

        child: widget.materialApp);
  }
}
