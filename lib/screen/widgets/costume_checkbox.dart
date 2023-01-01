import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final bool isCheck;

  const CustomCheckBox({super.key, required this.isCheck});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isSlected = true;

  @override
  Widget build(BuildContext context) {
    _isSlected = widget.isCheck;
    return AnimatedContainer(
      duration: Duration(microseconds: 500),
      curve: Curves.fastLinearToSlowEaseIn,
      child: Container(
        color: _isSlected ? Colors.black.withOpacity(0.1) : Colors.transparent,
        width: MediaQuery.of(context).size.height / 5,
        height: MediaQuery.of(context).size.height / 4,
        child: _isSlected
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 100,
              )
            : null,
      ),
    );
  }
}
