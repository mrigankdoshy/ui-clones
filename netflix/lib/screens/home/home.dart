import 'package:flutter/material.dart';
import 'package:netflix/screens/home/body.dart';
import 'package:netflix/widgets/bottom_navigation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: Body(),
    );
  }
}
