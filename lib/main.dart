import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'slides/first_slide.dart';
import 'slides/second_slide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: const FlutterDeckConfiguration(
        controls: FlutterDeckControlsConfiguration(
          presenterToolbarVisible: true,
          shortcuts: FlutterDeckShortcutsConfiguration(
            enabled: true,
            nextSlide: SingleActivator(LogicalKeyboardKey.arrowRight),
            previousSlide: SingleActivator(LogicalKeyboardKey.arrowLeft),
            toggleMarker: SingleActivator(
              LogicalKeyboardKey.keyM,
              control: true,
              meta: true,
            ),
            toggleNavigationDrawer: SingleActivator(
              LogicalKeyboardKey.period,
              control: true,
              meta: true,
            ),
          ),
        ),
        header: FlutterDeckHeaderConfiguration(
          showHeader: false,
        ),
        progressIndicator: FlutterDeckProgressIndicator.gradient(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink, Colors.purple],
          ),
          backgroundColor: Colors.black,
        ),
        transition: FlutterDeckTransition.none(),
      ),
      slides: [FirstSlide(), SecondSlide()],
    );
  }
}
