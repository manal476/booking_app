import 'package:flutter/material.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 150,
              height: 190,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      "lib/img/place1.png",
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Brocay ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "5D4N ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Philippines",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 150,
              height: 190,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      "lib/img/place2.png",
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center text horizontally
                    children: const [
                      Text(
                        "Braos ",
                        style: TextStyle(
                          fontSize: 16, // Font size of the text
                          fontWeight: FontWeight.bold, // Bold text
                          color: Colors.black, // Text color
                        ),
                      ),
                      Text(
                        "5D4N ",
                        style: TextStyle(
                          fontSize: 16, // Font size of the text
                          fontWeight: FontWeight.bold, // Bold text
                          color: Colors.black, // Text color
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Maldives",
                    style: TextStyle(
                      fontSize: 13, // Font size of the text
                      fontWeight: FontWeight.bold, // Bold text
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center, // Center the text
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 150,
              height: 190,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      "lib/img/place3.png",
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Bali ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "5D4N ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Indonesia",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 150,
              height: 190,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      "lib/img/place4.png",
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Palawan ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "5D4N ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Philippines",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
