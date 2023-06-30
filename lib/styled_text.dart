import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // const StyledText(String text, {super.key}); gabisa langsung akses text di function build krna tidak terhubung
  const StyledText(this.text, {super.key}); //langsung terhubung

  final String
      text; // final karena saat menggunakan widget ini hanya akan assign sekali.
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
