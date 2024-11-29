import 'package:bloc_application_test/blocs/bloc.dart';
import 'package:flutter/material.dart';

Widget passwrodField(Bloc bloc) {
  return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot) {
      return TextField(
        onChanged: bloc.changePassword,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF16423C),
          fontWeight: FontWeight.normal,
        ),
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(width: 1, color: Color(0xFF16423C))),
          filled: true,
          fillColor: const Color(0xFFE9EFEC),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          prefixIcon: const Icon(Icons.password),
          prefixIconColor: const Color(0xFF6A9C89),
          labelText: 'Password',
          labelStyle: const TextStyle(
            fontSize: 24,
            color: Color(0xFF16423C),
            fontWeight: FontWeight.bold,
          ),
          hintText: 'enter your password',
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Color(0xFFC4DAD2),
            fontWeight: FontWeight.normal,
          ),
          errorText: snapshot.error?.toString()
        ),
      );
    },
  );
}
