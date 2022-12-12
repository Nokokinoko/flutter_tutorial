import 'package:flutter/material.dart';
import 'package:tutorial/battery_optimizer/app_list.dart';
import 'package:tutorial/battery_optimizer/indicator.dart';
import 'package:tutorial/constant/colors.dart';

class BatteryOptimizerPage extends StatelessWidget {
  const BatteryOptimizerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Battery Optimizer'),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const OptimizerButtons(),
            const BatteryLevelIndicator(),
            AppsDrainage(),
            OptimizeNow(),
          ],
        ),
      ),
    );
  }
}

class _OptimizerButton extends StatelessWidget {
  final String text;

  const _OptimizerButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style:
            const TextStyle(color: kBatteryOptimizerTitleColor, fontSize: 12),
      ),
    );
  }
}

class OptimizerButtons extends StatelessWidget {
  const OptimizerButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            const SizedBox(width: 16),
            const _OptimizerButton(text: 'Battery Optimizer'),
            const SizedBox(width: 16),
            const _OptimizerButton(text: 'Connection Optimizer'),
            const SizedBox(width: 16),
            const _OptimizerButton(text: 'Memory Optimizer'),
            const SizedBox(width: 16),
            const _OptimizerButton(text: 'Storage Optimizer'),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}

class OptimizeNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: kBatteryOptimizerPurple,
          padding: const EdgeInsets.symmetric(horizontal: 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: () {},
        child:
            const Text('Optimize Now', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
