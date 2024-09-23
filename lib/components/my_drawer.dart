import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          MyDrawerTile(
            icon: Icons.home, 
            onTap: ()=> Navigator.pop(context), 
            text: 'H O M E'
            ),

          MyDrawerTile(
            icon: Icons.settings, 
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingsPage()));
              }, 
            text: 'S E T T I N G S'),
          
          const Spacer(),
          
          MyDrawerTile(
            icon: Icons.logout, 
            onTap: () {}, 
            text: 'L O G O U T'
            ),

          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
