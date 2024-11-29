import 'package:bloc_application_test/blocs/provider.dart';
import 'package:flutter/material.dart';
import 'package:bloc_application_test/widgets/email_field.dart';
import 'package:bloc_application_test/widgets/password_field.dart';
import 'package:bloc_application_test/widgets/submit_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            emailField(bloc),
            SizedBox(height: 16, width: MediaQuery.of(context).size.width),
            passwrodField(bloc),
            SizedBox(height: 24, width: MediaQuery.of(context).size.width),
            submitButton(context, bloc)
          ],
        ),
      ),
    );
  }
}