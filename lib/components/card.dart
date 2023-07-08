//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:portfolio/components/text.dart';

class AnimatedCard extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;

  const AnimatedCard(
      {Key? key,
      @required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width})
      : super(key: key);

  @override
  _AnimatedCardState createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Color.fromARGB(255, 245, 200, 235)),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height == null ? 200.0 : widget.height,
                width: widget.width == null ? 200.0 : widget.width,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(height: 10.0),
              widget.text == null ? SizedBox() : SansBold(widget.text, 15.0),
            ],
          ),
        ),
      ),
    );
  }
}
