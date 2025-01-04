import 'package:flutter/material.dart';
import 'package:project_part2/components/styleText.dart';
import 'course.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.blue[900],
        selectedIconTheme: IconThemeData(
            size: 40,
            color: Colors.yellowAccent,
        ),
        unselectedIconTheme: IconThemeData(
          size: 30,
          color: Colors.white
        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.app_registration), label: "", backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "", backgroundColor: Colors.white)
        ],
        onTap: (val){
          if(val == 0){
            Navigator.of(context).pushNamed("homePage");
          }else{
            Navigator.of(context).pushNamed("personUpdate");
          }
        },
      ),
      appBar: AppBar(
        title: styleText(val: "Registration", size: 20, color: Colors.white),
        backgroundColor: Colors.blue[900],
        leading: Icon(Icons.app_registration, size: 40, color: Colors.white,),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              updateCourses();
            });
          }, icon: Icon(Icons.refresh, color: Colors.white,))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: Colors.yellowAccent, width: 20),
              left: BorderSide(color: Colors.blue.shade900, width: 20),
              bottom: BorderSide(color: Colors.yellowAccent, width: 20),
          ),
        ),
        child: showCourses(),
      ),
    );
  }
}
