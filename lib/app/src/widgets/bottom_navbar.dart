part of widgets;

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => BottomNavbarState();
}

class BottomNavbarState extends State<BottomNavbar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      items: const [
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.home),
          icon: Icon(EvaIcons.homeOutline),
          label: Strings.dashboard,
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.bell),
          icon: Icon(EvaIcons.bellOutline),
          label: Strings.soldiersSection,
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.checkmarkCircle2),
          icon: Icon(EvaIcons.checkmarkCircle),
          label: "Task",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.settings),
          icon: Icon(EvaIcons.settingsOutline),
          label: "njnoihhih",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.settings),
          icon: Icon(EvaIcons.settingsOutline),
          label: "njnoihhih",
        ),
      ],
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).primaryColor.withOpacity(.5),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      onTap: (value) {
        setState(() {
          index = value;
        });
      },
    );
  }
}
