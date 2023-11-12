import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_eatit_new/model/popular_item_model.dart';
import '../const/const.dart';

Future<List<PopularItemModel>> getMostPopularByRestaurantId(String restaurantId) async{
  var list=List<PopularItemModel>.empty(growable: true);
  var source= await FirebaseDatabase.instance.ref().child(RESTAURANT_REF).child(restaurantId).child(MOST_POPULAR_REF).once();
  Map<dynamic,dynamic> values = source.value;
  values.forEach((key, value) {
    list.add(PopularItemModel.fromJson(jsonDecode(jsonEncode(value)) as Map<String, dynamic>));
  });
  return list;

}