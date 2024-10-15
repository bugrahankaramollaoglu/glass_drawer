import 'package:flutter/material.dart';
import 'package:glass_drawer/glass_drawer.dart';

void main() {
  runApp(
    const MaterialApp(
      home: GlassDrawerApp(),
    ),
  );
}

class GlassDrawerApp extends StatelessWidget {
  const GlassDrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glass Drawer Example'),
        backgroundColor: Colors.amberAccent,
      ),
      drawer: GlassDrawer(
        drawerHeader: const DrawerHeader(
          child: Text('Header'),
        ),
        children: const [
          ListTile(
            title: Text('Item 1'),
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text('Item 2'),
            leading: Icon(Icons.settings),
          ),
        ],
      ),
      body: const Center(child: Text('Swipe from the left to open the drawer')),
    );
  }
}
