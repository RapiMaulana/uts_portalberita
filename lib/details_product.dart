import 'package:flutter/material.dart';

import 'data.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int count = 1;

  void addCount() {
    count = count + 1;
    setState(() {});
  }

  void removeCount() {
    if (count != 0) {
      count = count - 1;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Detail',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.product.name,
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
            ),
          ),
          Center(
            child: Hero(
              tag: widget.product.image,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.product.image),
                        fit: BoxFit.contain)),
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.product.description,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
