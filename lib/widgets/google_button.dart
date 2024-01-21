import 'package:flutter/material.dart';

Widget GoogleButton({
  required Function function,
}) {
  return ElevatedButton(
    onPressed: () {
      function();
    },
    child: Container(
      width: 200,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          SizedBox(
            child: Image.asset(
              'assets/images/google_icon.png',
              width: 30,
              height: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Expanded(
            child: Text(
              'Google Sign-In',
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    ),
  );
}
