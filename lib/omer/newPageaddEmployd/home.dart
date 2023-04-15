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

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key, required this.title});
  final String title;

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String? selectedjob = "الدرجة الوظيفية";

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // ignore: prefer_typing_uninitialized_variables
  var country;
  bool? uae = false;
  bool? irq = false;
  bool? oman = false;
  bool? qatar = false;
  bool? libea = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
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
              const cv(),
              const photo(),
              const name(),
              const number(),
              const nationalety(),
              const phonenumber(),
              const adress(),
              const salory(),
              const study(),
              const email(),
              const jobe(),

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
                        const Text("ذكر"),
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
                        const Text("مخصص"),
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
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(7)),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.42,
                      child: TextField(
                        textAlign: TextAlign.center,

                        maxLines: 1,
                        style: const TextStyle(fontSize: 17),
                        // textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: "اكتب كلمة المرور",
                          filled: true,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          fillColor:
                              Theme.of(context).inputDecorationTheme.fillColor,
                          contentPadding: EdgeInsets.zero,
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
                          child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          dropdownColor: Colors.grey,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                          hint: const Text(
                            "الدرجة الوظيفية",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          items: [
                            "الدرجة الوظيفية",
                            "مدير تنفيذي",
                            "محاسب",
                            "كول سنتر",
                            "محاسبة"
                          ]
                              .map((e) => DropdownMenuItem(
                                    child: Text("$e"),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              selectedjob = val;
                            });
                          },
                          value: selectedjob,
                        ),
                      )),
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
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 24, bottom: 8),
                child: Row(
                  children: [
                    Card(
                      elevation: 7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7)),
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.10,
                        child: Center(
                          child: IconButton(
                              onPressed: () => _selectDate(context),
                              icon: const Icon(
                                Icons.date_range,
                                size: 20,
                                color: Color.fromARGB(255, 55, 54, 54),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text("تاريخ الانضمام"),
                    const SizedBox(
                      width: 30,
                    ),
                    Card(
                      elevation: 7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7)),
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.10,
                        child: Center(
                          child: IconButton(
                              onPressed: () => _selectDate(context),
                              icon: const Icon(
                                Icons.date_range,
                                size: 20,
                                color: Color.fromARGB(255, 55, 54, 54),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text("تاريخ الميلاد"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("الإمارات"),
                  Checkbox(
                      value: uae,
                      onChanged: (val) {
                        setState(() {
                          uae = val;
                        });
                      }),
                  const Text("العراق"),
                  Checkbox(
                      value: irq,
                      onChanged: (val) {
                        setState(() {
                          irq = val;
                        });
                      }),
                  const Text("سلطنة عمان"),
                  Checkbox(
                      value: oman,
                      onChanged: (val) {
                        setState(() {
                          oman = val;
                        });
                      }),
                  const Text("قطر"),
                  Checkbox(
                      value: qatar,
                      onChanged: (val) {
                        setState(() {
                          qatar = val;
                        });
                      }),
                  const Text("ليبيا"),
                  Checkbox(
                      value: libea,
                      onChanged: (val) {
                        setState(() {
                          libea = val;
                        });
                      }),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
