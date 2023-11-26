import 'package:belajar_firebase/screen/dashboard/tambah/tambah_data_screen.dart';
import 'package:belajar_firebase/screen/login/login_screen.dart';
import 'package:belajar_firebase/utils/navigate_utils.dart';
import 'package:belajar_firebase/utils/position_utils.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            V(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      navigatePush(context, TambahDataScreen());
                    },
                    child: Text("Tambah data"))
              ],
            ),
            V(24),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return Card(
                        child: ListTile(
                      title: Text("Hello $index"),
                      trailing: Container(
                        width: 96,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.edit)),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.remove)),
                            ]),
                      ),
                    ));
                  })),
            )
          ],
        ),
      ),
    );
  }
}
