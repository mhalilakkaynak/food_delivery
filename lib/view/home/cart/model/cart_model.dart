import 'package:food_delivery/core/base/model/base_model.dart';
import 'package:food_delivery/view/home/_model/food_model.dart';

class CartModel extends BaseModel {
  FoodModel food;
  int foodCounter;

  CartModel.empty();
  CartModel(this.food, this.foodCounter);

  CartModel._fromJson(dynamic o) {
    food = FoodModel.empty().fromObject(o['food']);
    foodCounter = int.tryParse(o['foodCounter'].toString());
  }
  @override
  fromObject(dynamic o) => CartModel._fromJson(o);

  @override
  Map<String, dynamic> toMap() => {
        'food': this.food.toString(),
        'foodCounter': this.foodCounter.toString()
      };
}
