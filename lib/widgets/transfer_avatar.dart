import 'package:flutter/material.dart';

class TransferAvatars extends StatelessWidget {
  final IconData icon;
  const TransferAvatars({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.purple[100],
        shape: BoxShape.circle,
      ),
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      child: Icon(icon),
    );
  }
}
