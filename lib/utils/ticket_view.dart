import 'package:flutter/material.dart';
import 'package:application/widgh/container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key, required double width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      height: 100,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 4,
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "SIN",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 32, 43, 52),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Singapore",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContainerView(),
                      SizedBox(width: 8),
                      Expanded(
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            final containerWidth = constraints.constrainWidth();
                            if (containerWidth <= 0) {
                              return Container();
                            }
                            final numberOfDots = 12;
                            return Stack(
                              alignment: Alignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    numberOfDots,
                                    (index) => SizedBox(
                                      width: 5,
                                      height: 5,
                                      child: Container(
                                        color: Color.fromARGB(255, 40, 50, 82),
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Icon(
                                    Icons
                                        .airplanemode_active, // Icon you wanted
                                    size: 20, // Reduced icon size
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 8),
                      ContainerView(),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "LAX",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 32, 43, 52),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Los Angeles",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Depart on: 1 MAY, 08:00 AM",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "4 days to go",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
