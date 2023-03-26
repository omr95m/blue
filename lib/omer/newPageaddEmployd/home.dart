import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:team/omer/newPageaddEmployd/phonenNmber.dart';
import 'package:team/omer/newPageaddEmployd/photo.dart';
import 'package:team/omer/newPageaddEmployd/salory.dart';
import 'package:team/omer/newPageaddEmployd/study.dart';

import 'adress.dart';
import 'cv.dart';
import 'email.dart';
import 'jobe.dart';
import 'name.dart';
import 'nationalety.dart';
import 'number.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          "إضافة موظفين",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: const Icon(Icons.person_add_alt),
        actions: const [Icon(Icons.add_a_photo_outlined)],
      ),
      body: ListView(
        children: [
          // ignore: prefer_const_literals_to_create_immutables
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.0, right: 8, left: 8),
                child: cv(),
              ),
              const photo(),
              const name(),
              number(),
              nationalety(),
              phonenumber(),
              adress(),
              salory(),
              study(),
              email(),
              jobe(),

              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(7)),
                height: 50,
                width: MediaQuery.of(context).size.width * 0.40,
                child: Card(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                            value: "ذكر",
                            groupValue: country,
                            onChanged: (val) {
                              setState(() {
                                country = val;
                              });
                            }),
                        Text("ذكر"),
                      ],
                    ),
                  ),
                  elevation: 10,
                ),
              ),
              //Radio2:
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(7)),
                height: 50,
                width: MediaQuery.of(context).size.width * 0.40,
                child: Card(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                            value: "انثى",
                            groupValue: country,
                            onChanged: (val) {
                              setState(() {
                                country = val;
                              });
                            }),
                        const Text("انثى"),
                      ],
                    ),
                  ),
                  elevation: 10,
                ),
              ),
              //Radio3:
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(7)),
                height: 50,
                width: MediaQuery.of(context).size.width * 0.40,
                child: Card(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                            value: "مخصص",
                            groupValue: country,
                            onChanged: (val) {
                              setState(() {
                                country = val;
                              });
                            }),
                        Text("مخصص"),
                      ],
                    ),
                  ),
                  elevation: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, right: 20, left: 20, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(7)),
                      child: const Center(
                        child: Text(
                          "كلمة المرور",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 70, 67, 67)),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              "الدرجة الوظيفية",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(7)),
                    child: const Center(
                      child: Text(
                        "حفظ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
