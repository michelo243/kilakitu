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
                        SizedBox(height: 20.0),
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
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          alignment: Alignment(1.0, 0.0),
                          padding: EdgeInsets.only(top:15.0,left:20.0),
                          child: InkWell(
                            child: Text('Forgot Password',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontFamily: 'GoogleSans',
                              decoration: TextDecoration.underline
                              ),
                          ),
                        ),
                        ),
                        SizedBox(height: 40.0),
                        Container(
                            height: 40.0,
                            child:Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.blueAccent,
                                color: Colors.blueGrey,
                                elevation: 7.0,
                                child: GestureDetector(
                                  onTap:(){

                                  },
                                  child: Center(
                                    child:Text('Login', style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'GoogleSans',
                                        fontSize: 20.0
                                    ),
                                    ),
                                  ),
                                ),
                            ),
                        ),
                        SizedBox(height:20.0 ),
                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: ImageIcon(
                                    AssetImage('assets/google.png')
                                    )
                                    ),
                                SizedBox(width: 10.0),
                                Center(
                                  child: Text('Log In with Google',
                                  style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'GoogleSans'
                                  ),
                                  ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                     ],
                   ),
                 )
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New to KilaKitu App ?',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 15.0),
                InkWell(
                  onTap: (){},
                  child:Text('Register',
                  style:TextStyle(
                    color: Colors.blueAccent,
                    fontFamily:'GoogleSans',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                  )
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}
