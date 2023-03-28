import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class cv extends StatelessWidget {
  const cv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.087,
            width: MediaQuery.of(context).size.width * 0.72,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.5),
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(7), bottomLeft: Radius.circular(7)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: const Text(
              textAlign: TextAlign.end,
              "CVصورة",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.087,
            width: MediaQuery.of(context).size.width * 0.22,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.5),
              color: const Color.fromRGBO(233, 228, 228, 1),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: const Center(
              child: Text(
                "Browse",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );

    //
  }
}
//  Container(
//   decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
//   height: 50,
//   width: MediaQuery.of(context).size.width * 0.95,
//   child: Card(
//     elevation: 10,
//     child: TextFormField(
//       decoration: InputDecoration(
//         hintText: "CV صورة",
//         hintStyle: const TextStyle(
//             color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
//         focusedBorder: const OutlineInputBorder(
//             borderSide: BorderSide(width: 1, color: Colors.blue)),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
//       ),
//       textAlign: TextAlign.end,
//       cursorColor: Colors.grey,
//     ),
//   ),
// );
