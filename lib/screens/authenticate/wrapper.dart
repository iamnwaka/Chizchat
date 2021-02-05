import 'package:chizchat/screens/authenticate/authenticate.dart';
import 'package:chizchat/screens/home/home.dart';
import 'package:flutter/material.dart';


class Wrapper extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    if (user== null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}


// var googleUser = FirebaseAuth.instance.currentUser.uid;