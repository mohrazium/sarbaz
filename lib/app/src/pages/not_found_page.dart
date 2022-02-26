part of pages;

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 150,
      height: 200,
      color: const Color(0xFF01C3FF),
      child: const Center(
        child: FlutterLogo(),
      ),
    ));
  }
}
