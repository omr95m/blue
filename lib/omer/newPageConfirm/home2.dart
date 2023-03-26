import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:team/omer/newPageConfirm/saveB.dart';
import 'package:team/omer/newPageConfirm/user4.dart';
import 'package:team/omer/newPageConfirm/user5.dart';
import 'package:team/omer/newPageConfirm/user6.dart';
import 'package:team/omer/newPageConfirm/user7.dart';

import 'descount.dart';
import 'discountReson.dart';
import 'name.dart';

class home2 extends StatelessWidget {
  const home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          " تدقيق حسابات الموظفين",
          style: TextStyle(color: Color.fromARGB(255, 59, 55, 55)),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.print,
          color: Color.fromARGB(255, 56, 54, 54),
        ),
        actions: const [
          Icon(Icons.photo, color: Color.fromARGB(255, 72, 71, 71))
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.0, right: 8, left: 8),
                child: const userN_1(),
              ),
              userN_2(),
              userN_3(),
              userN_4(),
              userN_5(),
              userN_6(),
              userN_7(),
              saveB(),
            ],
          )
        ],
      ),
    );
  }
}
