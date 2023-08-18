import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SvgPicture.asset(
            'assets/images/notes.svg',
            height: 40,
            width: 40,
          ),
        ),
      ),
    );
  }
}
