import 'dart:collection';
import 'dart:convert';
import 'package:expense_manager/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartController extends ChangeNotifier {
  List<CartModel> carts = [];

  CartController() {
    initialState();
  }

  UnmodifiableListView<CartModel> get allCards => UnmodifiableListView(carts);

  void initialState() {
    syncDataWithProvider();
  }

  // add to the cart
  void addCart(CartModel _cart) {
    carts.add(_cart);
    updateSharedPreferences();

    notifyListeners();
  }

  // remove cart
  void removeCart(CartModel _cart) {
    carts.removeWhere((cart) => cart.number == cart.number);
    updateSharedPreferences();

    notifyListeners();
  }

  // get cart length
  int getCartLength() {
    return carts.length;
  }

  // update SharedPreferences
  Future updateSharedPreferences() async {
    List<String> myCards = carts.map((f) => json.encode(f.toJson())).toList();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setStringList('cards', myCards);
  }

  Future syncDataWithProvider() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var result = prefs.getStringList('cards');

    if (result != null) {
      carts = result.map((f) => CartModel.fromJson(json.decode(f))).toList();
    }

    notifyListeners();
  }
}
