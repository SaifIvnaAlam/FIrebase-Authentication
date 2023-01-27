import 'dart:js_util';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CollectionReference _products =
      FirebaseFirestore.instance.collection("products");

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
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: Center(
          child: Text("Home page"),
        )
        // StreamBuilder(
        //   stream: _products.snapshots(),
        //   builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        //     if (streamSnapshot.hasData) {
        //       return ListView.builder(
        //           itemCount: streamSnapshot.data!.docs.length,
        //           itemBuilder: (context, index) {
        //             final DocumentSnapshot documentSnapshot =
        //                 streamSnapshot.data!.docs[index];
        //             return Card(
        //               child: ListTile(
        //                 title: Text(documentSnapshot['name']),
        //                 subtitle: Text(documentSnapshot['price'].toString()),
        //               ),
        //             );
        //           });
        //     } else {
        //       return const Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     }
        //   },
        // ),
        );
  }
}
