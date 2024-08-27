import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimations,
  });

  final Animation<Offset> slidingAnimations;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimations,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimations,
            child: const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
