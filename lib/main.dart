import 'package:application/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:application/screens/explore_page.dart';
import 'package:application/screens/button_navigation_bar.dart';
import 'package:application/screens/booking_page.dart';
import 'package:application/screens/offers_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FickleFlight',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Initial route
      routes: {
        '/': (context) => ButtonNavigationBar(),
        '/explore': (context) => ExplorePage(),
        '/booking': (context) => BookingPage(),
        //'/search': (context) => SearchPage(),
        '/offers': (context) => OfferScreen(),
        '/profile': (context) => ProfilePage(),
      },
      onUnknownRoute: (settings) {
        // Handle unknown routes
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: Text('404')),
            body: Center(child: Text('Page not found')),
          ),
        );
      },
    );
  }
}
