import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Fuel Economy')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(22)),
            child: Column(
              children: [
                const Text('AVERAGE FUEL CONSUMPTION', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                const SizedBox(height: 8),
                const Text('6.8 L/100KM', style: TextStyle(fontSize: 44, fontWeight: FontWeight.w900, color: AppTheme.primaryColor)),
                const SizedBox(height: 6),
                const Text('Estimated Range: 620 km remaining', style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Recent Refills', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _refill('52.4 L @ $1.68/L', 'Shell V-Power', 'Total: $88.03', 'Yesterday'),
          _refill('48.1 L @ $1.65/L', 'BP Ultimate', 'Total: $79.36', '7 days ago'),
          _refill('50.0 L @ $1.62/L', 'TotalEnergies', 'Total: $81.00', '15 days ago'),
        ],
      ),
    );
  }
  Widget _refill(String title, String st, String cost, String date) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(st, style: const TextStyle(color: Colors.white60, fontSize: 12)),
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(cost, style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.secondaryColor)),
            Text(date, style: const TextStyle(color: Colors.white38, fontSize: 11)),
          ]),
        ],
      ),
    );
  }
}

