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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Nama Kelas',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(50, 158, 158, 158)),
                  ),
                ),
                onChanged: searchKelas,
              ),
            ),
            SizedBox(height: bodyHeight * 0.024),
            Text(
              'Pencarian populer ❤️',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: Kelas.length,
                itemBuilder: ((context, index) {
                  final kelas = Kelas[index];
                  return Container(
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(50, 158, 158, 158)),
                        borderRadius: BorderRadius.circular(6)),
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.asset(
                        kelas.UrlImage,
                        fit: BoxFit.cover,
                        width: bodyHeight * 0.050,
                        height: bodyHeight * 0.050,
                      ),
                      title: Text(kelas.judul),
                      onTap: () {
                        Get.toNamed('/kelas-detail');
                      },
                    ),
                  );
                }),
              ),
            )
          ],
        ),
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
