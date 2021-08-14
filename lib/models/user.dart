import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String password;

  const User({
    this.id = '1',
    required this.email,
    required this.name,
    required this.password,
  });
}