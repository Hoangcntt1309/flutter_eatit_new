import 'package:flutter_eatit_new/firebase/popular_reference.dart';
import 'package:flutter_eatit_new/model/popular_item_model.dart';
import 'package:flutter_eatit_new/view_model/restaurant_home_vm/restaurant_home_vm.dart';

class RestaurantHomeViewModelImp implements RestaurantHomeViewModel{
  @override
  Future<List<PopularItemModel>> displayMostPopularByRestaurantId(String restaurantId) {
    return getMostPopularByRestaurantId(restaurantId);
  }

  }

