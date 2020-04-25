import 'package:flutter/material.dart';
import 'package:logingoogle/auth_service.dart';
import 'package:logingoogle/home/home0.dart';
import 'package:logingoogle/loginGoogle/login_state.dart';
import 'package:logingoogle/loginGoogle/loginpage.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  bool sw=false;
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider<LoginEstado>(
      create: (BuildContext context)=>LoginEstado(),
          child: MaterialApp(
            initialRoute: 'auth',
        routes: {
          'auth':(BuildContext context)=>SignInDemo(),
          '/':(BuildContext context){
            var state=Provider.of<LoginEstado>(context);
            if(state.isLogin()){
              return Home0();
            }
            else{
              return LoginPage();
            }

          },
          //
        },
      ),
    );
  }
}