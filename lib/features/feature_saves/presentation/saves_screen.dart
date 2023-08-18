import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SavesScreen extends StatelessWidget {
  const SavesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SvgPicture.asset(
            'assets/images/saves.svg',
            height: 40,
            width: 40,
          ),
        ),
      ),
    );
  }
}
