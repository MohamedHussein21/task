
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogeInOne extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return LogeState();
  }

}
class LogeState extends State<LogeInOne> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: null,
            backgroundColor: Colors.white,
            body: Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 70)),
                        Expanded(
                            child: Text("LOGIN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                              textAlign: TextAlign.center,
                            )
                        )
                      ],
                    ),

                    Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blue
                                    ),
                                    child: Center(

                                      child:
                                      Text("Facebook", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),)
                                      ,
                                    ),
                                  )),
                              Container(width: 30,
                                padding: EdgeInsets.only(left: 30, right: 30)

                                ,),

                              Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 30),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.blue
                                    ),
                                    child: Center(
                                      child: Text("twitter", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),),
                                    ),
                                  )),
                            ])),
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Expanded(
                            child: Text("OR",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.center,
                            )
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                    ),
                    Column(
                      children: <Widget>[
                        TextFormField(
                          key: Key('Username'),
                          controller: _usernameController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person_outline),
                            border: OutlineInputBorder(),
                            hintText: 'Username',
                          ),
                        ),
                        SizedBox(
                          height: 10,),
                        TextFormField(
                          key: Key('Password'),
                          controller: _passwordController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                            hintText: "Password",
                          ),

                        )

                      ],
                    ),
                    Container(margin: EdgeInsets.only(top: 20),),
                    Column(
                      children: <Widget>[
                        Text("Forget Password?",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.cyan
                            ),
                            child: Center(
                              child: Text("LOGIN", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                            ),
                          ),
                        )
                      ],
                    )

                  ],
                )
            )));
  }

}