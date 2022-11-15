import 'package:edutech/pages/loginPage.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EditProfileController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController emailC;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addUsers(String nama, String email) async {
    CollectionReference users = firestore.collection("users");

    try {
      await users.add({
        "nama": nama,
        "email": email,
      });

      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Berhasil menambahkan user",
        onConfirm: () => Get.back(),
        textConfirm: "okay",
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Error",
        middleText: "Tidak Berhasil menambahkan user",
      );
    }
  }

  @override
  void onInit() {
    nameC = TextEditingController();
    emailC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nameC.dispose();
    emailC.dispose();
    super.onClose();
  }
}
