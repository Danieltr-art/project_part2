import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_part2/components/listForm.dart';

class courses{
  int courseid;
  String name;
  String code;
  int credit;
  
  courses(this.courseid, this.name, this.code, this.credit);

  @override
  String toString() {
    return 'courses{courseid: $courseid, name: $name, code: $code, credits: $credit}';
  }
}

List <courses> _courses = [];

void updateCourses() async{
  try{
    _courses.clear();
    final response = await http.get(Uri.parse('http://10.0.2.2/mobileBackend/index.php'));
    if(response.statusCode == 200){
      final jsonResponse = convert.jsonDecode(response.body);
      for(var row in jsonResponse){
        courses c = courses(
            int.parse(row['courseid']),
            row['name'],
            row['code'],
            int.parse(row['courseid']));
        _courses.add(c);
      }
    }
    
  }catch(e){
    print("$e");
  }
}

class showCourses extends StatelessWidget {
  const showCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _courses.length,
        itemBuilder: (context, index) {
          return listForm(title: _courses[index].code, subtitle: _courses[index].name, nav: "");
        },
    );
  }
}

