import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedindex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedindex,
    required this.onItemTapped,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFFFFFFFF),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Container(
            alignment: Alignment.center,
            child: widget.selectedindex == 0
                ? Image.asset(
                    'assets/Home_Selected.png',
                    width: 30,
                  )
                : Image.asset(
                    'assets/Home_Unselected.png',
                    width: 30,
                  ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            alignment: Alignment.center,
            child: widget.selectedindex == 1
                ? Image.asset(
                    'assets/Catalog_Selected.png',
                    width: 30,
                  )
                : Image.asset(
                    'assets/Catalog_Unselected.png',
                    width: 30,
                  ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            alignment: Alignment.center,
            child: widget.selectedindex == 2
                ? Image.asset(
                    'assets/Cart_Selected.png',
                    width: 30,
                  )
                : Image.asset(
                    'assets/Cart_Unselected.png',
                    width: 30,
                  ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            alignment: Alignment.center,
            child: widget.selectedindex == 3
                ? Image.asset(
                    'assets/Profile_Selected.png',
                    width: 34,
                  )
                : Image.asset(
                    'assets/Profile_Unselected.png',
                    width: 34,
                  ),
          ),
          label: '',
        ),
      ],
      currentIndex: widget.selectedindex,
      onTap: widget.onItemTapped,
    );
  }
}
