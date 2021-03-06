import 'package:flutter/material.dart';
import 'package:netflix/widgets/action_bar.dart';
import 'package:netflix/widgets/options_bar.dart';
import 'package:netflix/widgets/top_bar.dart';

class Featured extends StatelessWidget {
  const Featured({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 600.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/blacklist.jpg'),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Colors.transparent,
              Colors.transparent,
              Colors.black,
            ],
            stops: [0.01, 0.3, 0.8, 1.0],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: const [
                  TopBar(),
                  OptionsBar(),
                ],
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: ActionBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
