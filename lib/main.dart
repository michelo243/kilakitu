import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // to do an automatic reagement
      resizeToAvoidBottomPadding: false,
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Container(
              child:Stack(
                children:<Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    child:Text(
                      'Bienvenue',
                      style:TextStyle(
                        fontSize: 50.0,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                    child:Text(
                      'KilaKitu',
                      style:TextStyle(
                        fontSize: 70.0,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(270.0, 175.0, 0.0, 0.0),
                    child:Text(
                      '.',
                      style:TextStyle(
                        fontSize: 70.0,fontWeight: FontWeight.bold,color: Colors.blueAccent
                      ),
                    ),
                  ),
                 Container(
                   padding: EdgeInsets.only(top:320.0, left:20.0, right:20.0,),
                   child: Column(
                     children:<Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            labelStyle: TextStyle(
                              fontFamily: 'GoogleSans',
                              fontWeight: FontWeight.bold,
                              color:Colors.blueGrey
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Colors.blueGrey)
                            ),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontFamily: 'GoogleSans',
                              fontWeight: FontWeight.bold,
                              color:Colors.blueGrey
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Colors.blueGrey)
                            )
                          ),
                          obscureText: true,
                        )
                     ],
                   ),
                 )
                ],
              ),
            )
          ],
        )
    );
  }
}
