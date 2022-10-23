import '/core/app_export.dart';
import 'package:mohammed_s_application3/presentation/wish_list_screen/models/wish_list_model.dart';
import 'package:flutter/material.dart';

class WishListController extends GetxController {
  TextEditingController filesizeController = TextEditingController();

  Rx<WishListModel> wishListModelObj = WishListModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    filesizeController.dispose();
  }
}
