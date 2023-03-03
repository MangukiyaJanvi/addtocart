import 'package:addtocart/screens/cart/model/cart_model.dart';
import 'package:addtocart/screens/cart/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  CartProvider? c1;

  @override
  Widget build(BuildContext context) {
    c1 = Provider.of<CartProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade800,
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.pink.shade50),
          ),
        ),
        body: Consumer<CartProvider>(
          builder: (context, value, child) => ListView.builder(
              itemBuilder: (context, index) => ListTile(
                    leading: Text(
                      "${c1!.cart[index].img}",
                      style: TextStyle(fontSize: 50),
                    ),
                    title: Text(
                      "${c1!.cart[index].name}",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Rs.${c1!.cart[index].price}",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            CartModel cm1 = CartModel(
                                price: c1!.cart[index].price,
                                img: c1!.cart[index].img,
                                name: c1!.cart[index].name,
                                qty: c1!.cart[index].qty! + 1);
                            c1!.Update(index, cm1);
                          },
                          icon: Icon(Icons.add),
                        ),
                        Text(
                          "${c1!.cart[index].qty}",
                          style: TextStyle(fontSize: 20),
                        ),
                        IconButton(
                          onPressed: () {
                            CartModel cm1 = CartModel(
                                price: c1!.cart[index].price,
                                img: c1!.cart[index].img,
                                name: c1!.cart[index].name,
                                qty: c1!.cart[index].qty! - 1);
                            c1!.Update(index, cm1);
                          },
                          icon: Icon(Icons.remove),
                        ),
                      ],
                    ),
                  ),
              itemCount: c1!.cart.length),
        ),
      ),
    );
  }
}
