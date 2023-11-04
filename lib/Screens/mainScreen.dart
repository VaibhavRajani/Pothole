import 'package:flutter/material.dart';
import '../BottomNavBar/AboutUsPage.dart';
import '../BottomNavBar/PotHoleDetector.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Pothole Detector',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'About Us',
          ),
        ],
        backgroundColor: Colors.blueGrey,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 203, 203, 203),
      ),
      appBar: AppBar(
        leadingWidth: 90,
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: _title.elementAt(_selectedIndex),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }
}

List<Widget> _pages = <Widget>[
  SiteSurveyPage(),
  const AboutUsPage(),
];

const List<Widget> _title = <Widget>[
  Text(
    "Pothole Detector",
    style: TextStyle(fontSize: 15, color: Colors.black),
  ),
  Text(
    "About Us",
    style: TextStyle(fontSize: 15, color: Colors.black),
  ),
];
