import 'package:chizchat/screens/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Chiz'),
          backgroundColor: Colors.blueAccent,
          actions: [
            FlatButton.icon(
              icon: Icon(Icons.person),
            label: Text('Logout'),
            onPressed: () async {
              await _auth.signOut();
            },
            ),
          ],
        ),
      ),
    );
  }
}
