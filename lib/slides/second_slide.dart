import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SecondSlide extends FlutterDeckSlideWidget {
  SecondSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/second',
            header: FlutterDeckHeaderConfiguration(
              title: 'Blank slide template',
            ),
            
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return const _Counter();
      },
    );
  }
}

class _Counter extends StatefulWidget {
  const _Counter({super.key});

  @override
  State<_Counter> createState() => _CounterState();
}

class _CounterState extends State<_Counter> {
  var _count = 0;

  void _increase() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: _increase,
      icon: const Icon(Icons.add),
      label: Text('$_count'),
    );
  }
}
