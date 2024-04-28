import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mind_task/core/utils/hex_color/hex_color.dart';
import 'package:mind_task/model/product_model/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
    this.currencyColor,
    this.isDiscount = false,
  });
  final ProductModel product;
  final Color? currencyColor;
  final bool isDiscount;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.sizeOf(context).width * 0.5,
        maxWidth: MediaQuery.sizeOf(context).width * 0.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CachedNetworkImage(
              imageUrl: product.mainImage,
              fit: BoxFit.cover,
              // width: MediaQuery.of(context).size.width,
              placeholder: (context, url) => const LinearProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Text(product.name,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(product.shortDesc),
          isDiscount
              ? Text(
                  "${product.salePrice} ${'core.pound'.tr()}",
                  style: TextStyle(
                    color: currencyColor ?? HexColor('#CE9D22'),
                    fontWeight: FontWeight.bold,
                  ),
                )
              : const Text(''),
          Text(
            "${product.listPrice} ${'core.pound'.tr()}",
            style: isDiscount
                ? TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: HexColor('#707070'),
                  )
                : TextStyle(
                    color: currencyColor ?? HexColor('#CE9D22'),
                    fontWeight: FontWeight.bold,
                  ),
          ),
          isDiscount
              ? Container(
                  color: Colors.black,
                  child: Text(
                    "${'core.discount'.tr()} ${product.discount}%",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : const Text(''),
        ],
      ),
    );
  }
}
