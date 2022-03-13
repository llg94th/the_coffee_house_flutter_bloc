// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:thecoffeehouse_api/src/thecoffeehouse_api.dart';

void main() {
  group('LocalStorageThecoffeehoueApi', () {
    test('can be instantiated', () async {
      expect(ThecoffeehouseApi(Dio()), isNotNull);
      var result = await ThecoffeehouseApi(Dio()).getProducts();
      var result2 = await ThecoffeehouseApi(Dio()).getCategory();
      var result3 = await ThecoffeehouseApi(Dio()).getStores();

      print(jsonEncode(result3.states?[0].districts?[0].stores?[0]));
    });
  });
}
