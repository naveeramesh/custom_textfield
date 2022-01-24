import 'package:flutter/material.dart';

class Customtextfield extends StatefulWidget {
  Customtextfield(
      {Key? key,
      required this.height,
      required this.width,
      required this.colors,
      required this.text,
      this.radius,
     required this.controller,
      this.fontColor,
      this.fontWeight,
      this.fontSize})
      : super(key: key);

  double? height;
  double? width;
  List<Color> colors;
  String? text;
  double? radius;
  TextEditingController? controller;
  Color? fontColor;
  FontWeight? fontWeight;
  double? fontSize;

  @override
  _CustomtextfieldState createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: widget.colors,
            ),
            borderRadius: BorderRadius.circular(widget.radius ?? 20.0)),
        child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
              hintText: widget.text,
              hintStyle: TextStyle(
                  color: widget.fontColor ?? Colors.black,
                  fontSize: widget.fontSize ?? 18,
                  fontWeight: widget.fontWeight ?? FontWeight.bold),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent))),
        ),
      ),
    );
  }
}
