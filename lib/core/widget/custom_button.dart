import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()?onPressed;
  const CustomButton({
    super.key, required this.text, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding:const EdgeInsets.all(8),
        backgroundColor: Colors.orange,
        minimumSize:const Size(150, 50),
      ),
      onPressed: onPressed,
      child: Text(
       text,
        style:const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}