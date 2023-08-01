import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listing_directory/configs/language.dart';
import 'package:listing_directory/configs/preferences.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(AppLanguage.defaultLanguage);

  ///On Change Language
  void onUpdate(Locale locale) {
    emit(locale);

    ///Preference save
    Preferences.setString(
      Preferences.language,
      locale.languageCode,
    );
  }
}
