import 'package:flutter/material.dart';

const kPrimaryColorOne = Color.fromARGB(255, 31, 31, 31);
const kPrimaryColorTwo = Colors.blueAccent;

const kTextFormFieldDecoration = InputDecoration(
  labelText: 'Email',
  labelStyle: TextStyle(color: kPrimaryColorTwo),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColorTwo),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColorTwo),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColorTwo),
  ),
  prefixIcon: Icon(
    Icons.email,
    color: kPrimaryColorTwo,
  ),
);
