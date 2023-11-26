import 'package:belajar_firebase/component/input/input_component.dart';
import 'package:belajar_firebase/utils/navigate_utils.dart';
import 'package:belajar_firebase/utils/output_utils.dart';
import 'package:belajar_firebase/utils/position_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TambahDataScreen extends StatelessWidget {
  const TambahDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nama = TextEditingController();
    final TextEditingController nik = TextEditingController();

    final db = FirebaseFirestore.instance;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Data"),
      ),
      body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              V(8),
              InputComponent(label: "Nama", controller: nama),
              V(8),
              InputComponent(label: "NIK", controller: nik),
              V(16),
              ElevatedButton(
                  onPressed: () {
                    db
                        .collection("mahasiswa")
                        .add({"nama": nama.text, "nik": nik.text}).then(
                            (DocumentReference doc) {
                      print('DocumentSnapshot added with ID: ${doc.id}');
                      showSnackbar(context, "Berhasil tambah data",
                          TypeSnackbar.success);
                      navigatePop(context);
                    }).onError((error, stackTrace) {
                      showSnackbar(context, error, TypeSnackbar.error);
                    });
                  },
                  child: Text("Tambah Data"))
            ],
          )),
    );
  }
}
