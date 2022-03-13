// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.
import 'package:dio/dio.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';
import 'package:local_storage_thecoffeehoue_api/local_storage_thecoffeehoue_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_coffee_house/app/app.dart';
import 'package:the_coffee_house/bootstrap.dart';
import 'package:thecoffeehouse_api/thecoffeehouse_api.dart';
import 'package:thecoffeehouse_repository/thecoffeehouse_repository.dart';

Future<void> main() async {
  FlutterServicesBinding.ensureInitialized();
  var sharedPreferences = await SharedPreferences.getInstance();
  bootstrap(() => App(
      repository: ThecoffeehouseRepository(
          apiClient: ThecoffeehouseApi(Dio()),
          localStorage: LocalStorageThecoffeehoueApi(
              sharedPreferences: sharedPreferences))));
}
