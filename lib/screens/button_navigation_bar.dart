import 'package:flutter/material.dart';

// Import other pages if needed

class ButtonNavigationBar extends StatefulWidget {
  const ButtonNavigationBar({Key? key}) : super(key: key);

  @override
  State<ButtonNavigationBar> createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/explore');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/booking');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/search');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/offers');
        break;
      case 4:
        Navigator.pushReplacementNamed(context, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.blueGrey,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_city),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.flight),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
