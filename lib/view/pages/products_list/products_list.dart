import 'package:flutter/material.dart';
import 'package:mind_task/core/utils/hex_color/hex_color.dart';
import 'package:mind_task/model/product_model/product_model.dart';
import 'package:mind_task/view/widgets/product_item.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key, required this.products, required this.title});
  final List<ProductModel> products;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        leading: IconButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(HexColor('#EFC40B')),
            iconColor: const MaterialStatePropertyAll(Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: GridView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return ProductItem(product: products[index]);
        },
      ),
    );
  }
}
