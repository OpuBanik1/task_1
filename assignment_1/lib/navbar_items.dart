import 'package:assignment_1/create_page.dart';
import 'package:assignment_1/home_page.dart';
import 'package:assignment_1/save_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavItem extends StatefulWidget {
  const NavItem({super.key});

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  List<Widget> pages = [Home_page(), SavePage(), CreatePage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Discover',
                  backgroundColor: Colors.orange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.save),
                  label: 'Save',
                  backgroundColor: Colors.orange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.details_rounded),
                  label: 'Details',
                  backgroundColor: Colors.orange)
            ]),
      ),
    );
  }
}
