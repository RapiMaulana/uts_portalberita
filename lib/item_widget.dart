import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:portal_berita/data.dart';
import 'package:portal_berita/details_product.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDetail(
            product: product,
          );
        }));
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.green,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: product.image,
              child: SizedBox(
                width: 150,
                child: Image.asset(product.image),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const SizedBox(
              height: 4,
            ),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
