import 'package:app/other.dart';
import 'package:flutter/material.dart';

import 'Form.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter',
      home: Main(),
    ),
  );
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Week 3'),
      ),

      // body is the majority of the screen.
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Zain Hassan'),
              accountEmail: Text('zhassan9246@gmail.com'),
             
            ),
            ListTile(
              title: Text('Form'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('Option 2'),
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Other()),
                );
              },
            ),
          ],
        ),
      ),
      body: 
      const Center(
         child:Image(
          image: 
          AssetImage('assets/my.jpg')),
        ),
      bottomNavigationBar:BottomNavigationBar
      (
         
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
        
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}


