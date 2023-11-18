import 'package:flutter/material.dart';

class InputTextWidget extends StatefulWidget {
  final String label;
  final Icon prependIcon;
  bool obscure;
  String? type;
  InputTextWidget({
    Key? key,
    required this.label,
    required this.prependIcon,
    required this.obscure,
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
        obscureText: obscured,
        decoration: InputDecoration(
          floatingLabelStyle: const TextStyle(color: Colors.blue),
          border: OutlineInputBorder(
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
