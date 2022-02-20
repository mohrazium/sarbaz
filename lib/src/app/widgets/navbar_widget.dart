part of widgets;

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({Key? key, required this.items, this.height});

  final List<Widget> items;
  final double? height;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colorize.kBackgroundColor,
      child: Card(
        elevation: 5,
        color: Colorize.kBackgroundColor[300],
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items,
          ),
        ),
      ),
    );
  }
}
