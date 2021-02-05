import 'package:chizchat/screens/authenticate/wrapper.dart';
import 'package:chizchat/screens/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
       value: AuthService().currentUser,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
