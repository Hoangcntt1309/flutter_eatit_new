import 'dart:convert';
import 'package:flutter_eatit_new/const/const.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_eatit_new/model/restaurant_model.dart';
import 'package:flutter_eatit_new/string/main_strings.dart';

Future<List<RestaurantModel>> getRestaurantList() async{
  var list=List<RestaurantModel>.empty(growable: true);
  var source= await FirebaseDatabase.instance.ref().child(RESTAURANT_REF).once();
  Map<dynamic,dynamic> values = source.value;
  RestaurantModel? restaurantModel;
  values.forEach((key, value) {
    restaurantModel=RestaurantModel.fromJson(jsonDecode(jsonEncode(value)));
    restaurantModel!.restaurantId=key;
        list.add(restaurantModel!);
  });
  return list;

}