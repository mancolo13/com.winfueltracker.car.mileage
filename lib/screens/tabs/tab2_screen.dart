import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Odometer')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(18)),
            child: Column(
              children: [
                const Text('CURRENT ODOMETER', style: TextStyle(color: Colors.white60)),
                const SizedBox(height: 10),
                const Text('142,850 KM', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900)),
                const SizedBox(height: 6),
                const Text('+1,240 km this month', style: TextStyle(color: AppTheme.primaryColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

