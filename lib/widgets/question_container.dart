import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:html_unescape/html_unescape.dart';

class QuestionContainer extends StatelessWidget {
  final String question;

  const QuestionContainer({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    final unescape = HtmlUnescape();
    final decodedQuestion = unescape.convert(question);

    return Container(
      width: 600, // Set a fixed width for the container
      height: 180, // Set a fixed height for the container
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 219, 214, 214),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 24, 23, 23).withOpacity(0.2),
            spreadRadius: 10,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Center(
        child: AutoSizeText(
          decodedQuestion,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          maxLines: 3, // Set the maximum number of lines
          minFontSize: 14, // Set the minimum font size
        ),
      ),
    );
  }
}