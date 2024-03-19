import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirstSlide extends FlutterDeckSlideWidget {
  FirstSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: 'first',
            header: FlutterDeckHeaderConfiguration(
              title: 'Blank slide template',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(title: 'title');
  }
}
