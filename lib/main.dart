import 'package:addtocart/screens/cart/provider/cart_provider.dart';
import 'package:addtocart/screens/cart/view/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/cart/view/addcart_screen.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>CartScreen(),
          '2':(context) =>Second(),
        },
      ),
    ),
  );
}