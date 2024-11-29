import 'package:flutter/material.dart';
import 'package:bloc_application_test/blocs/bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({super.key, required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static Bloc of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<Provider>();
    if (provider == null) {
      throw FlutterError('Provider.of() called with a context that does not contain a Provider.');
    }
    return provider.bloc;
  }
}
