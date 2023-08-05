import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(int.parse("0xff000000")),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image(image: AssetImage('asset/musify.png'),
              height: 115,
              alignment: Alignment.bottomCenter,),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 20),
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 16.0)),
                  TextField(
                    obscureText: true,
                    style: TextStyle(color: Color(int.parse("0xffFFF6DC"))),
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Masukkan Username",
                      border: OutlineInputBorder(),
                      fillColor: Color(int.parse("0xff068FFF")),
                      filled: true,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 16.0)),
                  TextField(
                    obscureText: false,
                    style:
                    TextStyle(color: Color(int.parse("0xffFFF6DC"))) ,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Masukkan Email",
                      fillColor: Color(int.parse("0xff068FFF")),
                      filled: true,
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 20,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 16.0)),
                  TextField(
                    obscureText: true,
                    style: TextStyle(color: Color(int.parse("0xffFFF6DC"))),
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Masukkan Password",
                      border: OutlineInputBorder(),
                      fillColor: Color(int.parse("0xff068FFF")),
                      filled: true,
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Login"),
                        style: ButtonStyle(
                          side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Colors.black, width: 1.0),) 
                        ),)),
                        SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(onPressed: () {}, child:
                           Text("Register", style: TextStyle(color: Colors.white),),
                           style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
                           side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Colors.black, width: 1.0),)),),)
                      ],
                    ),
                  )
                ],
              ),
              ),
            ],
          ),
        ),
      )
    );  
  }
}