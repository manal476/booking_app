import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  const IconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildIconWithLabel('lib/img/flight.png', 'Flight'),
        _buildIconWithLabel('lib/img/hotels.png', 'Hotels'),
        _buildIconWithLabel('lib/img/attractions.png', 'Attractions'),
        _buildIconWithLabel('lib/img/eats.png', 'Eats'),
        _buildIconWithLabel('lib/img/commute.png', 'Commute'),
      ],
    );
  }

  Widget _buildIconWithLabel(String imagePath, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          width: 50,
          height: 50,
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
