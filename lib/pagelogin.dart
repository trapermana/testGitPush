import 'package:flutter/material.dart';

class PageLogin extends StatelessWidget {
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
            // padding: EdgeInsets.all(50.0),
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
            // padding: EdgeInsets.all(50.0),
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
              initialValue: 'John Doe',
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(244, 246, 255, 1),
                hintText: 'Username',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28.0),
                  borderSide: BorderSide(color: Color.fromRGBO(212, 168, 11, 1), width: 3.0),
                )
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            
            width: 300,
            child: TextFormField(
              keyboardType: TextInputType.name,
              autofocus: false,
              initialValue: 'John Doe',
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(244, 246, 255, 1),
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28.0),
                  borderSide: BorderSide(color: Color.fromRGBO(212, 168, 11, 1), width: 3.0),
                )
              ),
            ),
          ),
          SizedBox(height: 24.0,),
          // color: Color.fromRGBO(243, 198, 35, 1),
          Container(
            width: 300,
            height: 50,
            child: RaisedButton(
              onPressed: (){}, 
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