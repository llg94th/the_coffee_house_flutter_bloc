// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:thecoffeehouse_api/thecoffeehouse_api.dart';

class LocalStorageThecoffeehoueApi {
  LocalStorageThecoffeehoueApi({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences {
    _init();
  }
  final SharedPreferences _sharedPreferences;
  final String _menuShareKey = 'tch_menu';
  void _init() {}

  List<Product>? getProducts() {
    final String? menuJsonString = _sharedPreferences.getString(_menuShareKey);
    if (menuJsonString != null) {
      final Map<String, dynamic> menuJson =
          json.decode(menuJsonString) as Map<String, dynamic>;
      var productRes = ProductRespone.fromJson(menuJson);
      return productRes.data;
    }
    return null;
  }

  Future<void> saveProductRespone(ProductRespone productRepone) {
    final String value = jsonEncode(productRepone);
    return _sharedPreferences.setString(_menuShareKey, value);
  }
}
