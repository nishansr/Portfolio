import 'package:flutter/material.dart';
import 'package:portfolio/components/text.dart';

class AnimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  const AnimatedCardWeb({
    super.key,
    @required this.imagePath,
    @required this.text,
  });

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: Color.fromARGB(255, 245, 200, 235)),
          borderRadius: BorderRadius.circular(15)),
      shadowColor: Color.fromARGB(255, 245, 200, 235),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.imagePath,
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            SansBold(widget.text, 15)
          ],
        ),
      ),
    );
  }
}
  