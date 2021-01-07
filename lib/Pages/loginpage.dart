import 'package:flutter/material.dart';
import 'package:Aug18/Pages/mainpage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   final uname = new TextEditingController();
   final pass = new TextEditingController();
  
  String username = 'yudha';
  String password = 'yudha';
  bool gembok = true;

   void _handlePressed() {
    setState(() {
      gembok = !gembok;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 55, 92, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            child: Center(
              child: Image.asset(
                'assets/Group.png',
                width: 100,
                height: 150,
                color: Color.fromRGBO(212, 168, 11, 1),
                // scale: 0.1,
                ),
            ),
          ),
          Container(
            child: Text(
              'ATS CONTROL AND MONITORING',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Asap', 
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(212, 168, 11, 1),
              )
            )
          ),
          Container(
            child: Text(
              'APPLICATION',
              style: TextStyle(
                fontSize: 24.0,
                fontFamily: 'Asap', 
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(212, 168, 11, 1),
              )
            )
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0),
            
            width: 300,
            child: TextFormField(
              keyboardType: TextInputType.name,
              autofocus: false,
              controller: uname,
              decoration: InputDecoration(
                filled: true,
                //suffixIcon: Icon(Icons.lock),
                fillColor: Color.fromRGBO(244, 246, 255, 1),
                hintText: 'Username',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(28.0)),
                  borderSide: BorderSide(color: Color.fromRGBO(212, 168, 11, 1), width: 3.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(28.0)),
                  borderSide: BorderSide(color: Color.fromRGBO(212, 168, 11, 1), width: 3.0),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            
            width: 300,
            child: TextFormField(
              keyboardType: TextInputType.name,
              controller: pass,
              autofocus: false,
              obscureText: gembok,
              decoration: InputDecoration(
                suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: _handlePressed),
                filled: true,
                fillColor: Color.fromRGBO(244, 246, 255, 1),
                hintText: 'Passwords',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(28.0)),
                  borderSide: BorderSide(color: Color.fromRGBO(212, 168, 11, 1), width: 3.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(28.0)),
                  borderSide: BorderSide(color: Color.fromRGBO(212, 168, 11, 1), width: 3.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 24.0,),
          // color: Color.fromRGBO(243, 198, 35, 1),
          Container(
            width: 300,
            height: 50,
            child: RaisedButton(
              onPressed: (){
                if (uname.text==username && pass.text==password) {
                  pass.clear();                
                  FocusScope.of(context).unfocus();
                  Navigator.push(context, ScaleRoute(page: MainPage()));
                } else {
                  pass.clear();
                  uname.clear();
                  FocusScope.of(context).unfocus();
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("User not Exist!!"),
                        );
                      });
                }
                // FocusScope.of(context).unfocus();
                // Navigator.push(context, ScaleRoute(page: MainPage()));
              }, 
              color: Color.fromRGBO(212, 168, 11, 1),
              textColor: Color.fromRGBO(244, 246, 255, 1),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Text(
                 'LOGIN', 
                 style: TextStyle(fontSize: 20.0)),
           )      
          ),
          ],
        ),

      )
    );
  }
}

class ScaleRoute extends PageRouteBuilder {
  final Widget page;
  ScaleRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              ScaleTransition(
                scale: Tween<double>(
                  begin: 0.0,
                  end: 1.0,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves.fastOutSlowIn,
                  ),
                ),
                child: child,
              ),
        );
}

