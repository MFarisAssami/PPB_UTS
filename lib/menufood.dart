import 'package:flutter/material.dart';
import 'package:flutter_uts/menu.dart';
import 'package:flutter_uts/pesan.dart';

// ignore: must_be_immutable
class Mainfoodmenu extends StatelessWidget {
  List<Menu> listmenu = [];

  Mainfoodmenu({super.key});

  get image => null;

  void dummymenu() {
    listmenu.add(Menu(
        nama: "sate ayam",
        deskripsi: "sate daging ayam",
        harga: 25000,
        gambar: "sate.jpg"));

    listmenu.add(Menu(
        nama: "ayam goreng",
        deskripsi: "ayam goreng dengan bumbu kuning",
        harga: 27000,
        gambar: "agor.jpg"));

    listmenu.add(Menu(
        nama: "nasi goreng",
        deskripsi: "nasi goreng special",
        harga: 28000,
        gambar: "nasgor.jpg"));
  }

  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context) {
    dummymenu();
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilihan Menu"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    'assets/images/${listmenu[index].gambar}',
                    // Anda dapat mengatur lebar dan tinggi gambar sesuai kebutuhan.
                  ),
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "${listmenu[index].nama}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Column(
                    children: [
                      Text("${listmenu[index].deskripsi}"),
                      Text("Rp . ${listmenu[index].harga}"),
                    ],
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PesanPage(
                            pesananMenu: listmenu[index],
                          ),
                        ),
                      );
                    },
                    child: Text("Beli"),
                  ),
                );
              },
              itemCount: listmenu.length,
            ),
          ),
        ],
      ),
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
