import 'package:flutter/material.dart';
import 'package:tutorial/constant/colors.dart';

class _HorizontalBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.grey[200],
    );
  }
}

class _AppColumn extends StatelessWidget {
  final String name;
  final Icon icon;
  final String percentage;

  const _AppColumn({
    Key? key,
    required this.name,
    required this.icon,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        name,
        style: const TextStyle(color: kBatteryOptimizerTextColor),
      ),
      trailing: Text(
        percentage,
        style: const TextStyle(color: kBatteryOptimizerTextColor),
      ),
    );
  }
}

class AppsDrainage extends StatelessWidget {
  const AppsDrainage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ClipOval(
            child: Container(
              color: kBatteryOptimizerPurple,
              child:
                  const Icon(Icons.apps, color: kBatteryOptimizerColorPrimary),
            ),
          ),
          title: const Text(
            'Apps Drainage',
            style: TextStyle(color: kBatteryOptimizerTitleColor),
          ),
          subtitle: const Text(
            'Show the most draining energy application',
            style: TextStyle(color: kBatteryOptimizerTextColor),
          ),
        ),
        Material(
          color: kBatteryOptimizerColorPrimary,
          elevation: kBatteryOptimizerElevation,
          borderRadius: BorderRadius.circular(16),
          child: Column(
            children: [
              const _AppColumn(
                  name: 'SMSApp',
                  icon: Icon(Icons.sms, color: Colors.indigo),
                  percentage: '75%'),
              _HorizontalBorder(),
              const _AppColumn(
                  name: 'MovieApp',
                  icon: Icon(Icons.live_tv, color: Colors.red),
                  percentage: '60%'),
              _HorizontalBorder(),
              const _AppColumn(
                  name: 'MapApp',
                  icon: Icon(Icons.place, color: Colors.green),
                  percentage: '35%'),
              _HorizontalBorder(),
              const _AppColumn(
                  name: 'ShoppingApp',
                  icon: Icon(Icons.local_grocery_store, color: Colors.orange),
                  percentage: '35%'),
              _HorizontalBorder(),
              const _AppColumn(
                  name: 'TrainApp',
                  icon: Icon(Icons.train, color: Colors.black),
                  percentage: '15%'),
            ],
          ),
        ),
      ],
    );
  }
}
