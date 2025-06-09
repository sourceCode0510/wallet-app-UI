import 'package:flutter/material.dart';

class DebitCard extends StatelessWidget {
  const DebitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.deepPurple[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Debit', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                width: 50,
                height: 50,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CircleAvatar(backgroundColor: Colors.white30, radius: 12),
                    Positioned(
                      right: 12,
                      child: CircleAvatar(
                        backgroundColor: Colors.white54,
                        radius: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('1234 **** **** 3456'), Text('12/24')],
          ),
        ],
      ),
    );
  }
}
