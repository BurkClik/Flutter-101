import 'package:flutter/material.dart';
import 'package:flutter_101/data/local/product.dart';
import 'package:flutter_101/widget/snackbar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onDoubleTap: () => showSnackbar(context, snackbar("Double Tap")),
        onLongPress: () => showSnackbar(context, snackbar("Long Press")),
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 8, child: ProductImageWidget(product: product)),
              SizedBox(height: 8),
              Expanded(child: ProductBrandAndName(product: product)),
              Expanded(child: RatingWidget(product: product)),
              Expanded(child: ProductPriceWidget(product: product)),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Image(
      fit: BoxFit.fill,
      image: NetworkImage(product.image),
    );
  }
}

class ProductPriceWidget extends StatelessWidget {
  const ProductPriceWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: RichText(
        text: TextSpan(
          text: product.marketPrice,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade500,
            decoration: TextDecoration.lineThrough,
            fontSize: 12,
          ),
          children: [
            TextSpan(
              text: product.salePrice,
              style: const TextStyle(
                color: Colors.orange,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: RatingBarIndicator(
            rating: product.rating,
            itemCount: 5,
            itemSize: 16,
            itemBuilder: (context, _) =>
                const Icon(Icons.star, color: Colors.amber),
          ),
        ),
        Text(
          "(${product.reviewCount})",
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}

class ProductBrandAndName extends StatelessWidget {
  const ProductBrandAndName({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: product.productBrand,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 12,
          ),
          children: [
            TextSpan(
              text: product.productName,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
