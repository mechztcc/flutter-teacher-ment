import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextWidget extends StatefulWidget {
  final String label;
  final Icon prependIcon;
  final TextEditingController controller;
  final validator;
  Function? onPress;
  bool obscure;
  String? type;

  InputTextWidget({
    Key? key,
    required this.label,
    required this.prependIcon,
    required this.obscure,
    required this.controller,
    required this.validator,
    this.onPress,
    this.type,
  }) : super(key: key);

  @override
  State<InputTextWidget> createState() => _InputTextWidgetState();
}

class _InputTextWidgetState extends State<InputTextWidget> {
  @override
  Widget build(BuildContext context) {
    var obscured = widget.obscure;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        child: TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          obscureText: obscured,
          style: GoogleFonts.rajdhani(),
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            labelStyle: GoogleFonts.rajdhani(),
            floatingLabelStyle: GoogleFonts.rajdhani(
              color: const Color(0xff9BB2E5),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff9BB2E5),
                style: BorderStyle.solid,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff9BB2E5), width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade400,
                style: BorderStyle.solid,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            labelText: widget.label,
            prefixIcon: IconButton(
              icon: widget.prependIcon,
              color: const Color(0xff9BB2E5),
              onPressed: () {
                setState(() {
                  widget.obscure =
                      widget.type == 'password' ? !widget.obscure : false;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
