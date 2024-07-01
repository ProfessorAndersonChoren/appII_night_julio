import 'package:flutter/material.dart';
import 'package:parking/screens/home/home.dart';
import 'package:parking/screens/new_ticket/new_ticket.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => const Home(),
        'new_ticket': (context) => const NewTicket(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
