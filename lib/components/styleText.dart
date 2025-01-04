import 'package:flutter/cupertino.dart';

class styleText extends StatelessWidget {
  const styleText({super.key, required this.val, required this.size, required this.color});
  final String val;
  final double size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(val, style: TextStyle(fontSize: size, fontWeight: FontWeight.bold, letterSpacing: 3, color: color, fontFamily: 'Bitter-VariableFont_wght',),);
  }
}
