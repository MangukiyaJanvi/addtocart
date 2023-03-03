import 'package:addtocart/screens/cart/model/cart_model.dart';
import 'package:addtocart/screens/cart/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  CartProvider? c1;

  @override
  Widget build(BuildContext context) {
    c1 = Provider.of<CartProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade800,
        appBar: AppBar(
          backgroundColor: Colors.pink.shade800,
          title: Text(
            "Add To Cart",
            style: TextStyle(color: Colors.pink.shade50),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {
                Navigator.pushNamed(context, '2');
              },icon: Icon(Icons.shopping_cart),color: Colors.pink.shade50),
            )
          ],
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) => Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${c1!.l1[index].img}",
                        style: TextStyle(fontSize: 50),
                      ),
                      Text(
                        "${c1!.l1[index].name}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rs.${c1!.l1[index].price}",
                        style: TextStyle(fontSize: 20),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          c1!.cart.add(c1!.l1[index]);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.pink.shade800)),
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(color: Colors.pink.shade50),
                        ),
                      ),
                    ],
                  ),
                ),
            itemCount: c1!.l1.length),
      ),
    );
  }
}
