import 'package:flutter/material.dart';

class ActionsHeader extends StatelessWidget {
  const ActionsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Wrap(
        spacing: 20,
        children: const [
          Icon(Icons.notifications_outlined),
          Icon(Icons.history_outlined),
          Icon(Icons.settings_outlined),
        ],
      ),
    );
  }
}
