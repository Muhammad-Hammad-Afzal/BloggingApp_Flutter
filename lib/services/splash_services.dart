import 'dart:async';

import 'package:blogging/views/home.dart';
import 'package:blogging/views/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class SplashServices{
  final _auth = FirebaseAuth.instance;
  void IsLogin(BuildContext context){
    final user = _auth.currentUser;
    if(user != null){
      Timer(Duration(seconds: 3), () {
        Navigator.pushNamed(context, HomeScreen.id);
      });
    }else{
      Timer(Duration(seconds: 3), () {
        Navigator.pushNamed(context, LoginScreen.id);
      });
    }
  }
}