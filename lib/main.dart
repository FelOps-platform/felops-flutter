import 'package:flutter/material.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/language/app_language.dart';
import 'felops_app.dart';

void main() {
  final currentLanguage = SharedprefHelper.getData("LanguageCode") ?? "ar";
  final initialLanguage = currentLanguage == "en"
      ? AppLanguageConstant.getEnglishLanguage()
      : AppLanguageConstant.getArabicLanguage();
  runApp(FelopsApp(initialLanguage: initialLanguage));
}
