import 'package:flutter/material.dart';

class TextFieldWidgetIcon extends StatefulWidget {
  final TextEditingController controller;
  final Color textcolor;
  final Color borderSideColor;
  final String label;
  final Color labelColor;
  final TextInputType keyBoardType;
  final Color backgroundColor;
  TextFieldWidgetIcon(
      {super.key,
      required this.controller,
      this.textcolor = Colors.white,
      this.borderSideColor = Colors.black,
      required this.label,
      this.labelColor = Colors.black,
      this.keyBoardType = TextInputType.name,
      this.backgroundColor = Colors.white});

  @override
  State<TextFieldWidgetIcon> createState() => _TextFieldWidgetIconState();
}

class _TextFieldWidgetIconState extends State<TextFieldWidgetIcon> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value) {
        // this will  handle the checks when the field is submitted 
        // but before the button to proceed is pressed
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      style: TextStyle(color: widget.textcolor, fontSize: 17),
      controller: widget.controller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 15, bottom: 15, left: 13),
          filled: true,
          fillColor: widget.backgroundColor,
          // errorText:
          //     widget.controllerExist.isEmpty ? null : widget.controllerExist,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderSideColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: widget.borderSideColor)),
          label: Text(widget.label),
          labelStyle: TextStyle(color: widget.labelColor)
          //hintText: 'username',

          ),
      keyboardType: TextInputType.name,

      //  keyboardType: TextInputType.name,
    );
  }
}