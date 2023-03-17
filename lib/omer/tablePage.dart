import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class table extends StatelessWidget {
  const table({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.grey),
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "تقارير الحوالات",
          style: const TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 52, 51, 51)),
        ),
        leading: const Icon(
          Icons.list_alt,
          color: Colors.blue,
        ),
      ),
      endDrawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  // shadowColor: Colors.black,
                  elevation: 10,
                  child: SizedBox(
                    height: 29,
                    width: 350,
                    child: Text(
                        textAlign: TextAlign.right, "البحث عن الحوالة المنجزة"),
                  ),
                )
              ],
            ),
            DataTable(
              columns: const [
                DataColumn(
                  label: Text('رقم الحوالة'),
                ),
                DataColumn(
                  label: Text('التاريخ'),
                ),
                DataColumn(
                  label: Text('قيمةالمبلغ'),
                ),
                DataColumn(
                  label: Text('حالة الحساب'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(Text('123567')),
                    DataCell(Text('07-02-2023')),
                    DataCell(Text('44,000')),
                    DataCell(Text('قيد التوصيل')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('123567')),
                    DataCell(Text('07-02-2023')),
                    DataCell(Text('44,000')),
                    DataCell(Text('قيد التوصيل')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('123567')),
                    DataCell(Text('07-02-2023')),
                    DataCell(Text('44,000')),
                    DataCell(Text('قيد التوصيل')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('123567')),
                    DataCell(Text('07-02-2023')),
                    DataCell(Text('44,000')),
                    DataCell(Text('قيد التوصيل')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('123567')),
                    DataCell(Text('07-02-2023')),
                    DataCell(Text('44,000')),
                    DataCell(Text('قيد التوصيل')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('123567')),
                    DataCell(Text('07-02-2023')),
                    DataCell(Text('44,000')),
                    DataCell(Text('قيد التوصيل')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('123567')),
                    DataCell(Text('07-02-2023')),
                    DataCell(Text('44,000')),
                    DataCell(Text('قيد التوصيل')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
