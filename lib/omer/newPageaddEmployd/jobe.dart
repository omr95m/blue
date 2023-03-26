import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class jobe extends StatelessWidget {
  const jobe({
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
            hintText: " المسمى الوظيفي",
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
