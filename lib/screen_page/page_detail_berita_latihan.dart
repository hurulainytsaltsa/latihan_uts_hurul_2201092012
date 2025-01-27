import 'package:flutter/material.dart';
import '../model/model_latihan_berita.dart';

class DetailBerita extends StatelessWidget {
  final Datum? data;

  const DetailBerita(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Berita"),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, top: 4, right: 4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "http://192.168.43.45/edukasi_server_latihan/gambar_berita/${data?.gambar}",
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            title: Text(
              data?.judul ?? "",
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            trailing: const Icon(
              Icons.star,
              color: Colors.red,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16, bottom: 16, left: 16),
            child: Text(
              data?.konten ?? "",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
