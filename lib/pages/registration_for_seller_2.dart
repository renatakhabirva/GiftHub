import 'package:flutter/material.dart';
class RegistrationForSeller2 extends StatelessWidget{
  @override

  final logoText = const TextStyle(fontSize: 72, color: Color.fromARGB(
      255, 107, 135, 98), fontFamily: 'plantype');
  final textFieldStyle = const TextStyle(fontSize: 24.0, color: Color.fromARGB(255, 62, 81, 56), fontFamily: 'segoeui');
  Color greenPrim = Color.fromARGB(255, 107, 135, 98);
  Widget build (BuildContext context) {

    return Scaffold(backgroundColor: Color.fromARGB(255, 226, 225, 225),
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
                          decoration: new InputDecoration(labelText: "Страна регистрации",fillColor: Color.fromARGB(
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
                          decoration: new InputDecoration(labelText: "Тип организации",fillColor: Color.fromARGB(
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
                          decoration: new InputDecoration(labelText: "Название организации",fillColor: Color.fromARGB(
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
                          width: 345,
                          child: DropdownButton<String>(
                            items: <String>['Красота и здоровье', 'Техника', 'Аксессуары', 'Цветы', 'Сладости'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},

                          )
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
                    ]
                )
            ))
    );
  }
}


