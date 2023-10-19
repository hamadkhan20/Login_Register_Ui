import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  final String title;
  final Color fieldColor;
  final Color textColor;
  final VoidCallback onpress;
  const MyText({
    super.key,
    required this.title,
    this.fieldColor = const Color(0xff1E232C),
    this.textColor = Colors.white,
    required this.onpress,
  });

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onpress,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(),
            color: widget.fieldColor,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: widget.textColor),
          ),
        ),
      ),
    );
  }
}
