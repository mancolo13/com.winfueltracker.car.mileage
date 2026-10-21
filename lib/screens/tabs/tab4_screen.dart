import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Service Schedule')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _service('Engine Oil & Filter', 'Due in 3,150 km', Colors.green),
          _service('Brake Fluid Flush', 'Due in 8,400 km', Colors.green),
          _service('Timing Belt Inspection', 'Due in 15,000 km', Colors.orange),
        ],
      ),
    );
  }
  Widget _service(String title, String due, Color c) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(due, style: TextStyle(color: c, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

