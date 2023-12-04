import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.googleUser}) : super(key: key);
  final GoogleSignInAccount? googleUser;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> getBody() {
    return [
      ListTile(
        leading: GoogleUserCircleAvatar(
          identity: widget.googleUser!,
        ),
        title: Text(widget.googleUser!.displayName ?? ''),
        subtitle: Text(widget.googleUser!.email),
      ),
      Text(FirebaseAuth.instance.currentUser!.uid),
      ElevatedButton(
        onPressed: _handleLogout,
        child: const Text("Logout"),
      ),
    ];
  }

  void _handleLogout() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();

    // Navigate back to the signup page
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: getBody(),
          ),
        ),
      ),
    );
  }
}
