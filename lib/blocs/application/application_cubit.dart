import 'package:bloc/bloc.dart';
import 'package:listing_directory/configs/preferences.dart';
import 'package:listing_directory/configs/theme.dart';
import 'package:listing_directory/models/model_theme.dart';
import 'package:meta/meta.dart';

import 'application_state.dart';

class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit() : super(ApplicationState.loading);

  /// On Setup Application
  Future<void> onSetup() async {
    /// Notify loading
    emit(ApplicationState.loading);

    /// Setup SharedPreferences
    await Preferences.setPreferences();

    /// Get old Theme & Font & Language
    final oldTheme = Preferences.getString(Preferences.theme);
    final oldFont = Preferences.getString(Preferences.font);
    final oldLanguage = Preferences.getString(Preferences.language);
    final oldDarkOption = Preferences.getString(Preferences.darkOption);
    final oldBusiness = Preferences.getString(Preferences.business);

    DarkOption? darkOption;
    String? font;
    ThemeModel? theme;

    /// Setup Language
    if (oldLanguage != null) {}
  }
}
