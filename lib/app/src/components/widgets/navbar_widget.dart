// ignore_for_file: use_key_in_widget_constructors

part of components;

class NavBarWidget extends StatelessWidget {
  final List<Widget> items;
  final double? height;

  const NavBarWidget({Key? key, required this.items, this.height});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colorize.backgroundColor,
      child: Card(
        elevation: 5,
        color: Colorize.backgroundColor[300],
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
