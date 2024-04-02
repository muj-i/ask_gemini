import 'package:ask_gemini/app/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(
    GetMaterialApp(
      title: "AskGemini",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
