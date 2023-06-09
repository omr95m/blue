import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'omer/_NewUserCard/newUserCard.dart';
import 'omer/bross.dart';
import 'omer/cargoCompany.dart';
import 'omer/confirmPage.dart';
import 'omer/newPageConfirm/home2.dart';
import 'omer/newPageaddEmployd/home.dart';
import 'omer/tablePage.dart';
import 'omer/userDataCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lotusmy Blue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home(
        title: '',
      ),
    );
  }
}
