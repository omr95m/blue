import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class salory extends StatelessWidget {
  const salory({
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
            hintText: " الراتب",
            hintStyle: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
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
