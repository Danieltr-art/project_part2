import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_part2/components/styleText.dart';

class listForm extends StatelessWidget {
  const listForm({super.key, required this.title, required this.subtitle, required this.nav});

  final String title;
  final String subtitle;
  final String nav;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.of(context).pushNamed(nav);
      },
          leading: Icon(Icons.computer, size: 20, color: Colors.black,),
          title: styleText(val: title, size: 20, color: Colors.black),
          subtitle: styleText(val: subtitle, size: 10, color: Colors.black),
          trailing: Icon(Icons.navigate_next),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          tileColor: Colors.grey.shade300,
        );
  }
}
