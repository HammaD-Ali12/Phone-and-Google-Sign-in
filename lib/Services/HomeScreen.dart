import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:otp_verification/Services/GoogleAuth/GoogleSignIn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome"),
            SizedBox(
              height: 20,
            ),
            Text("${FirebaseAuth.instance.currentUser!.displayName}"),
            ElevatedButton(
              onPressed: () async {
                await FirebaseServices().SignOut();
                Navigator.pushNamed(context, 'phone');
              },
              child: Text("Logout From Google"),
            )
          ],
        ),
        // child: Text("Welcome Buddy"),
      ),
    );
  }
}
