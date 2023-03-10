import 'package:flutter/material.dart';
import 'package:movie_app/features/media/presentation/spotlight/spotlight_widget.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: const [SpotlightWidget()],
      ),
    );
  }
}
