import 'package:flutter/material.dart';
import 'package:spotify/widgets/actions.dart';
import 'package:spotify/widgets/bottom_navigation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191414),
      appBar: AppBar(
        backgroundColor: const Color(0xFF191414),
        elevation: 0,
        actions: const [ActionsHeader()],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
