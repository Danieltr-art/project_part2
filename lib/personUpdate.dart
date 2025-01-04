import 'package:flutter/material.dart';
import 'components/styleText.dart';

class personUpdate extends StatefulWidget {
  const personUpdate({super.key});

  @override
  State<personUpdate> createState() => _personUpdateState();
}

class _personUpdateState extends State<personUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
        title: styleText(val: "Update information", size: 20, color: Colors.white),
        backgroundColor: Colors.blue[900],
        leading: Icon(Icons.update, size: 40, color: Colors.white,),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.yellowAccent, width: 20),
            bottom: BorderSide(color: Colors.yellowAccent, width: 20),
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  initialValue: "ID: 2",
                  readOnly: true,
                ),
                TextFormField(
                  initialValue: "Your Name: Daniel Traboulsi",
                  readOnly: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email: trabouli23@gmail.com "
                  ),

                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password: 123"
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
