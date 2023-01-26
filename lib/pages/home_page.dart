import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
