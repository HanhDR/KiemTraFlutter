import 'dart:math';

import 'package:kiemtra/DetailCart.dart';
import 'package:kiemtra/ProductModels.dart';
import 'package:kiemtra/Provide/product_provide.dart';
import 'package:kiemtra/Provide/product_provide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// ignore: unnecessary_import
import 'package:kiemtra/Model/product_model.dart';

class DetailProduct extends StatelessWidget {
  final ProductModel obj;

  const DetailProduct({super.key, required this.obj});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> list_Cart = [];
    var productProvider = Provider.of<ProductProvider>(context);
    productProvider.getList();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                height: 30,
                width: 414,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    )
                  ],
                )),
            SizedBox(
              height: 200,
              width: 414,
              child: Image.network(obj.image.toString()),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 6, top: 8, right: 6, bottom: 0),
              child: Container(
                width: 400,
                height: 600,
                /*decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),*/
                child: Column(
                  children: [
                    SizedBox(
                      width: 400,
                      height: 548,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, top: 16, right: 8, bottom: 0),
                        child: Text(
                          obj.description.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            productProvider.getListCart(obj);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => (AddCart(
                                        listCart: productProvider.listCart)))));
                          },
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}