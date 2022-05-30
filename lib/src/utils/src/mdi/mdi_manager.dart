part of sarbaz.utils;

class MdiManager extends StatelessWidget {
  final MdiController mdiController;

  const MdiManager({Key? key, required this.mdiController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
          children: mdiController.windows.map((e) {
        return Positioned(
          left: e.x,
          top: e.y,
          key: e.key,
          child: e,
        );
      }).toList()),
    );
  }
}
