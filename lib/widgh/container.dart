import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            width: 2.5,
            color: Color.fromARGB(255, 32, 43, 52),
          )),
    );
  }
}
