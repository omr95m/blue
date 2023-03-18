import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class userCard extends StatelessWidget {
  List uimg = [
    "images/1.png",
    "images/1.png",
    "images/1.png",
    "images/1.png",
    "images/1.png",
    "images/1.png",
    "images/1.png",
    "images/1.png"
  ];
  List name = [
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح",
    "احمد الصالح"
  ];
  List country = [
    "فلسطين",
    "فلسطين",
    "فلسطين",
    "فلسطين",
    "فلسطين",
    "فلسطين",
    "فلسطين",
    "فلسطين"
  ];
  List price = [
    " 8500",
    " 8500",
    " 8500",
    " 8500",
    " 8500",
    " 8500",
    " 8500",
    " 8500",
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
  userCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.person,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "إدارة الموظفين",
          style: TextStyle(color: Colors.grey),
        ),
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      endDrawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
        child: GridView.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 10,
              mainAxisExtent: 260,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.48,
                width: MediaQuery.of(context).size.width * 0.40,
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(uimg[index]),
                        ),
                        Text(
                          name[index],
                        ),
                        Text(
                          country[index],
                        ),
                        Text("كول سنتر"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                        const Text('كشف حساب'),
                        const SizedBox(
                          height: 3,
                        ),
                        TextButton(
                          // ignore: sort_child_properties_last
                          child: const Text(
                            "كشف حساب",
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
//  Card(
              //   elevation: 10,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Column(
              //       children: [
              //         CircleAvatar(
              //             radius: 30, backgroundImage: AssetImage(uimg[index])),
              //         Text(
              //           name[index],
              //           style: const TextStyle(fontSize: 20),
              //         ),
              //         Text(
              //           country[index],
              //           style: const TextStyle(fontSize: 15),
              //         ),
              //         const Text(
              //           "كول سنتر",
              //           style: TextStyle(fontSize: 15),
              //         ),
              //         Row(
              //           children: [
              //             const SizedBox(
              //               width: 50,
              //             ),
              //             Text(
              //               coin[index],
              //               style: const TextStyle(fontSize: 15),
              //             ),
              //             const SizedBox(
              //               width: 3,
              //             ),
              //             Text(
              //               price[index],
              //               style: const TextStyle(
              //                 fontSize: 15,
              //                 decoration: TextDecoration.underline,
              //               ),
              //             ),
              //           ],
              //         ),
              //         Text(
              //           date[index],
              //           style: const TextStyle(fontSize: 15),
              //         ),
              //         const SizedBox(
              //           height: 3,
              //         ),
              //         TextButton(
              //           // ignore: sort_child_properties_last
              //           child: const Text(
              //             "كشف حساب",
              //             style: TextStyle(fontSize: 14),
              //           ),
              //           onPressed: () {},
              //           style: TextButton.styleFrom(
              //               foregroundColor: Colors.white,
              //               elevation: 2,
              //               backgroundColor:
              //                   const Color.fromARGB(255, 33, 44, 243)),
              //         ),
              //       ],
              //     ),
              //   ),
              // );