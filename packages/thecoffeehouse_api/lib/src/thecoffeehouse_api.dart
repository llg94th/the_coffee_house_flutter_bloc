import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thecoffeehouse_api/src/models/category.dart';
import 'package:thecoffeehouse_api/src/models/store_respone.dart';

import 'models/models.dart';

part 'thecoffeehouse_api.g.dart';

@RestApi(baseUrl: 'https://api.thecoffeehouse.com/api')
abstract class ThecoffeehouseApi {
  factory ThecoffeehouseApi(Dio dio) = _ThecoffeehouseApi;

  @GET("/v2/menu")
  Future<ProductRespone> getProducts();

  @GET("/v2/category/web")
  Future<List<Category>> getCategory();

  @GET("/get_list_store")
  Future<StoreRespone> getStores(
      {@Query("latitude") String latitude = '0',
      @Query("longitude") String longitude = '0'});
}
