import 'package:flutter/material.dart';
import 'package:gbx_login/gbx_login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Expanded(
          child: Center(
            child: Text("HOME"),
          ),
        ),
        SafeArea(
            child: TextButton(
          child: const Text("LogOut"),
          onPressed: LoginModule.instance.signOut,
        ))
      ],
    ));
  }
}
