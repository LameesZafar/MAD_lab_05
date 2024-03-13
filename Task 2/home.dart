import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shrine/supplemental/product_card.dart';

import 'model/products_repository.dart';
import 'model/product.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // TODO: Add a variable for Category (104)

  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        title: const Text('SHRINE'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(Icons.tune, semanticLabel: 'filter'),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: _buildLayout(
          ProductsRepository.loadProducts(Category.all),
        ),
      ),
    );
  }

  Widget _buildLayout(List products) {
    int counter = 0;
    final children = <Widget>[];
    while (counter < products.length) {
      children.add(const SizedBox(
        height: 30,
      ));
      children.add(
        Row(
          children: [
            const Spacer(
              flex: 1,
            ),
            Flexible(
              child: ProductCard(product: products[counter]),
              flex: 4,
            ),
            const Spacer(
              flex: 1,
            ),
            Flexible(
              child: ProductCard(product: products[counter + 1]),
              flex: 4,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      );
      children.add(const SizedBox(
        height: 10,
      ));
      counter += 2;
    }
    return Column(
      children: children,
    );
  }
}
