import 'package:flutter/material.dart';
import '../widgets/top_card.dart';
import '../widgets/transfer_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 24, 8, 0),
      child: Column(
        children: [
          // top card
          TopCard(),

          // bottom card
          Expanded(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Recent Transfers',
                      textScaler: TextScaler.linear(1.2),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        TransferAvatars(icon: Icons.add),
                        ...List.generate(
                          4,
                          (i) => TransferAvatars(icon: Icons.person),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // transactions
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Transactions',
                          textScaler: TextScaler.linear(1.2),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        TextButton(
                          onPressed: () {},
                          child: const Text('View All'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        itemCount: 5,
                        itemBuilder:
                            (context, index) => ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 2,
                                vertical: 0,
                              ),
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                radius: 24,
                                child: Text('C${index + 1}'),
                              ),
                              title: Text(
                                'Category ${index + 1}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text('Transaction Date'),
                              trailing: Text(
                                '-\$50',
                                textScaler: TextScaler.linear(1.7),
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
