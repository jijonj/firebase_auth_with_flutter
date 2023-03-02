import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child:
            ElevatedButton(onPressed: () => signOut(), child: Text("Log Out")),
      ),
    );
  }
}

Future<void> signOut() async {
  try {
    await FirebaseAuth.instance.signOut();
    print("Signed out of temporary account.");
  } on FirebaseAuthException catch (e) {
    print("Error : " + e.toString());
  }
}
