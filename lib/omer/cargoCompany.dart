import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cargo extends StatelessWidget {
  List country = [
    "العراق",
    "العراق",
    "العراق",
    "العراق",
    "العراق",
    "العراق",
    "العراق",
    "العراق"
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
  List cargocompany = [
    'شركة توصيل',
    'شركة توصيل',
    'شركة توصيل داخلي',
    'شركة توصيل داخلي',
    'شركة توصيل داخلي',
    'شركة توصيل',
    'شركة توصيل داخلي',
    'شركة توصيل',
  ];
  cargo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.home,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "إدارة شركات التوصيل",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      endDrawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
        child: GridView.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 4,
                mainAxisExtent: 240),
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("images/2.png")),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "شركة صندوق",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Text(
                        country[index],
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        date[index],
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Text(
                        cargocompany[index],
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      TextButton(
                        // ignore: sort_child_properties_last
                        child: const Text(
                          "أرشيف الحسابات",
                          style: TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            elevation: 2,
                            backgroundColor:
                                const Color.fromARGB(255, 33, 44, 243)),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
