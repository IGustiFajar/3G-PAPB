import 'package:flutter/material.dart';
import 'package:get/get.dart';

class crud extends StatefulWidget {
  const crud({super.key});

  @override
  State<crud> createState() => _crudState();
}

class _crudState extends State<crud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crud Master Data'),
        centerTitle: true,
        actions: [],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) => ListTile(
              title: Text('Nama'),
              subtitle: Text('email : '),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/editprofile'),
        child: Icon(Icons.add),
      ),
    );
  }
}
