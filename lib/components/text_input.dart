import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/text.dart';

class TextForm extends StatelessWidget {
  final heading;
  final width;
  final hintText;
  final maxLine;
  const TextForm(
      {super.key,
      @required this.heading,
      @required this.width,
      @required this.hintText,
      this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16),
        SizedBox(height: 5),
        SizedBox(
          width: width,
          child: TextFormField(
            maxLines: maxLine == null ? null : maxLine,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 245, 200, 235))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 245, 200, 235)))),
          ),
        )
      ],
    );
  }
}
