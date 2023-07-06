import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool is_selected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          is_selected = true;
        });
      },
      onExit: (_) {
        setState(() {
          is_selected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 0),
        style: is_selected
            ? GoogleFonts.sahitya(
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(0, -5),
                  )
                ],
                fontSize: 25,
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationColor: Color.fromARGB(255, 245, 200, 235),
              )
            : GoogleFonts.sahitya(
                fontSize: 25,
                decorationColor: Colors.black,
              ),
        child: Text(
          widget.title,
        ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        color: Colors.black,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        color: Colors.black,
        fontSize: size,
      ),
    );
  }
}
