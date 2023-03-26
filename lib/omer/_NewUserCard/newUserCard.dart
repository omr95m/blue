import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  List names = [
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
  ];
  List country = [
    "فلسطين",
    "فلسطين",
    "فلسطين",
    "فلسطين",
    "فلسطين",
    "فلسطين",
    "فلسطين",
    "فلسطين",
  ];
  List coin = [
    "TL",
    "TL",
    "TL",
    "TL",
    "TL",
    "TL",
    "TL",
    "TL",
  ];
  List price = [
    "8500",
    "8500",
    "8500",
    "8500",
    "8500",
    "8500",
    "8500",
    "8500",
  ];
  List date = [
    "20-8-2022",
    "20-8-2022",
    "20-8-2022",
    "20-8-2022",
    "20-8-2022",
    "20-8-2022",
    "20-8-2022",
    "20-8-2022",
  ];
  MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          "   إدارة الموظفين",
          style: TextStyle(color: Color.fromARGB(255, 59, 55, 55)),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.person_add,
          color: Color.fromARGB(255, 56, 54, 54),
        ),
        actions: const [
          Icon(Icons.photo, color: Color.fromARGB(255, 72, 71, 71))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
        child: GridView.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 10,
              // mainAxisExtent: 270,
            ),
            itemBuilder: (context, index) {
              return Container(
                height:
                    // 200,
                    MediaQuery.of(context).size.height * 0.30,
                width:
                    //  150,
                    MediaQuery.of(context).size.width * 0.35,
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.picture_as_pdf_sharp),
                        Text(
                          names[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                        Text(
                          country[index],
                        ),
                        Text("كول سنتر"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 9,
                            ),
                            Container(
                              color: Colors.white,
                              height: MediaQuery.of(context).size.height * 0.04,
                              // width: MediaQuery.of(context).size.width * 0.1,
                              child: Text(
                                coin[index],
                              ),
                            ),
                            Container(
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width * 0.10,
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                child: Text(
                                  price[index],
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                )),
                          ],
                        ),
                        Text(
                          date[index],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        TextButton(
                          // ignore: sort_child_properties_last
                          child: const Text(
                            " الموظفCV",
                            style: TextStyle(fontSize: 14),
                          ),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              elevation: 2,
                              backgroundColor:
                                  const Color.fromARGB(255, 33, 44, 243)),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
