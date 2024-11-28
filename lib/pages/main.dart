import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'registration_for_user.dart';
import 'registration_for_seller.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ivelkowygsgeutmxhdwd.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml2ZWxrb3d5Z3NnZXV0bXhoZHdkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE5Mjk3MTQsImV4cCI6MjA0NzUwNTcxNH0.uhTMOy3LMlMRne5HUcGWgV1QKW7_goPrLSDMpLLLVv4',
  );
  runApp(MaterialApp(

    home: MainWin(),
  ));
}
final supabase = Supabase.instance.client;
class MainWin extends StatelessWidget {

  final logoText = const TextStyle(fontSize: 72, color: Color.fromARGB(
      255, 107, 135, 98), fontFamily: 'plantype');
  final textFieldStyle = const TextStyle(fontSize: 24.0, color: Color.fromARGB(255, 62, 81, 56), fontFamily: 'segoeui');
  Color greenPrim = Color.fromARGB(255, 107, 135, 98);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 225, 225),
      body: new Center(

        child: SingleChildScrollView(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child: Text('GIFTHUB', textAlign: TextAlign.center, style: logoText),
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 130),
                  width: 345.0,
                  child: new TextFormField(
                    decoration: new InputDecoration(labelText: "Email",
                        fillColor: Color.fromARGB(255, 196, 196, 196),
                        filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none)),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 62, 81, 56))
                    ),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    style: textFieldStyle,
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 30),
                  width: 345.0,
                  child: new TextFormField(
                    obscureText: true,
                    cursorColor: Colors.white,
                    decoration: new InputDecoration(labelText: "Пароль",fillColor: Color.fromARGB(
                        255, 196, 196, 196), filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none),),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 62, 81, 56))
                    ),

                    style: textFieldStyle,

                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: greenPrim,
                        minimumSize: Size(190, 50)
                    ),
                    onPressed: () {},
                    child: Text("Войти", style: TextStyle(fontFamily: 'segoeui', fontSize: 20),),
                  ),
                ),
                new Container (
                    padding: EdgeInsets.only(top: 10),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Color.fromARGB(255, 89, 112, 82),
                            textStyle: TextStyle(fontFamily: 'fabergeregular', fontSize: 20)
                        ),
                        onPressed: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegistrationForUser()),
                        );},
                        child: Text("Ещё нет аккаунта? \n Зарегестрироваться", textAlign: TextAlign.center,))
                ),
                new Container (
                    padding: EdgeInsets.only(top: 10),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Color.fromARGB(255, 89, 112, 82),
                            textStyle: TextStyle(fontFamily: 'fabergeregular', fontSize: 20)
                        ),
                        onPressed: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegistrationForSeller()),
                        );},
                        child: Text("Регистрация для продавцов", textAlign: TextAlign.center,))
                )
              ],
            )
        ),
      ),);

  }
}



