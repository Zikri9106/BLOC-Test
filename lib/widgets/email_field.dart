import 'package:flutter/material.dart';
import 'package:bloc_application_test/blocs/bloc.dart';

Widget emailField(Bloc bloc) {
  return StreamBuilder(
    stream: bloc.email,
    builder: (context, snapshot) {
      return TextField(
        onChanged: bloc.changeEmail,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF16423C),
          fontWeight: FontWeight.normal,
        ),
        keyboardType: TextInputType.emailAddress,
        decoration:  InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(width: 1, color: Color(0xFF16423C))),
          filled: true,
          fillColor: const Color(0xFFE9EFEC),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          prefixIcon: const Icon(Icons.person),
          prefixIconColor: const Color(0xFF6A9C89),
          labelText: 'Email Address',
          labelStyle: const TextStyle(
            fontSize: 24,
            color: Color(0xFF16423C),
            fontWeight: FontWeight.bold,
          ),
          hintText: 'enter your email address',
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
