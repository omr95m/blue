import 'package:flutter/material.dart';

// ignore: camel_case_types
class userN_3 extends StatelessWidget {
  const userN_3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Card(
        elevation: 10,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: " سبب الخصم",
            hintStyle: TextStyle(color: Colors.black),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.blue)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          ),
          textAlign: TextAlign.end,
          cursorColor: Colors.grey,
        ),
      ),
    );
  }
}
