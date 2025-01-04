import 'package:flutter/material.dart';

class textForm extends StatelessWidget {
  final String hin;
  final Widget? suffix;
  final TextInputType? textType;
  final TextEditingController? myController;
  final String? Function(String?)? valid;
  final bool obscure;
  const textForm({super.key, required this.hin, required this.suffix, required this.textType, required this.myController, required this.valid, required this.obscure});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        keyboardType: textType,
        controller: myController,
        validator: valid,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hin,
          hintStyle: const TextStyle(color: Colors.white, fontFamily: 'Bitter-VariableFont_wght.ttf', letterSpacing: 3, fontSize: 15),
          suffixIcon: suffix,
          suffixIconColor: Colors.white,
          filled: true,
          fillColor: Colors.black38,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),
    );
  }
}
