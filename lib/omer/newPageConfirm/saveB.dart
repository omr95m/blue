import 'package:flutter/material.dart';

// ignore: camel_case_types
class saveB extends StatelessWidget {
  const saveB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.25,
      child: TextButton(
        // ignore: sort_child_properties_last
        child: const Text(
          "حفظ ",
          style: TextStyle(fontSize: 14),
        ),
        onPressed: () {},
        style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            elevation: 2,
            backgroundColor: const Color.fromARGB(255, 33, 44, 243)),
      ),
    );
  }
}
