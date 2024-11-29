import 'package:flutter/material.dart';
import 'package:bloc_application_test/screen/login_screen.dart';
import 'blocs/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
