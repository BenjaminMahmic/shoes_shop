import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_shop/models/product.dart';
import 'package:shoes_shop/screens/product_detail_screen/components/colors.dart';
import 'package:shoes_shop/screens/product_detail_screen/components/images.dart';

import 'components/detail_app_bar.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              DetailScrAppBar(
                price: product.price,
                name: product.name,
              ),
              const SizedBox(height: 10),
              DetailScreenImages(images: product.images),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ProductAvaliableColors(colors: product.avaliableColors),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
