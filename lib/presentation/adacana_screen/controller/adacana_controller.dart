import '/core/app_export.dart';
import 'package:mohammed_s_application3/presentation/adacana_screen/models/adacana_model.dart';

class AdacanaController extends GetxController {
  Rx<AdacanaModel> adacanaModelObj = AdacanaModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 10000), () {
      Get.toNamed(AppRoutes.loginScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
