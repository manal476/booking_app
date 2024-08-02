import 'package:flutter/material.dart';
import 'drawer_page.dart';
import 'package:application/screens/button_navigation_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DrawerPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Image.asset(
                  'lib/img/see.png',
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 16,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('lib/images/avatar.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            // Name and Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Mary Johnson',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Baguio, Philippines',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'I love beach, mountains, forest and everything about nature! :)',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildProfileOption(
                      Icons.account_balance_wallet, "Payment Details"),
                  _buildProfileOption(Icons.coronavirus, "COVID Advisory"),
                  _buildProfileOptionWithNew(
                    Icons.person,
                    "Referral Code",
                    isNew: true,
                  ),
                  _buildProfileOption(Icons.settings, "Settings"),
                  _buildProfileOption(Icons.logout, "Logout"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ButtonNavigationBar(),
    );
  }

  Widget _buildProfileOption(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOptionWithNew(IconData icon, String text,
      {bool isNew = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          if (isNew)
            Container(
              margin: const EdgeInsets.only(left: 8.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                'NEW',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}
