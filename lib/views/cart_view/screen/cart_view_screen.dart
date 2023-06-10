import 'package:expense_manager/model/cart_model.dart';
import 'package:expense_manager/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartViewScreen extends StatefulWidget {
  // final CartModel cart;

  const CartViewScreen({
    Key? key,
    // required this.cart,
  }) : super(key: key);

  @override
  State<CartViewScreen> createState() => _CartViewScreenState();
}

class _CartViewScreenState extends State<CartViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Card View",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: AppColors.kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
            size: 20,
          ),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.black45,
            ),
            onPressed: () {
              // onRemove(widget.card);
            },
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }
}
