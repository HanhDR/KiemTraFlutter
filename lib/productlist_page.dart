import 'package:kiemtra/Provide/product_provide.dart';
import 'package:flutter/material.dart';
import 'package:kiemtra/Provide/product_provide.dart';
import 'package:provider/Provider.dart';

class ProductListPage extends StatelessWidget {
   ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var productProvide=Provider.of<ProductProvider>(context);
    productProvide.getList();
    return Scaffold(
      body: GridView.count(

        crossAxisCount: 2,
        children: [
          ...productProvide.list.map((e) {
            return Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: Column(
                children: [

                  Image.network(e.image??"", width: 100.0, height: 100.0,fit: BoxFit.cover,),
                  Text(e.title??"Title NULL",textAlign: TextAlign.center,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(e.price.toString() +"\$",
                        style: TextStyle(color: Colors.red),),
                      SizedBox(width: 20,),
                      Text(e.category.toString())
                    ],
                  )


                ],


              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
