import 'package:flutter/material.dart';
import 'package:logingoogle/loginGoogle/login_state.dart';
import 'package:provider/provider.dart';
class Home0 extends StatefulWidget {
  @override
  _Home0State createState() => _Home0State();
}

class _Home0State extends State<Home0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text('entro')),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              color: Colors.purple,
              child: Text('salir'),
            ),
            onTap: (){
              Provider.of<LoginEstado>(context,listen: false).logout();
            },
          )
        ],
      ),
    );
  }
}