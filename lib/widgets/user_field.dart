import 'package:flutter/material.dart';

Widget UserField({
  required String field,
  required String value,
}) {
  return Column(
    children: [
      Row(
        children: [
          Text(
            '${field}:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10,),
          Text(value),
        ],
      ),
    ],
  );
}
