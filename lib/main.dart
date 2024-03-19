import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'slides/first_slide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(slides: [FirstSlide()]);
  }
}