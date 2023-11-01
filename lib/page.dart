import 'package:flutter/material.dart';
import 'package:flutter_uts/menu.dart';
import 'package:flutter_uts/menufood.dart';

class NotaPage extends StatelessWidget {
  NotaPage({Key? key, required this.pesananMenu, required this.jumlah});

  final Menu pesananMenu;
  final int jumlah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nota Anda"),
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 50, 245, 60),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Pesanan Anda",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 10),
              Text(pesananMenu.nama, style: TextStyle(fontSize: 16)),
              SizedBox(height: 5),
              Text("${pesananMenu.harga} x $jumlah",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 5),
              Text("Berhasil Disimpan", style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Text("Total Bayar:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text(
                "Rp. ${pesananMenu.harga * jumlah}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => Mainfoodmenu(),
                    ),
                    (Route<dynamic> r) => false,
                  );
                },
                child: Text("Kembali ke Menu", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
