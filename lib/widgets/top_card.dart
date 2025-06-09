import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../screens/add_new_card_screen.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // profile and notification buttons
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pink[100],
                  child: const Icon(Icons.person),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddNewCardScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.assessment_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Total Balance',
              textScaler: TextScaler.linear(1.2),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5.0),
            Text(
              '\$12,404.44',
              textScaler: TextScaler.linear(3),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    elevation: WidgetStatePropertyAll(0),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  label: Text('Send', style: TextStyle(color: Colors.white)),
                  icon: const Icon(Icons.arrow_outward, color: Colors.white),
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.grey[300]),
                    elevation: WidgetStatePropertyAll(0),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  label: Text('Request', style: TextStyle(color: Colors.black)),
                  icon: Transform.rotate(
                    angle: math.pi, // don't have that icon so...
                    child: const Icon(Icons.arrow_outward, color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.grey[300]),
                    elevation: WidgetStatePropertyAll(0),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('More', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
