import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextWidget extends StatefulWidget {
  final String label;
  final Icon prependIcon;
  final TextEditingController controller;
  final validator;
  bool obscure;
  String? type;
  InputTextWidget({
    Key? key,
    required this.label,
    required this.prependIcon,
    required this.obscure,
    required this.controller,
    required this.validator,
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
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: obscured,
        style: GoogleFonts.rajdhani(),
        decoration: InputDecoration(
          labelStyle: GoogleFonts.rajdhani(),
          floatingLabelStyle: GoogleFonts.rajdhani(color: Colors.blue),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade800),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade400),
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: widget.label,
          prefixIcon: IconButton(
            icon: widget.prependIcon,
            onPressed: () {
              setState(() {
                widget.obscure =
                    widget.type == 'password' ? !widget.obscure : false;
              });
            },
          ),
        ),
      ),
    );
  }
}
