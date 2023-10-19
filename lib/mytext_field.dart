import 'package:flutter/material.dart';

class MytextField extends StatefulWidget {
  final String title;
  final Icon suffixIcon;
  const MytextField({
    super.key,
    this.title = 'Enter your email',
    this.suffixIcon = const Icon(Icons.visibility_off),
  });

  @override
  State<MytextField> createState() => _MytextFieldState();
}

class _MytextFieldState extends State<MytextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: widget.title,
          fillColor: const Color(0xffF7F8F9),
          suffixIcon: widget.suffixIcon,
          filled: true,
          hintStyle: TextStyle(fontSize: 15, color: Color(0xff8391A1)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffE8ECF4),
              ),
              borderRadius: BorderRadius.circular(8))),
    );
  }
}
