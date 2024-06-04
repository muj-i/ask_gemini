import 'package:ask_gemini/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 1)).then((_) {
      Get.offAllNamed(Routes.HOME);
    });
    super.onInit();
  }
}
