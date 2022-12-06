import 'package:flutter/material.dart';
import 'post.dart';

class AdminMobilePage extends StatelessWidget {
  const AdminMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideNavigation(),
          const VerticalDivider(thickness: 1, width: 1),
          const Expanded(child: PostList()),
        ],
      ),
    );
  }
}

class SideNavigation extends StatefulWidget {
  const SideNavigation({super.key});

  @override
  State<SideNavigation> createState() => _SideNavigationState();
}

class _SideNavigationState extends State<SideNavigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      destinations: [
        const NavigationRailDestination(
          icon: Icon(Icons.thumbs_up_down),
          label: Text('ThumbsUpDown'),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.people),
          label: Text('People'),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.face),
          label: Text('Face'),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.bookmark),
          label: Text('Bookmark'),
        ),
      ],
    );
  }
}
