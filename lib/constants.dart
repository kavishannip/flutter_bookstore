import 'package:flutter/material.dart';

const kBookTitleStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 39, 39, 39),
);

const kAuthorStyle = TextStyle(
  fontSize: 16,
  fontStyle: FontStyle.italic,
  color: Color.fromARGB(255, 129, 129, 129),
);

const kPriceStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final kButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
);

const kAppbarTitle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.white, // Title color
);
