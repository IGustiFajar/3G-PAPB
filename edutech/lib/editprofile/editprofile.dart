import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../editprofile/controllers/editprofile_controller.dart';

class _ediPprofileState extends GetView<EditProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profil'),
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
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
