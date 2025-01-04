import 'package:flutter/material.dart';
import 'package:project_part2/components/styleText.dart';

class cpView extends StatelessWidget {
  const cpView({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(image,fit: BoxFit.fill,),
          Container(
            padding: EdgeInsets.all(15),
            child: Expanded(
                child: styleText(val: text, size: 20, color: Colors.blue)
            ),
          ),
        ],
      ),
    );
  }
}
