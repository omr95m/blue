// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class confirm extends StatelessWidget {
  const confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            )
          ],
          elevation: 6,
          backgroundColor: Colors.white,
          title: const Text(
            "تاكيد طلب الحساب",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.list,
            color: Colors.black,
          ),
          // iconTheme: IconThemeData(color: Colors.grey
        ),
        endDrawer: const Drawer(),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Card(
                        elevation: 10,
                        child: Container(
                          height: 200,
                          width: 370,
                          padding: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: Column(
                            children: [
                              const Icon(Icons.home),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 75,
                                  ),
                                  const Text("5.093.000.000",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500)),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    alignment: Alignment.bottomCenter,
                                    height: 20,
                                    child: const Text(
                                      "IQD",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                // ignore: sort_child_properties_last
                                child: const Text(
                                  "إرسال طلب الحساب",
                                  style: TextStyle(fontSize: 14),
                                ),
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    elevation: 2,
                                    backgroundColor:
                                        const Color.fromARGB(255, 20, 161, 25)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextButton(
                                // ignore: sort_child_properties_last
                                child: const Text(
                                  "تم إستلام الحوالة ",
                                  style: TextStyle(fontSize: 14),
                                ),
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    elevation: 2,
                                    backgroundColor:
                                        const Color.fromARGB(255, 243, 33, 33)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("هل لديك استفسار عن المبلغ اعلاه؟"),
                      const SizedBox(
                        height: 5,
                      ),
                      Card(
                        elevation: 20,
                        child: SizedBox(
                          height: 180,
                          width: 350,
                          child: TextFormField(
                            cursorColor: Colors.grey,
                            maxLines: 7,
                            textAlign: TextAlign.end,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                // labelText: "اكتب هنا الاستفسار",
                                hintText: "اكتب استفسارك",
                                prefixStyle: TextStyle()),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "إن كان لديك استفسار عن قيمة المبلغ أعلاه .الرجاء كتابة استفسارك في الخانة ومن ثم الضغط على زر إرسال الإستفسار ",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 20,
                        child: TextButton(
                          // ignore: sort_child_properties_last
                          child: const Text(
                            "أرسل استفسارك",
                            style: TextStyle(fontSize: 12),
                          ),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              elevation: 2,
                              backgroundColor: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
