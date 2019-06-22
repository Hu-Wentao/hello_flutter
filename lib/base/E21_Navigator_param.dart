import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "演示带参数的 Navigator",
    home: ProductList(
      // 使用 generate() 产生一个 List<Product>
      productList:
          List<Product>.generate(30, (i) => new Product("这是$i号标题", "这是第$i个内容")),
    ),
  ));
}

class Product {
  final String productTitle;
  final String subTitle;

  Product(this.productTitle, this.subTitle);
}

class ProductList extends StatelessWidget {
  final List<Product> productList;

  ProductList({key, @required this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("演示带参数传递的列表"),
        ),
        body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            print("展示一个内容${productList[2].productTitle}");
            return new ListTile(
              title: Text(productList[index].productTitle),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // 在这里传入参数
                  return new ProductDetail(product: productList[index]);
                }));
              },
            );
          },
        ));
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.productTitle),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("${product.subTitle}, 点击按钮返回"),
        ),
      ),
    );
  }
}
