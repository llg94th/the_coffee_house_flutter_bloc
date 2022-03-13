// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_coffee_house/home/home.dart';
import 'package:thecoffeehouse_repository/thecoffeehouse_repository.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.repository}) : super(key: key);

  final ThecoffeehouseRepository repository;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      //localizationsDelegates: const [
      //  AppLocalizations.delegate,
      //  GlobalMaterialLocalizations.delegate,
      //],
      //supportedLocales: AppLocalizations.supportedLocales,
      home: RepositoryProvider.value(
        value: repository,
        child: HomePage(),
      ),
    );
  }
}
