import 'package:application/utils/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:application/screens/button_navigation_bar.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  "Booking",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Upcoming Booking",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'lib/img/tree.png',
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            TicketView(
              width: MediaQuery.of(context).size.width * 0.85,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Image.asset(
                  'lib/img/logo.png',
                  width: 50,
                  height: 30,
                ),
                const SizedBox(width: 16),
                const Text(
                  "United Airlines",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.access_time),
                const SizedBox(width: 5),
                const Text("01hr 40min"),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(238, 238, 238, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Show more details...",
                style: TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(238, 238, 238, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 176, 176, 28),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  ),
                  child: const Text("Edit Booking"),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ButtonNavigationBar(),
    );
  }
}
