import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_signin_without_fb/widgets/google_button.dart';
import 'package:google_signin_without_fb/widgets/user_field.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? email = '';

  String? username = '';

  void googleSignIn() async {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: <String>[
        'email',
      ],
    );

    var googleUser = await (googleSignIn.signIn());

    setState(() {
      email = googleUser!.email;
      username = googleUser.displayName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserField(field: 'Email', value: email!),
              UserField(field: 'Username', value: username!),
              const SizedBox(
                height: 20,
              ),
              GoogleButton(function: googleSignIn),
            ],
          ),
        ),
      ),
    );
  }
}
