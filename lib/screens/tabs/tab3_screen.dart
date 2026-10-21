import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Trip Cost')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _trip('Berlin → Munich (580 km)', '$62.50 Est. Fuel', 'Tolls: $0.00'),
          _trip('Paris → Lyon (460 km)', '$54.00 Est. Fuel', 'Tolls: $38.20'),
          _trip('Daily Commute (35 km)', '$3.80 Est. Fuel', 'Tolls: $0.00'),
        ],
      ),
    );
  }
  Widget _trip(String route, String fuel, String tolls) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(route, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(fuel, style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold)),
              Text(tolls, style: const TextStyle(color: Colors.white60)),
            ],
          ),
        ],
      ),
    );
  }
}

