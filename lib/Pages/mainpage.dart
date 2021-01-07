import 'package:Aug18/Pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:Aug18/teks.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 55, 92, 1),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0,),
            FlatButton.icon(
              onPressed: (){
                Navigator.pop(context, ScaleRoute(page: LoginPage()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(212, 168, 11, 1),
                size: 30.0,
                ),
              label: Text('')
            ),
          SizedBox(height: 20.0,),
          Row(
            children: [
              SizedBox(width:60.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CostumText('ATS', 24.0, 3.0), 
                  CostumText('Control and Monitoring', 24.0, 3.0),
                  CostumText('Application', 24.0, 0.0)                                     
                    ],

              ),
              Container(
                padding: EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  'assets/Group.png',
                  width: 80.0,
                  height: 80.0,
                  color: Color.fromRGBO(212, 168, 11, 1),
                )
              ),
            ],
          ),
          SizedBox(height: 40.0,),
          Center(
            child: Container(
              width: 380,
              height: 200,
              color: Colors.white38,
            ),
          ),
          SizedBox(height: 25.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CostumText('712', 70, 0.0),
                  CostumText('VOLT', 20, 0.0),
                ],
              ),
              Column(
                children: [
                  CostumText('712', 70, 0.0),
                  CostumText('WATT', 20, 0.0),
                ],
              ),
              Column(
                children: [
                  CostumText('712', 70, 0.0),
                  CostumText('AMPERE', 20, 0.0),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CostumText('712', 70, 0.0),
                  CostumText('WATT/HOUR', 20, 0.0),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:[
                Container(
                  height: 50.0,
                  width: 200.0,
                  child: Text('100%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromRGBO(244, 246, 255, 0.8),
                    fontSize: 50.0)),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.1,0.4],
                        colors: [Color.fromRGBO(142, 255, 89, 0), Color.fromRGBO(142, 255, 89, 0.8) ],
                        ),
                        ),
                    ),
                CostumText('Persentase Baterai', 20.0, 0.0)
              ],
              ),
            ],
          ),
          SizedBox(height: 25.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                height: 50,
                child: RaisedButton(
                  onPressed: (){}, 
                  color: Color.fromRGBO(212, 168, 11, 1),
                  textColor: Color.fromRGBO(244, 246, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      'PLN', 
                      style: TextStyle(fontSize: 20.0)),
                      )      
                ),
                Container(
                width: 130,
                height: 50,
                child: RaisedButton(
                  onPressed: (){}, 
                  color: Color.fromRGBO(212, 168, 11, 1),
                  textColor: Color.fromRGBO(244, 246, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      'AUTO', 
                      style: TextStyle(fontSize: 20.0)),
                      )      
                ),
            ],
          ),
      ],
        ),
      ),
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