import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// screens
import './screens/home_screen.dart';
import './screens/card_screen.dart';
import './screens/transaction_screen.dart';
import './screens/add_new_card_screen.dart';
// main function

void main() {
  // status bar colors
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
  );
  runApp(
    // heare will be our material app
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove the debug banner
      debugShowCheckedModeBanner: false,
      home: ScreenWrapper(), // we will create this now.
    );
  }
}

// this will wrap all three screens and show the bottom Navigation Bar
class ScreenWrapper extends StatefulWidget {
  const ScreenWrapper({super.key});

  @override
  State<ScreenWrapper> createState() => _ScreenWrapperState();
}

class _ScreenWrapperState extends State<ScreenWrapper> {
  // let's setup screens
  int _selectedScreenIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    CardScreen(),
    TransactionScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // change the background color
      backgroundColor: Colors.black,
      // show the screens
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.white54),
        // remove the labels
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedScreenIndex,
        onTap: (value) {
          setState(() {
            // when tapped on any icon it will switch the index and change the screen
            _selectedScreenIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: const Icon(Icons.credit_card),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.swap_horiz),
            label: 'Transactions',
          ),
        ],
      ),
    );
  }
}
