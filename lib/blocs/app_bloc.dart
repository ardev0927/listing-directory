import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listing_directory/blocs/theme/cubit.dart';

import 'bloc.dart';

class AppBloc {
  static final applicationCubit = ApplicationCubit();
  static final languageCubit = LanguageCubit();
  static final themeCubit = ThemeCubit();

  static final List<BlocProvider> providers = [
    BlocProvider<ApplicationCubit>(
      create: (context) => applicationCubit,
    ),
    BlocProvider<LanguageCubit>(
      create: (context) => languageCubit,
    ),
    BlocProvider<ThemeCubit>(
      create: (context) => themeCubit,
    ),
  ];
}
