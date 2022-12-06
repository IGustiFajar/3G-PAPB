import 'package:edutech/pages/kelas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = TextEditingController();
  List<kelas> Kelas = allkelas;

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Color.fromARGB(255, 62, 137, 99),
        elevation: 5,
        actions: <Widget>[
          IconButton(
            onPressed: (() {
              Get.toNamed('/notification');
            }),
            icon: SvgPicture.asset(
              'images/bell.svg',
              color: Colors.white,
              alignment: Alignment.center,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Nama Kelas',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.white10),
                ),
              ),
              onChanged: searchKelas,
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: Kelas.length,
              itemBuilder: ((context, index) {
                final kelas = Kelas[index];
                return ListTile(
                  leading: Image.asset(
                    kelas.UrlImage,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(kelas.judul),
                  onTap: () {
                    Get.toNamed('/kelas-detail');
                  },
                );
              }),
            ),
          )
        ],
      ),
    );
  }

  void searchKelas(String query) {
    final suggestions = allkelas.where((kelas) {
      final kelasJudul = kelas.judul.toLowerCase();
      final input = query.toLowerCase();

      return kelasJudul.contains(input);
    }).toList();
    setState(() => Kelas = suggestions);
  }
}
