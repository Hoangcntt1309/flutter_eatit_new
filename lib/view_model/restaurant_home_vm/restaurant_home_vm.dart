import 'package:flutter_eatit_new/model/popular_item_model.dart';

abstract class RestaurantHomeViewModel{
  Future<List<PopularItemModel>> displayMostPopularByRestaurantId(String restaurantId);
}