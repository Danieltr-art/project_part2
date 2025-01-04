import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_part2/components/styleText.dart';
import 'package:project_part2/components/textForm.dart';
import '../components/valid.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {

  TextEditingController full_name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[900],
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 315,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/logo.jpg"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(250)
              ),
            ),
            Opacity(
                opacity: 0.9,
                child: Container(
                  width: double.infinity,
                  height: 300,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black38,
                  ),
                  child: Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(color: Colors.yellowAccent, width: 10),
                          bottom: BorderSide(color: Colors.yellowAccent, width: 10),
                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          textForm(hin: "full name",
                            suffix: Icon(Icons.account_box),
                            textType: TextInputType.name,
                            myController: full_name,
                            obscure: false,
                            valid: (val) {
                            return valid(full_name.text, 2, 15);
                          },
                          ),
                          textForm(
                            hin: "Email",
                            suffix: const Icon(Icons.mail_outlined),
                            textType: TextInputType.emailAddress,
                            myController: email,
                            obscure: false,
                            valid: (val){
                              return valid(email.text, 12, 20);
                            },
                          ),
                          textForm(
                            hin: "Password",
                            suffix: const Icon(Icons.lock),
                            textType: TextInputType.none,
                            myController: password,
                            obscure: true,
                            valid: (val){
                              return valid(password.text, 8, 15);
                            },
                          ),
                        ],
                      ),

                    ),
                  ),
                ),
              ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: SizedBox(
                height: 70,
                width: 110,
                child: ElevatedButton(onPressed: (){

                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellowAccent,
                    padding: EdgeInsets.all(10),
                  ),
                    child: styleText(val: "Sign in", size: 20, color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                styleText(val: "have an account? ", size: 15, color: Colors.white),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed("login");
                  },
                  child: styleText(val: "Login", size: 15, color: Colors.yellowAccent),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
