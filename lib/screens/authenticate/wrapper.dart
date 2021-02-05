import 'package:chizchat/screens/authenticate/authenticate.dart';
import 'package:chizchat/screens/home/home.dart';
import 'package:flutter/material.dart';


class Wrapper extends StatelessWidget {
  get googleUser => null;

  @override
  Widget build(BuildContext context) {
    if (googleUser == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}


// var googleUser = FirebaseAuth.instance.currentUser.uid;