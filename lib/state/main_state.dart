import 'package:flutter_eatit_new/model/restaurant_model.dart';
import 'package:get/get.dart';

class MainStateControler extends GetxController{
  var selectRestaurant= RestaurantModel(address: 'address', name: 'name', imageUrl: 'imageUrl', paymentUrl: 'paymentUrl', phone: 'phone').obs;
}