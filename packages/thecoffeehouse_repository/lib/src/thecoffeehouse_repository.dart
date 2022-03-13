import 'package:local_storage_thecoffeehoue_api/local_storage_thecoffeehoue_api.dart';
import 'package:thecoffeehouse_api/thecoffeehouse_api.dart';

class ThecoffeehouseRepository {
  final ThecoffeehouseApi apiClient;
  final LocalStorageThecoffeehoueApi localStorage;

  ThecoffeehouseRepository(
      {required this.apiClient, required this.localStorage});
  Future<List<Product>?> getListProductFromDb() async {
    return localStorage.getProducts();
  }

  Future<List<Product>?> fetchProduct() async {
    final res = await apiClient.getProducts();
    return res.data;
  }
}
