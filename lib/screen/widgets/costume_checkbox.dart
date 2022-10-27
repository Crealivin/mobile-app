import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final bool isCheck;
 
  const CustomCheckBox({required this.isCheck});
  

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
 bool _isSlected = true;


  @override
  Widget build(BuildContext context) {
    _isSlected = widget.isCheck;
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      curve: Curves.fastLinearToSlowEaseIn ,
      child: Container(
        color: _isSlected ? Colors.black.withOpacity(0.1) : Colors.transparent,
        width: 130,
        height: 150,
        child: _isSlected? Icon(Icons.check, color: Colors.white, size: 100,): null,
      ),
    );
  }
}