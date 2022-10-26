import 'package:flutter/material.dart';
import 'package:kiemtra/ProductModels.dart';
import 'package:kiemtra/Provide/product_provide.dart';
import 'package:provider/Provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (_)=>ProductProvider())
        ],
        child: MaterialApp(
          home: ProductModels(),
        ),
      )
  );
}