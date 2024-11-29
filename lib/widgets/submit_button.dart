// ignore_for_file: avoid_print

import 'package:bloc_application_test/blocs/bloc.dart';
import 'package:flutter/material.dart';

Widget submitButton(BuildContext context, Bloc bloc) {
  return StreamBuilder(
    stream: bloc.submitValid,
    builder: (context, snapshot) {
      return ElevatedButton(
        onPressed: snapshot.hasData
            ? bloc.submit
            : null,
        style: ButtonStyle(
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          ),
          fixedSize: MaterialStatePropertyAll(
            Size.fromWidth(MediaQuery.of(context).size.width),
          ),
          backgroundColor: MaterialStatePropertyAll(
            snapshot.hasData ? const Color(0xFF16423C) : Colors.grey,
          ),
        ),
        child: Text(
          "Submit",
          style: TextStyle(
            fontSize: 16,
            color: snapshot.hasData
                ? const Color(0xFFC4DAD2)
                : const Color.fromARGB(255, 75, 75, 75),
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    },
  );
}
