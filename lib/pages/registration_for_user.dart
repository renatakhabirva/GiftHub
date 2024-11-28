import 'package:flutter/material.dart';

class RegistrationForUser extends StatelessWidget{
  final logoText = const TextStyle(fontSize: 72, color: Color.fromARGB(
      255, 107, 135, 98), fontFamily: 'plantype');
  final textFieldStyle = const TextStyle(fontSize: 24.0, color: Color.fromARGB(255, 62, 81, 56), fontFamily: 'segoeui');
  Color greenPrim = Color.fromARGB(255, 107, 135, 98);
  @override
  Widget build (BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 225, 225),
      body: new Center(

          child: SingleChildScrollView(

            child: new Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.clear),

                  onPressed: (){Navigator.pop(context);},
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 20),
                  child: Text('Регистрация', textAlign: TextAlign.center, style: TextStyle(fontFamily: "segoeui", fontSize: 48, color: Color.fromARGB(255, 89, 112, 82)), ),
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 20),
                  width: 345.0,
                  child: new TextFormField(

                    cursorColor: Colors.white,
                    decoration: new InputDecoration(labelText: "Имя",fillColor: Color.fromARGB(
                        255, 196, 196, 196), filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none)),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 62, 81, 56))
                    ),
                    keyboardType: TextInputType.name,
                    style: textFieldStyle,
                  ),

                ),
                new Container(
                  padding: new EdgeInsets.only(top: 20),
                  width: 345.0,
                  child: new TextFormField(

                    cursorColor: Colors.white,
                    decoration: new InputDecoration(labelText: "Фамилия",fillColor: Color.fromARGB(
                        255, 196, 196, 196), filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none)),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 62, 81, 56))
                    ),

                    style: textFieldStyle,
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 20),
                  width: 345.0,
                  child: new TextFormField(

                    cursorColor: Colors.white,
                    decoration: new InputDecoration(labelText: "Имя пользователя",fillColor: Color.fromARGB(
                        255, 196, 196, 196), filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none)),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 62, 81, 56))
                    ),

                    style: textFieldStyle,
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 20),
                  width: 345.0,
                  child: new TextFormField(

                    cursorColor: Colors.white,
                    decoration: new InputDecoration(labelText: "Email",fillColor: Color.fromARGB(
                        255, 196, 196, 196), filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none)),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 62, 81, 56))
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: textFieldStyle,
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 20),
                  width: 345.0,
                  child: new TextFormField(

                    cursorColor: Colors.white,
                    decoration: new InputDecoration(labelText: "Телефон",fillColor: Color.fromARGB(
                        255, 196, 196, 196), filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none)),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 62, 81, 56))
                    ),
                    keyboardType: TextInputType.phone,
                    style: textFieldStyle,
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 20),
                  width: 345.0,
                  child: new TextFormField(
                    obscureText: true,
                    cursorColor: Colors.white,
                    decoration: new InputDecoration(labelText: "Пароль",fillColor: Color.fromARGB(
                        255, 196, 196, 196), filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none)),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 62, 81, 56))
                    ),

                    style: textFieldStyle,
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 20),
                  width: 345.0,
                  child: new TextFormField(
                    obscureText: true,
                    cursorColor: Colors.white,
                    decoration: new InputDecoration(labelText: "Подтвердите пароль",fillColor: Color.fromARGB(
                        255, 196, 196, 196), filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none)),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 62, 81, 56))
                    ),

                    style: textFieldStyle,
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: greenPrim,
                        minimumSize: Size(190, 50)
                    ),
                    onPressed: () {},
                    child: Text("Зарегестрироваться", style: TextStyle(fontFamily: 'segoeui', fontSize: 20),),
                  ),
                ),
              ],
            ),)
      ),);
  }
}